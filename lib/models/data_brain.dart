class DataBrain {
  final image;
  final String name;
  final age;
  final String location;
  final bool isFile;
  DataBrain({
    required this.image,
    required this.name,
    required this.age,
    required this.location,
    this.isFile = false,
  });
}
