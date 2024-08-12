void main(){
    List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];
    int largest = numbers[0];
    int smallest = numbers[0];
    for(int i = 0; i < numbers.length; i++){
        if(numbers[i] > largest){
            largest = numbers[i];
        }
        if(numbers[i] < smallest){
            smallest = numbers[i];
        }
    }
    print("Largest: $largest");
    print("Smallest: $smallest");
}