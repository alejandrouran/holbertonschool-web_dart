String longestPalindrome(String s) {
  if (s.length < 3) {
    return null;
  }

  String longestPalindrome = '';
  int maxLength = 0;

  for (int i = 0; i < s.length; i++) {
    for (int j = i + 1; j <= s.length; j++) {
      String substring = s.substring(i, j);
      if (isPalindrome(substring) && substring.length > maxLength) {
        maxLength = substring.length;
        longestPalindrome = substring;
      }
    }
  }

  return longestPalindrome.isNotEmpty ? longestPalindrome : null;
}

bool isPalindrome(String s) {
  int left = 0;
  int right = s.length - 1;

  while (left < right) {
    if (s[left] != s[right]) {
      return false;
    }

    left++;
    right--;
  }

  return true;
}