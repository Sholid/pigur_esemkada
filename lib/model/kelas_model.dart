class KelasModel {
  String id;
  String kelas;

  KelasModel({
    required this.id,
    required this.kelas,
  });

  factory KelasModel.fromJson(Map<String, dynamic> json) {
    return KelasModel(
      id: json['id_kelas'],
      kelas: json['kelas'],
    );
  }
}
