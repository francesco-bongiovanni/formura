program main
  use finalist_header
  use finalist

  implicit none
  type(Formura_Navigator) :: navi
  call Formura_Init(navi, MPI_COMM_WORLD)
  print *, "time step = ", navi%time_step
  call init()


contains
  subroutine init()

  end subroutine init

end program main