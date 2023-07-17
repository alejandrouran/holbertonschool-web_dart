void main(List<String> args) {
  var numbers = int.parse(args[0]);

  if (numbers > 0) {
    print("$numbers is positive");
  } else if (numbers == 0){
    print("$numbers is zero");
  } else {
    print("$numbers is negative");
  }
}