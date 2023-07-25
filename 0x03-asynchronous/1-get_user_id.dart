import 'dart:async';
import 'dart:convert';
import '1-util.dart';

Future<String> fetchUserData() => Future.delayed(
      const Duration(seconds: 2),
      () =>
          '{"id" : "7ee9a243-01ca-47c9-aa14-0149789764c3", "username" : "admin"}',
    );

Future<String> getUserId() async {
  // Call the fetchUserData() function to get user data.
  String userDataJson = await fetchUserData();

  // Parse the JSON data to a Map.
  Map<String, dynamic> userData = json.decode(userDataJson);

  // Extract and return the user's ID.
  String userId = userData['id'];
  return userId;
}