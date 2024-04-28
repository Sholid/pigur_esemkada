class DetailJadwalModel {
  String id;
  String idKelas;
  String kelas;
  String idJampel;
  String jamKe;
  String idUser;
  String status;
  String mapel;
  String? ket;
  DetailJadwalModel({
    required this.id,
    required this.idKelas,
    required this.kelas,
    required this.idJampel,
    required this.jamKe,
    required this.idUser,
    required this.status,
    required this.mapel,
    this.ket,
  });
  factory DetailJadwalModel.fromJson(Map<String, dynamic> json) {
    return DetailJadwalModel(
        id: json['id_detail'],
        idKelas: json['id_kelas'],
        kelas: json['kelas'],
        idJampel: json['id_jampel'],
        jamKe: json['jam_ke'],
        idUser: json['id_user'],
        status: json['status'],
        mapel: json['mapel'],
        ket: json['ket']);
  }
}
