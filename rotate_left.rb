def rotateLeft(d, arr)
    # Write your code here
    # using the "rotate" method to rotate the arr "d" number of times
    a = arr.rotate(d)
    p a
end

# Antother solution using "push and shift" methods
# def rotateLeft(d, arr)
#     # Write your code here
#     for i in 1..d
#         a = arr.push(arr.shift)
#     end
#     p a
# end