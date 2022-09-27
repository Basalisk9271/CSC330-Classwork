! ---------------------------------------------------------------
! This program finds all prime numbers in the range of 2 and an
! input integer.
! ---------------------------------------------------------------

PROGRAM Primer
    IMPLICIT NONE

    integer :: lowerBound, upperBound

    write(*,"(A)",advance="no") "First Argument: "
    read *,lowerBound
    write(*,"(A)",advance="no") "Second Argument: "
    read *,upperBound
    call printPrime(lowerBound, upperBound)

END PROGRAM Primer

    logical function isPrime(number)
        IMPLICIT NONE
        integer, intent(in):: number
        integer :: numDivisors, i
        numDivisors = 0
        do i = 1, number+1
            if (MOD(number,i) == 0) then
                numDivisors = numDivisors+1          
            end if
            if ( numDivisors > 2 ) then
                isPrime = .false. 
            else
                isPrime = .true.
            end if
        end do
        !isPrime = .false.

    end function isPrime
    
    subroutine printPrime(lowerBound, upperBound) 
        IMPLICIT NONE
        integer, intent(in) :: lowerBound, upperBound
        integer :: i
        logical :: isPrime
        do i = lowerBound, upperBound
            if (isPrime(i)) then
                WRITE(*, '(i0)') i
            end if            
        end do
        

    end subroutine printPrime

    