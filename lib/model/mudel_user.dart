class ModelUser {
  String? idUser;
  String? nama;
  String? foto;
  String? nip;
  String? jklm;
  String? mapel;
  String? user;
  String? pass;
  String? isAdmin;
  String? telepon;

  ModelUser(
      {this.idUser,
      this.nama,
      this.foto,
      this.nip,
      this.jklm,
      this.mapel,
      this.user,
      this.pass,
      this.isAdmin,
      this.telepon});

  ModelUser.fromJson(Map<String, dynamic> json) {
    idUser = json['id_user'];
    nama = json['nama'];
    foto = json['foto'];
    nip = json['nip'];
    jklm = json['jklm'];
    mapel = json['mapel'];
    user = json['user'];
    pass = json['pass'];
    isAdmin = json['is_admin'];
    telepon = json['telepon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_user'] = this.idUser;
    data['nama'] = this.nama;
    data['foto'] = this.foto;
    data['nip'] = this.nip;
    data['jklm'] = this.jklm;
    data['mapel'] = this.mapel;
    data['user'] = this.user;
    data['pass'] = this.pass;
    data['is_admin'] = this.isAdmin;
    data['telepon'] = this.telepon;
    return data;
  }
}