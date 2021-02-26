def merge_sort(array)
    if array.length <= 1
        return array
    end

    middle = (array.length / 2).round

    #split by half and sort left
    left_half = merge_sort(array[0...middle])

    #split by half and sort right
    right_half = merge_sort(array[middle..array.length])

    #merging both halves(sort)

    sorted = []
    #compare till the first half is empty
    until left_half.empty? || right_half.empty?
        #if the first element at the left side is smaller than, will add at the sorted array.
        left_half.first <= right_half.first ? sorted << left_half.shift : sorted << right_half.shift
    end

    puts "#{sorted}"
    puts "#{left_half}"
    puts "#{right_half}"

    sorted + left_half + right_half

end

p merge_sort([3, 4, 2, 1, 5, 0, 10, 9, 7, 8, 6])