import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_prjct/pages/admin/home_admin.dart';
import 'package:flutter_app_prjct/pages/login/controller.dart';
import 'package:flutter_app_prjct/pages/user/home_user_screen.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  static const String route = "/login";

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // get c => null;
  late final LoginController c;
  // Variable inputan
  TextEditingController _user = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  void initState() {
    super.initState();
    c = LoginController();
  }

  final box = GetStorage();

  final dio = Dio(BaseOptions(headers: {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
  }));

  bool loading = false;

  void ceklogin() async {
    // try {
    if (!loading) {
      setState(() {
        loading = true;
      });
      var response = await dio.post(
        "${dotenv.get('BASE_URL')}user/login.php",
        data: FormData.fromMap({
          'username': _user.text,
          'password': _password.text,
        }),
      );
      setState(() {
        loading = false;
      });
      if (response.statusCode == 200) {
        var jsonResponse = response.data;
        if (jsonResponse['status'] == 1) {
          box.write('isLogin', true);
          box.write('id', jsonResponse['data']['id_user']);
          box.write('nama', jsonResponse['data']['nama']);
          box.write('nip', jsonResponse['data']['nip']);
          box.write('foto', jsonResponse['data']['foto']);
          if (jsonResponse['data']['is_admin'] == "0") {
            box.write('isAdmin', false);
            Navigator.pushNamed(context, HomeUserScreen.route);
          } else {
            box.write('isAdmin', true);
            Navigator.pushNamed(context, Admin.route);
          }
        } else {
          print("Gagal : ${response.statusCode}");
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: c.formKey,
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/img/logo.png',
                    height: 150,
                  ),
                  Text(
                    "Log In",
                    style: GoogleFonts.inter(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Center(
                    child: Text(
                      "Selamat datang Guru Piket di",
                      style: GoogleFonts.inter(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Center(
                    child: Text(
                      "SMK NEGERI 2 KRAKSAAN",
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    // panggil varible username dan pass
                    controller: _user,
                    // keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: 'Username',
                      border:
                          OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Username tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    obscureText: true,
                    controller: _password,
                    decoration: const InputDecoration(
                      suffixIcon: Icon(Icons.remove_red_eye),
                      labelText: 'Password',
                      border:
                          OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => ceklogin(),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFF1852E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500, fontSize: 14, color: Colors.white),
                              'Login'),
                          Visibility(
                            visible: loading,
                            child: Container(
                              width: 20,
                              height: 20,
                              margin: const EdgeInsets.only(left: 12),
                              child: const CircularProgressIndicator(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 45),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
