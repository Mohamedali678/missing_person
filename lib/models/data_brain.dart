class DataBrain {
  final image;
  final String name;
  final age;
  final number;
  final String location;
  final String desc;
  final bool isFile;
  DataBrain({
    required this.image,
    required this.name,
    required this.age,
    required this.number,
    required this.location,
    required this.desc,
    this.isFile = false,
  });
}
