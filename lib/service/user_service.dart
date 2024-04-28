import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

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
  final response = await dio
      .post("${dotenv.get('BASE_URL')}Api_pigur/user/user.php", data: formData);
  if (response.statusCode == 200) {
    return true;
  } else {
    return false;
  }
}
