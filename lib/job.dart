
class Job {
  final String title;
  final String date;
  final String type;
  final String location;

  Job({
    required this.title,
    required this.date,
    required this.type,
    required this.location,
  });

  @override
  String toString() {
    return '$title ($type) - $location on $date';
  }
}
