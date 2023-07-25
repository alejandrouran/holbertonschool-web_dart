import 'dart:convert';
import 'dart:async';

Future<String> fetchUserData() => Future.delayed(
      const Duration(seconds: 2),
      () =>
          '{"id" : "7ee9a243-01ca-47c9-aa14-0149789764c3", "username" : "admin"}',
    );

Future<bool> checkCredentials() =>
    Future.delayed(const Duration(seconds: 2), () => true);

Future<String> greetUser() async {
  try {
    // Call the fetchUserData() function to get user data.
    String userDataJson = await fetchUserData();

    // Parse the JSON data to a Map.
    Map<String, dynamic> userData = json.decode(userDataJson);

    // Extract the username from the user data.
    String username = userData['username'];

    // Return the greeting message.
    return 'Hello $username';
  } catch (error) {
    // If an error occurs, catch it and return the error message.
    return 'error caught: $error';
  }
}

Future<String> loginUser() async {
  try {
    // Call the checkCredentials() function to check login credentials.
    bool isUserLoggedIn = await checkCredentials();

    // Print whether there is a user or not.
    print('There is a user: $isUserLoggedIn');

    if (isUserLoggedIn) {
      // Call the greetUser() function to get the greeting message.
      return await greetUser();
    } else {
      // Return the error message for wrong credentials.
      return 'Wrong credentials';
    }
  } catch (error) {
    // If an error occurs, catch it and return the error message.
    return 'error caught: $error';
  }
}

void main() async {
  print(await loginUser());
}
