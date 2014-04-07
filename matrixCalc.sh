# File       : matrixCalc.sh                                                                                 
#                                                                                                           
# Purpose    : Matrix calculator can calculate determinant, transpose, adjoint, inverse, addition and       
#              and subtraction of any 2 cross 2 3 cross 3 matrix/matrices.                                  
#                                                                                                           
# Date       : 19/02/2014                                                                                   
#                                                                                                           
# Project    : Matrix calculator is my home project. I have developed matrxCalc for different               
#              platforms. I've developed matrixCalc for Android, Windows(Python & Tkinter), Web(Javascript),
#              C Language and this one for Linux written in "Shell Script." All language's(except android) 
#              source code can be found on GitHub. My whole project is completely open source.   
#                                                                                                                                                 
# Programmer : Daxeel Soni ( www.github.com/daxeel )    

# Matrix calculating shell script
echo -n "Enter your name : "
read name
clear
echo "Welcome, $name to MATRIX CALCULATOR"
echo "  "
echo "Choose matrix type"
echo "1. 2 cross 2"
echo "2. 3 cross 3"
echo "  "
echo -n "Input your choice : "
read ch
# 2 cross 2 matrix calculation
if [ $ch -eq 1 ]
then
clear
echo "a     b"
echo "  "
echo "c     d"
echo "  "
echo -n "Enter value of a : "
read a
echo -n "Enter value of b : "
read b
echo -n "Enter value of c : "
read c
echo -n "Enter value of d : "
read d
echo "  "
echo "Choose option"
echo "1. Determinant"
echo "2. Transpose"
echo "3. Adjoint"
echo "4. Inverse"
echo "5. Addition"
echo "6. Subtraction"
echo -n "Input your choice : "
read op

if [ $op -eq 1 ]
     then
     p=`expr $a \* $d`
     q=`expr $c \* $b`
     det=`expr $p - $q`
     echo "  "
     echo "Determinant is $det"
elif [ $op -eq 2 ]
     then
     echo "Transpose is"
     echo "  "
     echo "$a     $c"
     echo "  "
     echo "$b     $d"
elif [ $op -eq 3 ]
     then
     echo "Adjoint is"
     echo "  "
     echo "$d     -$b"
     echo "  "
     echo "-$c     $a"
elif [ $op -eq 4 ]
     then
     echo "Inverse is"
     echo "  "
     p=`expr $a \* $d`
     q=`expr $c \* $b`
     det=`expr $p - $q`
     echo "$d/$det     -$b/$det"
     echo "  "
     echo "-$c/$det     $a/$det"
elif [ $op -eq 5 ]
     then
     echo "  "
     echo "Add another matrix"
     echo "  "
     echo "p     q"
     echo "  "
     echo "r     s"
     echo "  "
     echo -n "Enter value of a : "
     read p
     echo -n "Enter value of b : "
     read q
     echo -n "Enter value of c : "
     read r
     echo -n "Enter value of d : "
     read s
     add1=`expr $a + $p`
     add2=`expr $b + $q`
     add3=`expr $c + $r`
     add4=`expr $d + $s`
     echo "Addition of two matrices is"
     echo "  "
     echo "$add1     $add2"
     echo "  "
     echo "$add3     $add4"
elif [ $op -eq 6 ]
     then
     echo "  "
     echo "Add another matrix"
     echo "  "
     echo "p     q"
     echo "  "
     echo "r     s"
     echo "  "
     echo -n "Enter value of a : "
     read p
     echo -n "Enter value of b : "
     read q
     echo -n "Enter value of c : "
     read r
     echo -n "Enter value of d : "
     read s
     add1=`expr $a - $p`
     add2=`expr $b - $q`
     add3=`expr $c - $r`
     add4=`expr $d - $s`
     echo "Subtraction of two matrices is"
     echo "  "
     echo "$add1     $add2"
     echo "  "
     echo "$add3     $add4"
else
     echo "Please enter valid number!"
fi
# 3 cross 3 matrix calculation
elif [ $ch -eq 2 ]
then
clear
echo "a     b     c"
echo "  "
echo "d     e     f"
echo "  "
echo "g     h     i"
echo "  "
echo -n "Enter value of a : "
read a
echo -n "Enter value of b : "
read b
echo -n "Enter value of c : "
read c
echo -n "Enter value of d : "
read d
echo -n "Enter value of e : "
read e
echo -n "Enter value of f : "
read f
echo -n "Enter value of g : "
read g
echo -n "Enter value of h : "
read h
echo -n "Enter value of i : "
read i
echo "  "
echo "Choose option"
echo "1. Determinant"
echo "2. Transpose"
echo "3. Adjoint"
echo "4. Inverse"
echo "5. Addition"
echo "6. Subtraction"
echo -n "Input your choice : "
read op
if [ $op -eq 1 ]
     then
     p=`expr $e \* $i`
     q=`expr $h \* $f`
     m1=`expr $p - $q`
     p1=`expr $a \* $m1`
     r=`expr $d \* $i`
     s=`expr $g \* $f`
     m2=`expr $r - $s`
     p2=`expr $b \* $m2`
     t=`expr $d \* $h`
     u=`expr $e \* $g`
     m3=`expr $t - $u`
     p3=`expr $c \* $m3`
     major=`expr $p1 + $p3`
     det=`expr $major - $p2`
     echo "  "
     echo "Determinat is $det"
elif [ $op -eq 2 ]
     then
     echo "Transpose is"
     echo "  "
     echo "$a     $d     $g"
     echo "  "
     echo "$b     $e     $h"
     echo "  "
     echo "$c     $f     $i"
elif [ $op -eq 3 ]
     then
     echo "Adjoint is"
     echo "  "
     aa=`expr $e \* $i`
     bb=`expr $h \* $f`
     cc=`expr $d \* $i`
     dd=`expr $g \* $f`
     ee=`expr $d \* $h`
     ff=`expr $e \* $g`
     gg=`expr $b \* $i`
     hh=`expr $h \* $c`
     ii=`expr $a \* $i`
     jj=`expr $g \* $c`
     kk=`expr $a \* $h`
     ll=`expr $g \* $b`
     mm=`expr $b \* $f`
     nn=`expr $e \* $c`
     oo=`expr $a \* $f`
     pp=`expr $c \* $d`
     qq=`expr $a \* $e`
     rr=`expr $b \* $d`
     a11=`expr $aa - $bb`
     a12=`expr $dd - $cc`
     a13=`expr $ee - $ff`
     a21=`expr $hh - $gg`
     a22=`expr $ii - $jj`
     a23=`expr $ll - $kk`
     a31=`expr $mm - $nn`
     a32=`expr $pp - $oo`
     a33=`expr $qq - $rr`
     echo "$a11     $a21     $a31"
     echo "  "
     echo "$a12     $a22     $a32"
     echo "  "
     echo "$a13     $a23     $a33"
elif [ $op -eq 4 ]
     then
     echo "Inverse is"
     echo "  "
     p=`expr $e \* $i`
     q=`expr $h \* $f`
     m1=`expr $p - $q`
     p1=`expr $a \* $m1`
     r=`expr $d \* $i`
     s=`expr $g \* $f`
     m2=`expr $r - $s`
     p2=`expr $b \* $m2`
     t=`expr $d \* $h`
     u=`expr $e \* $g`
     m3=`expr $t - $u`
     p3=`expr $c \* $m3`
     major=`expr $p1 + $p3`
     det=`expr $major - $p2`
     aa=`expr $e \* $i`
     bb=`expr $h \* $f`
     cc=`expr $d \* $i`
     dd=`expr $g \* $f`
     ee=`expr $d \* $h`
     ff=`expr $e \* $g`
     gg=`expr $b \* $i`
     hh=`expr $h \* $c`
     ii=`expr $a \* $i`
     jj=`expr $g \* $c`
     kk=`expr $a \* $h`
     ll=`expr $g \* $b`
     mm=`expr $b \* $f`
     nn=`expr $e \* $c`
     oo=`expr $a \* $f`
     pp=`expr $c \* $d`
     qq=`expr $a \* $e`
     rr=`expr $b \* $d`
     a11=`expr $aa - $bb`
     a12=`expr $dd - $cc`
     a13=`expr $ee - $ff`
     a21=`expr $hh - $gg`
     a22=`expr $ii - $jj`
     a23=`expr $ll - $kk`
     a31=`expr $mm - $nn`
     a32=`expr $pp - $oo`
     a33=`expr $qq - $rr`
     echo "$a11/$det     $a21/$det     $a31/$det"
     echo "  "
     echo "$a12/$det     $a22/$det     $a32/$det"
     echo "  "
     echo "$a13/$det     $a23/$det     $a33/$det"
elif [ $op -eq 5 ]
     then
     echo "  "
     echo "Add another matrix"
     echo "  "
     echo "p     q     r"
     echo "  "
     echo "s     t     u"
     echo "  "
     echo "v     ww     x"
     echo "  "
     echo -n "Enter value of p : "
     read p
     echo -n "Enter value of q : "
     read q
     echo -n "Enter value of r : "
     read r
     echo -n "Enter value of s : "
     read s
     echo -n "Enter value of t : "
     read t
     echo -n "Enter value of u : "
     read u
     echo -n "Enter value of v : "
     read v
     echo -n "Enter value of w : "
     read ww
     echo -n "Enter value of x : "
     read x
     add1=`expr $a + $p`
     add2=`expr $b + $q`
     add3=`expr $c + $r`
     add4=`expr $d + $s`
     add5=`expr $e + $t`
     add6=`expr $f + $u`
     add7=`expr $g + $v`
     add8=`expr $h + $ww`
     add9=`expr $i + $x`
     echo "Addition of two matrices is"
     echo "  "
     echo "$add1     $add2     $add3"
     echo "  "
     echo "$add4     $add5     $add6"
     echo "  "
     echo "$add7     $add8     $add9"
elif [ $op -eq 6 ]
     then
     echo "  "
     echo "Add another matrix"
     echo "  "
     echo "p     q     r"
     echo "  "
     echo "s     t     u"
     echo "  "
     echo "v     ww     x"
     echo "  "
     echo -n "Enter value of p : "
     read p
     echo -n "Enter value of q : "
     read q
     echo -n "Enter value of r : "
     read r
     echo -n "Enter value of s : "
     read s
     echo -n "Enter value of t : "
     read t
     echo -n "Enter value of u : "
     read u
     echo -n "Enter value of v : "
     read v
     echo -n "Enter value of w : "
     read ww
     echo -n "Enter value of x : "
     read x
     add1=`expr $a - $p`
     add2=`expr $b - $q`
     add3=`expr $c - $r`
     add4=`expr $d - $s`
     add5=`expr $e - $t`
     add6=`expr $f - $u`
     add7=`expr $g - $v`
     add8=`expr $h - $ww`
     add9=`expr $i - $x`
     echo "Subtraction of two matrices is"
     echo "  "
     echo "$add1     $add2     $add3"
     echo "  "
     echo "$add4     $add5     $add6"
     echo "  "
     echo "$add7     $add8     $add9"
else
     echo "Please enter valid option!"
fi
fi