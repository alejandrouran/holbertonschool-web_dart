Future<int> fetchUsersCount() => Future.delayed(
      const Duration(seconds: 2),
      () => 19,
    );

  userCount() async {
    print(await fetchUsersCount());
  }