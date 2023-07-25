import '2-util.dart';

Future<void> getUser() async {
  try {
    // Call the fetchUser() function to get user data.
    print (await fetchUser());
  } catch (error) {
    // If an error occurs, catch it and print the error message.
    print('Error caught: $error');
  }
}