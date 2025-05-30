/**
 * @file ppm_xmpi.c
 * @brief ScalES-PPM core library C/Fortran interface
 *
 * @copyright Copyright  (C)  2020  Thomas Jahns <jahns@dkrz.de>
 *
 * @version 1.0
 * @author Thomas Jahns <jahns@dkrz.de>
 */
/*
 * Maintainer: Thomas Jahns <jahns@dkrz.de>
 * URL: https://www.dkrz.de/redmine/projects/scales-ppm
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are  permitted provided that the following conditions are
 * met:
 *
 * Redistributions of source code must retain the above copyright notice,
 * this list of conditions and the following disclaimer.
 *
 * Redistributions in binary form must reproduce the above copyright
 * notice, this list of conditions and the following disclaimer in the
 * documentation and/or other materials provided with the distribution.
 *
 * Neither the name of the DKRZ GmbH nor the names of its contributors
 * may be used to endorse or promote products derived from this software
 * without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS
 * IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
 * TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
 * PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER
 * OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
 * PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
 * LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#ifdef HAVE_CONFIG_H
#  include <config.h>
#endif

#include <stdio.h>

#include "core/core.h"
#include "core/symprefix.h"
#include "core/ppm_xfuncs.h"

static inline int
getMPICommWorldRank()
{
  int rank = -1;
  if (SymPrefix(mpi_calls_are_allowed)())
    MPI_Comm_rank(MPI_COMM_WORLD, &rank);
  return rank;
}

void
SymPrefix(xmpi)(int errcode, const char *source, int line)
{
  char errorString[2][MPI_MAX_ERROR_STRING + 1];
  int lenES, lenEC, errorClass, rank = getMPICommWorldRank();
  MPI_Error_class(errcode, &errorClass);
  MPI_Error_string(errorClass, errorString[0], &lenEC);
  MPI_Error_string(errcode, errorString[1], &lenES);
  errorString[0][MPI_MAX_ERROR_STRING] = 0;
  errorString[1][MPI_MAX_ERROR_STRING] = 0;
  fprintf(stderr, "MPI ERROR, pe%d, %s, line %d,"
          "errorClass: \"%*s\""
          "errorString: \"%*s\"\n",
          rank, source, line,
          lenEC, errorString[0], lenES, errorString[1]);
  MPI_Abort(MPI_COMM_WORLD, 1);
}


/*
 * Local Variables:
 * license-project-url: "https://www.dkrz.de/redmine/projects/scales-ppm"
 * license-markup: "doxygen"
 * license-default: "bsd"
 * End:
 */
