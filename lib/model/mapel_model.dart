class MapelModel {
  String id;
  String mapel;

  MapelModel({
    required this.id,
    required this.mapel,
  });

  factory MapelModel.fromJson(Map<String, dynamic> json) {
    return MapelModel(
      id: json['id_mapel'],
      mapel: json['mapel'],
    );
  }
}
