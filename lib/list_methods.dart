void main(List<String> args) {
  final List<String> testString = ['Dart', 'Dash', 'Flutter', 'Dev'];

  print(generateStringFromList(testString));
}

List<String> generateNewListWithDuplicatedString(List<String> list) {
  list.map((item) => '$item-$item').toList();

  final newList = <String>[];

  for (var item in list) {
    newList.add('$item-$item');
  }

  return newList;
}

List<String> newFilteredListWithStringStartWithA(List<String> list) {
  list.where((item) => item.startsWith('a')).toList();

  final newList = <String>[];

  for (var item in list) {
    if (item.startsWith('a')) {
      newList.add(item);
    }
  }

  return newList;
}

bool isAnyValueGreaterThan10(List<String> list) {
  list.any((item) => item.length > 10);

  bool isGreaterThan10 = false;

  for (var item in list) {
    if (item.length > 10) {
      isGreaterThan10 = true;
    }
  }

  return isGreaterThan10;
}

bool isElementToSearchInTheList(String valueToSearch, List<String> list) {
  list.contains(valueToSearch);

  bool isTheSameValue = false;

  for (var item in list) {
    if (item == valueToSearch) {
      isTheSameValue = true;
    }
  }

  return isTheSameValue;
}

String generateStringFromList(List<String> list) {
  list.reduce((accumulated, item) => '$item, $accumulated');

  String accumulated = '';

  for (var i = 0; i < list.length; i++) {
    accumulated = '${list[i]}, $accumulated';
  }

  return accumulated;
}

int countCharacteresOfList(List<String> list) {
  list.fold<int>(0, (previousValue, item) => previousValue += item.length);

  int totalLenght = 0;

  for (var item in list) {
    totalLenght += item.length;
  }

  return totalLenght;
}

int getIndexOfStringStartWithLetter(String letter, List<String> list) {
  list.indexWhere((item) => item.startsWith(letter));

  list.lastIndexWhere((element) => false);

  int index = -1;

  for (var i = 0; i < list.length; i++) {
    if (list[i].startsWith(letter)) {
      index = i;
      return index;
    }
  }

  return index;
}

int getLastIndexOfStringStartWithLetter(String letter, List<String> list) {
  list.lastIndexWhere((item) => item.startsWith(letter));

  int index = -1;

  for (var i = 0; i < list.length; i++) {
    if (list[i].startsWith(letter)) {
      index = i;
    }
  }

  return index;
}

void callFunctionForEachValue<T>(Function(T) func, List<T> list) {
  list.forEach(func);

  for (var item in list) {
    func(item);
  }
}

List<String> insertListBeforeList(List<String> list, List<String> listToConcatenate) {
  final List<String> newList = <String>[];

  for (var item in list) {
    newList.add(item);
  }

  for (var item in listToConcatenate) {
    newList.add(item);
  }

  list.followedBy(listToConcatenate).toList();

  return newList;
}

// bonus: Concatenate methods

List<String> getFiveItemStartsWithD(List<String> list) {
  list.where((item) => item.startsWith('d')).take(5);

  final List<String> filteredList = <String>[];

  for (var item in list) {
    if (item.startsWith('d')) {
      filteredList.add(item);
      if (filteredList.length == 5) {
        break;
      }
    }
  }

  return filteredList;
}

void callEndpointWhenLengthIsOdd(List<String> list, Function(String) callEndpoint) {
  list.skipWhile((value) => value.length.isOdd).forEach(callEndpoint);

  for (var item in list) {
    if (item.length.isOdd) {
      callEndpoint(item);
    }
  }
}
