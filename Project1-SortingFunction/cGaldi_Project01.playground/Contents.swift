// Christopher Galdi
// CPSC 357 iOS App Development
// 2299616
// galdi@chapman.edu

var sortingArray = [16, 77, 95, 19, 24, 10, 36, 81, 6, 55, 42, 66]

func selectionSort(whatToSort : [Int]) -> [Int]{  //(1) used to help format my function
    var complete = whatToSort
    for i in 0..<complete.count{   // (2,3) used to help format range operator 0 to complete.count and set up the for loops
        var min_index = i
        for j in i+1..<complete.count{
            if complete[j] < complete[min_index]{
                min_index = j
            }
        }
        if min_index != i{
            let temp = complete[i]
            complete[i] = complete[min_index]
            complete[min_index] = temp
        }
        print(complete)
    }
    return complete
 }
selectionSort(whatToSort: sortingArray)



//Selection Sort- C++
/*
 void Sort::selectionSort(double *arr, int size)
 {
    for (int i = 0; i < size - 1; ++i)
    {
        int minIndex = i;
        for (int j = 1 + 1; j < size; ++j)
        {
            if (arr[j] < arr[minIndex])
            {
                minIndex = j;
            }
        }
        if (minIndex != i)
        {
            double tmp = arr[i];
            arr[i] = arr[minIndex];
            arr[minIndex] = tmp;
        }
    }
}

*/
