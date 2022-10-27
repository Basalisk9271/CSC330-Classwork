program autobox

integer, parameter :: msize=1000
real (kind=8) :: sumval
real (kind=8), dimension(:,:,:), allocatable :: cube

allocate ( cube(0:msize-1,0:msize-1,0:msize-1), stat=ierr)
if ( ierr /= 0 ) then
    print *, "Could not allocate memory - halting run."
    stop
endif

! Fill the entire box with 1.0
cube = 1.0
sumval = 0.0

   do i = 0, msize-1
      do j = 0, msize-1
          do k = 0, msize-1
              sumval = sumval + cube(k,j,i)
          end do
      end do
   end do

print "(1p,d20.10,1x,d20.10)", sumval, sum(cube)

if ( allocated(cube) ) deallocate(cube)

end program autobox