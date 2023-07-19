String longestUniqueSubstring(String str) {
  if (str.isEmpty) {
    return '';
  }

  String longestSubstring = '';
  String currentSubstring = '';

  for (int i = 0; i < str.length; i++) {
    String char = str[i];
    int index = currentSubstring.indexOf(char);

    if (index != -1) {
      if (currentSubstring.length > longestSubstring.length) {
        longestSubstring = currentSubstring;
      }

      currentSubstring = currentSubstring.substring(index + 1);
    }

    currentSubstring += char;
  }

  return (currentSubstring.length > longestSubstring.length)
      ? currentSubstring
      : longestSubstring;
}