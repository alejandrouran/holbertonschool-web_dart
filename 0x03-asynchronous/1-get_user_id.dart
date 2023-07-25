import 'dart:async';
import 'dart:convert';
import '1-util.dart';

Future<String> getUserId() async {
  // Call the fetchUserData() function to get user data.
  String userDataJson = await fetchUserData();

  // Parse the JSON data to a Map.
  Map<String, dynamic> userData = json.decode(userDataJson);

  // Extract and return the user's ID.
  String userId = userData['id'];
  return userId;
}