class JampelModel {
  String id;
  String idJadwal;
  String jamKe;

  JampelModel({
    required this.id,
    required this.idJadwal,
    required this.jamKe,
  });

  factory JampelModel.fromJson(Map<String, dynamic> json) {
    return JampelModel(
      id: json['id_jampel'],
      idJadwal: json['id_jadwal'],
      jamKe: json['jam_ke'],
    );
  }
}
