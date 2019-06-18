!done while following tutorial from Derek Banas on youtube

program maths_logic
    implicit none
    integer, dimension(1:5) :: a1, a2, a3
    real, dimension(1:50) :: aR1
    integer, dimension(5,5) :: a4
    integer :: n, m, x, y
    integer, dimension(:), allocatable :: a5
    integer :: num_vals = 0
    integer, dimension(1:9) :: a6 = (/1,2,3,4,5,6,7,8,9/)
    integer, dimension(1:3, 1:3) :: a7 !3x3 matrix
    integer :: age = 16

!all arrays start with index of one
a1(1) = 5
print "(i1)", a1(1) !(i1) == integer data type, allocating one space

!for loop n starting at one until it reaches 5
do n = 1,4
    a1(n) = n
end do

do n =2,4 !third comma to change step size, 1 is default
    print "(i1)", a1(n)
end do

print "(3i2)", a1(1:3) !printing 3 integers with two spaces for each entry
print "(2i2)", a1(1:3:2) !step with 2

!double loop
do n = 1,5
    do m = 1,5
        a4(n,m) = n
    end do
end do

!size of arrays
print "(i2)", size(a1)
print "(i2)", size(a4)

!number of dimensions
print "(i2)", rank(a1)
!elements of each dimension
print "(i2)", shape(a4)

!allow user to determine array size
print *, "Size of array? "
read *, num_vals
allocate(a5(1:num_vals))

!setting elements and printing them
do n = 1, num_vals
    a5(n) = n
end do
do n = 1, num_vals
    print "(i1)", a5(n)
end do


 ! ----- Math Functions -----
print "(a10,i1)", "ABS(-1) = ", ABS(-1)
print "(a11,f3.1)", "SQRT(81) = ", SQRT(81.0)
print "(a9,f7.5)", "EXP(1) = ", EXP(1.0)
print "(a12,f7.5)", "LOG(2.71) = ", LOG(2.71)
print "(a12,i1)", "INT(2.71) = ", INT(2.71)
print "(a13,i1)", "NINT(2.71) = ", NINT(2.71)
print "(a14,i1)", "FLOOR(2.71) = ", FLOOR(2.71)
print "(a15,f3.1)", "MAX(2.7,3.4) = ", MAX(2.7,3.4)
print "(a15,f3.1)", "MIN(2.7,3.4) = ", MIN(2.7,3.4)
! Trig functions use radians
print "(a14,f3.1)", "SIN(1.5708) = ", SIN(1.5708)
print "(a14,f3.1)", "COS(1.5708) = ", COS(1.5708)
print "(a14,f3.1)", "TAN(1.5708) = ", TAN(1.5708)
print "(a10,f3.1)", "ASIN(0) = ", ASIN(0.0)
print "(a10,f3.1)", "ACOS(0) = ", ACOS(0.0)
print "(a10,f3.1)", "ATAN(0) = ", ATAN(0.0)

! Relational Operators : == /= > < >= <=
! Logical Operators : .and. .or. .not.
! .true. and .false.

! If, else if, else

if ((age >= 5) .and. (age <= 6)) then
  print *, "Kindergarten"
else if ((age >= 7) .and. (age <= 13)) then
  print *, "Middle School"
else if ((age >= 14) .and. (age <= 18)) then
  print *, "High School"
else
  print *, "Stay Home"
end if

print *, .true. .or. .false.
print *, .not. .true.
print *, 5 /= 9

! Can be used with letters
print *, "a" < "b"

! Select
select case (age)
case (5)
  print *, "Kindergarten"
case (6:13)
  print *, "Middle School"
case (14,15,16,17,18)
  print *, "High School"
case default
  print *, "Stay Home"
end select

! Exit & Cycle
  ! Print only evens
do while (m < 20)
    if (MOD(m,2) == 0) then
      print "(i1)", m
      m = m + 1
      ! Jumps back to beginning of loop - like continue
      cycle
    end if
    m = m + 1
    if (m >= 10) then
      ! Exits the loop all together - like break
      exit
    end if
end do



end program maths_logic

!to run, open directory where file saved
!type: 'gfortran filename'
!type 'dir' to see what in folder
!should see a.exe file, type 'a' and it will run

