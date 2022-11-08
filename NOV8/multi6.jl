#!/usr2/local/julia-1.8.2/bin/julia

print("What is the N of the rank 3 tensor? ")

N = parse(Int32, readline())

cube = Array{Float64,6}(undef, N, N, N, N, N, N)

for i = 1:N
  for j = 1:N
     for k = 1:N
        for l = 1:N
          for m = 1:N
            for n = 1:N
               cube[i,j,k,l,m,n] = (i-1)*N^5+(j-1)*N^4+(k-1)*N^3+(l-1)*N^2+(m-1)*N+n
            end
          end
        end
     end
   end
end

println("The last element is ", cube[N,N,N,N,N,N])

exit()