class DetailJadwalModel {
  String id;
  String idKelas;
  String kelas;
  String idJampel;
  String jamKe;
  String nama;
  String idUser;
  String status;
  String mapel;
  String? ket;
  String foto;
  DetailJadwalModel({
    required this.id,
    required this.idKelas,
    required this.nama,
    required this.kelas,
    required this.idJampel,
    required this.jamKe,
    required this.idUser,
    required this.status,
    required this.mapel,
    this.ket,
    required this.foto,
  });
  factory DetailJadwalModel.fromJson(Map<String, dynamic> json) {
    return DetailJadwalModel(
      id: json['id_detail'],
      nama: json['nama'],
      idKelas: json['id_kelas'],
      kelas: json['kelas'],
      idJampel: json['id_jampel'],
      jamKe: json['jam_ke'],
      idUser: json['id_user'],
      status: json['status'],
      mapel: json['mapel'],
      ket: json['ket'],
      foto: json['foto'],
    );
  }
}
