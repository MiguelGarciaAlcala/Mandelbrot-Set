#=Step 1. We'll use the PyPlot package to build and show the Mandelbrot Set=#
using PyPlot

#=Step 2. First we need to create a function to select a range of numbers that belong to the Mandelbrot Set=#

function mandelSet(z, c)
	for i=1:80
		if abs(z)>2
			return i-1
		end
	z = z^2+c
	end
end

#=Step 3. Now we can use the mandelSet() function to fill a Matrix with the Mandelbrot's values and then show them=#

M = [UInt8(mandelSet(complex(r,i),complex(r,i))) for i=-2:0.001:2, r=-2:0.001:2];

#=Step 4. Finally we can see the gorgeous Mandelbrot Set using the next code=#

imshow(M, cmap="RdGy", extent=[-2,2,-1.5,1.5])

#=More info: go to the README file=#
