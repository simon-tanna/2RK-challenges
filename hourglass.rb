def hourglassSum(arr)
    # Write your code here
    # create an empty array to hold the hourglass totals
    hourglass_arr = []
    #iterate through array using the index to return elements
    arr.each_with_index do |r, i|
        # Creating 2D arrays with a 3 x 3 structure that hold the individual hourglass values
        arr[i].length.times do |x|
            # fixing nil error for inputs falling outside array
            # if the input is outside the array it does not return anything for that row
            if (arr[i+1] != nil && arr[i+2] != nil)
                row1 = arr[i][x...x+3]
                row2 = arr[i+1][x...x+3]
                row3 = arr[i+2][x...x+3]
                # return sum of row1, index elemen1 of row2 and row3 to get the sum of the hourglass
                total = row1 + [row2[1]] + row3
                # another nil error! logic needed!
                # unless condtion added to handle nil errors
                # insert the total of created hourglass into the hourglass totals array
                hourglass_arr << total.sum unless total.include? nil
            end
        end
    end
    #returns the highest value in the hourglass_arr array
    p hourglass_arr.max
end


    
    


