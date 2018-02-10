#include <string.h>
#include <math.h>

////////////////////////////////////////////////////////////////////////////////////////////////////
///// declarations
////////////////////////////////////////////////////////////////////////////////////////////////////

/* functions.c */
extern void U_center_X(int n, int p, double *X, double *XX);
extern void D_center_X(int n, int p, double *X, double *XX);
extern void U_center_Y(int n, int q, double *Y, double *YY);
extern void D_center_Y(int n, int q, double *Y, double *YY);
extern double inner_U(int n, double *XX, double *YY);
extern double inner_D(int n, double *XX, double *YY);
extern double inner_U_boot(int n, double *W, double *M);
extern double inner_D_boot(int n, double *W, double *M);

/* MDD */
void MDD_U(int *N, int *P, int *Q, double *X, double *Y, double *O);
void MDD_D(int *N, int *P, int *Q, double *X, double *Y, double *O);

void MDD_U_boot(int *N, double *W, double *M, double *O);
void MDD_D_boot(int *N, double *W, double *M, double *O);

////////////////////////////////////////////////////////////////////////////////////////////////////
///// conditional mean dependence measures
////////////////////////////////////////////////////////////////////////////////////////////////////

void MDD_U(int *N, int *P, int *Q, double *X, double *Y, double *O) {
  int n = N[0];
  int p = P[0];
  int q = Q[0];

  double XX[n * n];
  memset(XX, 0, n * n * sizeof(double));

  double YY[n * n];
  memset(YY, 0, n * n * sizeof(double));

  U_center_X(n, p, X, XX);
  U_center_Y(n, q, Y, YY);

  O[0] = inner_U(n, XX, YY);
}

void MDD_D(int *N, int *P, int *Q, double *X, double *Y, double *O) {
  int n = N[0];
  int p = P[0];
  int q = Q[0];

  double XX[n * n];
  memset(XX, 0, n * n * sizeof(double));

  double YY[n * n];
  memset(YY, 0, n * n * sizeof(double));

  D_center_X(n, p, X, XX);
  D_center_Y(n, q, Y, YY);

  O[0] = inner_D(n, XX, YY);
}

void MDD_U_boot(int *N, double *W, double *M, double *O) {
  int n = N[0];

  O[0] = inner_U_boot(n, W, M);
}

void MDD_D_boot(int *N, double *W, double *M, double *O) {
  int n = N[0];
  
  O[0] = inner_D_boot(n, W, M);
}

