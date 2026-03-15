class Itinerary {

  String id;
  String hari;
  String tanggal;
  String waktu;
  String aktivitas;
  String status;

  Itinerary({
    required this.id,
    required this.hari,
    required this.tanggal,
    required this.waktu,
    required this.aktivitas,
    required this.status,
  });

  factory Itinerary.fromJson(Map<String, dynamic> json) {
    return Itinerary(
      id: json['id'],
      hari: json['hari'] ?? '',
      tanggal: json['tanggal'],
      waktu: json['waktu'],
      aktivitas: json['aktivitas'],
      status: json['status'],
    );
  }
}