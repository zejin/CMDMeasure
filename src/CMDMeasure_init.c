#include <R.h>
#include <Rinternals.h>
#include <R_ext/Rdynload.h>
#include <stdlib.h> // for NULL

////////////////////////////////////////////////////////////////////////////////////////////////////
///// declarations to register native routines in this package
////////////////////////////////////////////////////////////////////////////////////////////////////

/* .C calls */
extern void MDD_U(int *N, int *P, double *X, double *Y, double *Q);
extern void MDD_D(int *N, int *P, double *X, double *Y, double *M, double *Q);

static const R_CMethodDef CEntries[] = {
  {"MDD_U",                  (DL_FUNC) &MDD_U,                  5},
  {"MDD_D",                  (DL_FUNC) &MDD_D,                  6},
  {NULL, NULL, 0}
};

void R_init_CMDMeasure(DllInfo *dll)
{
  R_registerRoutines(dll, CEntries, NULL, NULL, NULL);
  R_useDynamicSymbols(dll, FALSE);
}