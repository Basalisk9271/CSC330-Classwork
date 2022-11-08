#!/usr2/local/julia-1.8.2/bin/julia

print("What is the dimension of the rank 3 tensor? ")

dimension = parse(Int32, readline())

cube = Array{Float64,3}(undef, dimension, dimension, dimension)

for i = 1:dimension
  for j = 1:dimension
     for k = 1:dimension
       cube[i,j,k] = (i-1)*dimension*dimension+(j-1)*dimension+k
     end
  end
end

println("The last element is ", cube[dimension,dimension,dimension])

exit()


Exit the editor and make the program executable