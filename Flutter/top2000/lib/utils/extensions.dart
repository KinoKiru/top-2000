extension StringExtension on String {
  String capitalize() {
    return '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
  }

  String capitalizeAll() {
    String result = this[0].toUpperCase();
    for (int i = 1; i < length; i++) {
      if (this[i - 1] == ' ') {
        result = result + this[i].toUpperCase();
      } else {
        result = result + this[i];
      }
    }
    return result;
  }
}
