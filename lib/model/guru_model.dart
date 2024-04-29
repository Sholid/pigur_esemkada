class GuruModel {
  String id;
  String nama;
  String nip;
  String telp;
  String? foto;
  GuruModel({
    required this.id,
    required this.nama,
    required this.nip,
    required this.telp,
    this.foto,
  });
  factory GuruModel.fromJson(Map<String, dynamic> json) {
    return GuruModel(
        id: json['id_user'],
        nama: json['nama'],
        nip: json['nip'],
        telp: json['telepon'],
        foto: json['foto']);
  }
}
