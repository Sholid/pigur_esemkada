import 'package:dio/dio.dart';

final dio = Dio();

Future<bool> insertUser(String nama, String nip, String jklm, String mapel,
    String user, String pass, String is_admin, String telepon) async {
  var formData = FormData.fromMap({
    "nama": nama,
    "nip": nip,
    "jklm": jklm,
    "mapel": mapel,
    "user": user,
    "pass": pass,
    "is_admin": is_admin,
    "telepon": telepon
  });
  print(formData);
  final response = await dio.post(
      "https://pgc7n869-80.asse.devtunnels.ms/Api_pigur/user/user.php",
      data: formData);
  print(response.statusCode);
  if (response.statusCode == 200) {
    return true;
  } else {
    return false;
  }
}
