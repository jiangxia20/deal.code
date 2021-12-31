program angle

implicit none


real(8)::Theta,Phi,Bulk,Young,Shear_min,Shear_max,Poisson_min,Poisson_max,Compressibility
integer::i
real, parameter :: error=1

open(unit=91,file="MECHANICS_3D.dat")
open(unit=92,file="MECHANICS_3D_plot.dat")

read(91,*)
do i=1,65341
read(91,*) Theta,Phi,Bulk,Young,Shear_min,Shear_max,Poisson_min,Poisson_max,Compressibility

if(abs(-16.84371442168289*sind(Theta)*cosd(Phi)+11.057395174307318*cosd(Theta))<error)then       !plane equation in polar coordinates
write(92,'(9f15.8)')Theta,Phi,Bulk,Young,Shear_min,Shear_max,Poisson_min,Poisson_max,Compressibility
end if

end do



close(91)
close(92)


end 
