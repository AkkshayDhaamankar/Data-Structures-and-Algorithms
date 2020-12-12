import "dart:math";
void main(){
  List mergeSortedArrays(List arr1, List arr2){
    if(arr1 == null || arr2 == null){
      return ["Wrong Input"];
    } 
    
    if(arr2.length < 1) {
      return arr1;
    }else if(arr1.length < 1){
      return arr2;
    }

    List mergedList = [];
    int startPosForArr2 = 0;
    int i = 0, j = 0;
    while (i < arr1.length || j < arr2.length){
      if(i < arr1.length){
        if(arr1[i] < arr2[j]){
          mergedList.add(arr1[i]);
          i++;
        }else{
        if(arr1[i] != arr2[j]){
          mergedList.add(arr2[j]);
          j++;}else{
          i++;
          }
        }
      } else if(j < arr2.length){
        mergedList.add(arr2[j]);
        j++;
      }
    }
    return mergedList;
  }

  print(mergeSortedArrays([1,2,2,3,4,5,5],[1,2,3,4,5,6]));
  print(mergeSortedArrays([1,2,3,4],null));
  print(mergeSortedArrays([1,2,3,4],[]));
}
