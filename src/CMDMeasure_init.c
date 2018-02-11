#include <R.h>
#include <Rinternals.h>
#include <R_ext/Rdynload.h>
#include <stdlib.h> // for NULL

////////////////////////////////////////////////////////////////////////////////////////////////////
///// declarations to register native routines in this package
////////////////////////////////////////////////////////////////////////////////////////////////////

/* .C calls */
extern void MDD_UCenter(int *N, int *P, int *Q, double *X, double *Y, double *O);
extern void MDD_DCenter(int *N, int *P, int *Q, double *X, double *Y, double *O);

static const R_CMethodDef CEntries[] = {
  {"MDD_UCenter", (DL_FUNC) &MDD_UCenter, 6},
  {"MDD_DCenter", (DL_FUNC) &MDD_DCenter, 6},
  {NULL, NULL, 0}
};

void R_init_CMDMeasure(DllInfo *dll) {
  R_registerRoutines(dll, CEntries, NULL, NULL, NULL);
  R_useDynamicSymbols(dll, FALSE);
}
