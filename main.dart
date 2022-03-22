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
