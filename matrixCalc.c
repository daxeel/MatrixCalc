/**************************************************************************************************************
 *                                                                                                            *
 * File       : matrixCalc.c                                                                                  *
 *                                                                                                            *
 * Purpose    : Matrix calculator can calculate determinant, transpose, adjoint, inverse, addition and        *
 *              and subtraction of any 2 cross 2 3 cross 3 matrix/matrices.                                   *
 *                                                                                                            *
 * Date       : 25/03/2014                                                                                    *
 *                                                                                                            *
 * Project    : Matrix calculator is my home project. I have developed matrxCalc for different                *
 *              platforms. I've developed matrixCalc for Android, Windows(Python & Tkinter), Web(Javascript), *
 *              Linux(ShellScript) and this one in "C Language." All language's(except android) source code   *
 *              can be found on GitHub. My whole project is completely open source.                           *
 *                                                                                                            *
 * Programmer : Daxeel Soni ( www.github.com/daxeel )                                                         *
 *                                                                                                            *
 **************************************************************************************************************/

#include <stdio.h>

int main()
{
	int ch, ch2;
    float det, a, b, c, d, e, f, g, h, i;
	float aa, bb, cc, dd, ee, ff, gg, hh, ii;
	printf("1. 2 cross 2\n");
	printf("2. 3 cross 3\n");
	printf("Enter your choice : ");
	scanf("%d", &ch);
	if(ch == 1)
	{
		printf("a     b\n");
		printf("c     d\n\n");
		printf("Enter value of a : ");
		scanf("%f", &a);
        printf("Enter value of b : ");
		scanf("%f", &b);
        printf("Enter value of c : ");
		scanf("%f", &c);
        printf("Enter value of d : ");
		scanf("%f", &d);
		printf("\n");
		printf("1. Determinant\n");
		printf("2. Transpose\n");
		printf("3. Adjoint\n");
		printf("4. Inverse\n");
		printf("What do you want to calculate [1-4] : ");
		scanf("%d", &ch2);
		if(ch2 == 1)
		{
			det = (d * a) - (b * c);
			printf("\nCalculated determinant is : %.2f\n\n", det);
		} else if(ch2 == 2)
		{
			printf("%.2f     %.2f\n", a, c);
			printf("%.2f     %.2f\n\n", b, d);
		} else if(ch2 == 3)
		{
			b = -1 * b;
			c = -1 * c;
            printf("%.2f     %.2f\n", d, b);
			printf("%.2f     %.2f\n\n", c, a);
		} else if(ch2 == 4)
		{
			det = (d * a) - (b * c);
			b = -1 * b;
			c = -1 * c;
			aa = a / det;
			bb = b / det;
			cc = c / det;
			dd = d / det;
            printf("%.2f     %.2f\n", dd, bb);
			printf("%.2f     %.2f\n\n", cc, aa);
		}
	} else if(ch == 2)
	{
		printf("a     b     c\n");
		printf("d     e     f\n");
		printf("g     h     i\n\n");
		printf("Enter value of a : ");
		scanf("%f", &a);
        printf("Enter value of b : ");
		scanf("%f", &b);
        printf("Enter value of c : ");
		scanf("%f", &c);
        printf("Enter value of d : ");
		scanf("%f", &d);
        printf("Enter value of e : ");
		scanf("%f", &e);
		printf("Enter value of f : ");
		scanf("%f", &f);
        printf("Enter value of g : ");
		scanf("%f", &g);
        printf("Enter value of h : ");
		scanf("%f", &h);
        printf("Enter value of i : ");
		scanf("%f", &i);
		printf("\n");
		printf("1. Determinant\n");
		printf("2. Transpose\n");
		printf("3. Adjoint\n");
		printf("4. Inverse\n");
		printf("What do you want to calculate [1-4] : ");
		scanf("%d", &ch2);
		if(ch2 == 1)
		{
			det = (a * ((e * i) - (h * f))) - (b * ((d * i) - (g * f))) + (c * ((d * h) - (e * g)));
			printf("\nCalculated determinant is : %.2f\n\n", det);
		} else if(ch2 == 2)
		{
            printf("%.2f     %.2f     %.2f\n", a, d, g);
			printf("%.2f     %.2f     %.2f\n", b, e, h);
			printf("%.2f     %.2f     %.2f\n\n", c, f, i);
		} else if(ch2 == 3)
		{
			aa = (e * i) - (h * f);
            bb = (g * f) - (d * i);
			cc = (d * h) - (e * g);
			dd = (h * c) - (b * i);
			ee = (a * i) - (g * c);
			ff = (g * b) - (a * h);
			gg = (b * f) - (e * c);
			hh = (c * d) - (a * f);
			ii = (a * e) - (b * d);
            printf("%.2f     %.2f     %.2f\n", aa, dd, gg);
			printf("%.2f     %.2f     %.2f\n", bb, ee, hh);
			printf("%.2f     %.2f     %.2f\n\n", cc, ff, ii);
		} else if(ch2 == 4)
		{
			det = (a * ((e * i) - (h * f))) - (b * ((d * i) - (g * f))) + (c * ((d * h) - (e * g)));
			aa = ((e * i) - (h * f)) / det;
            bb = ((g * f) - (d * i)) / det;
			cc = ((d * h) - (e * g)) / det;
			dd = ((h * c) - (b * i)) / det;
			ee = ((a * i) - (g * c)) / det;
			ff = ((g * b) - (a * h)) / det;
			gg = ((b * f) - (e * c)) / det;
			hh = ((c * d) - (a * f)) / det;
			ii = ((a * e) - (b * d)) / det;
            printf("%.2f     %.2f     %.2f\n", aa, dd, gg);
			printf("%.2f     %.2f     %.2f\n", bb, ee, hh);
			printf("%.2f     %.2f     %.2f\n\n", cc, ff, ii);
		}
	}
    return 0;
}