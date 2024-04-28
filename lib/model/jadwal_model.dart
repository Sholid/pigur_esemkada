class JadwalModel {
  String id;
  String isKoord;
  String idJadwal;
  String tanggal;

  JadwalModel({
    required this.id,
    required this.isKoord,
    required this.idJadwal,
    required this.tanggal,
  });

  factory JadwalModel.fromJson(Map<String, dynamic> json) {
    return JadwalModel(
      id: json['id_piket'],
      isKoord: json['is_koord'],
      idJadwal: json['id_jadwal'],
      tanggal: json['tanggal'],
    );
  }
}
