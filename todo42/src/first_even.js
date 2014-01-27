function first_even(array) {
  for (var i = 0, element; element = array[i]; i++) {
    if (element % 2 === 0) {
      return element;
    }
  }
  return null;
}