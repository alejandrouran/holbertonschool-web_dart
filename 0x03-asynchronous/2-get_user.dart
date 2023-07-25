import '2-util.dart';

Future<void> getUser() async {
  try {
    // Call the fetchUser() function to get user data.
    String userData = await fetchUser();

    // Print the user's string representation.
    print('User: $userData');
  } catch (error) {
    // If an error occurs, catch it and print the error message.
    print('Error caught: $error');
  }
}