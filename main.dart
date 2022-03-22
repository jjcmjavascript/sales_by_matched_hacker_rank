/*

There is a large pile of socks that must be paired by color. Given an array of integers representing the color of each sock, determine how many pairs of socks with matching colors there are.

Example

n = 7; 

ar = [1,2,1,2,1,3, 2]

There is one pair of color 1 and one of color 2. There are three odd socks left, one of each color. The number of pairs is 2. 

Function Description

Complete the sockMerchant function in the editor below.

sockMerchant has the following parameter(s):

    int n: the number of socks in the pile
    int ar[n]: the colors of each sock

Returns
    int: the number of pairs
*/

void main() {
  List<int> emptyList = [];

  final List<int> list = [
    566,
    789,
    1,
    2,
    4,
    100,
    99,
    89,
    71,
    4,
    101,
    99,
    96,
    127,
    112,
    100,
    116
  ];

  print(socketMerchant(list));
}

int socketMerchant(List<int> array) {
  int count = 0;

  for (int i = 0; i < array.length; i++) {
    for (int j = i + 1; j < array.length; j++) {
      if (array[i] == array[j]) {
        count++;
        array.removeAt(j);
        array.removeAt(i);
        i = -1;
        break;
      }
    }
  }
  return count;
}
