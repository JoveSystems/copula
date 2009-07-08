/*#################################################################################
##
##   R package Copula by Jun Yan and Ivan Kojadinovic Copyright (C) 2008, 2009
##
##   This file is part of the R package copula.
##
##   The R package copula is free software: you can redistribute it and/or modify
##   it under the terms of the GNU General Public License as published by
##   the Free Software Foundation, either version 3 of the License, or
##   (at your option) any later version.
##
##   The R package copula is distributed in the hope that it will be useful,
##   but WITHOUT ANY WARRANTY; without even the implied warranty of
##   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##   GNU General Public License for more details.
##
##   You should have received a copy of the GNU General Public License
##   along with the R package copula. If not, see <http://www.gnu.org/licenses/>.
##
#################################################################################*/


/*****************************************************************************

  Multivariate serial independence test based on the empirical 
  copula process 

  Ivan Kojadinovic, December 2007

*****************************************************************************/

void K_array(int n, int p, double *J, double *K);
void L_array(int n, int p, double *K, double *L);
double I_n(int n, int p, double *J, double *K, double *L);
double M_A_n(int n, int p, double *J, double *K, double *L, int A);
