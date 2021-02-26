class FormValidators {
  String isEmpty(String value) {
    if (value.isEmpty) {
      return 'Please provide a value';
    }

    return null;
  }
}
