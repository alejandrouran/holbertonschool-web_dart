import 'dart:async';

Future<int> fetchUsersCount() => Future.delayed(
      const Duration(seconds: 2),
      () => 19,
    );

Future<void> usersCount() async {
  // Call the fetchUsersCount() function to get the user count.
  int userCount = await fetchUsersCount();

  // Print the number of users.
  print(userCount);
}

void main() async {
  await usersCount();
}