import 'package:flutter/material.dart';
import 'package:flutter_app_prjct/pages/addguru.dart';
import 'package:flutter_app_prjct/pages/admin/atur_jadwal_piket_screen.dart';
import 'package:flutter_app_prjct/pages/login/login_page.dart';
import 'package:flutter_app_prjct/service/guru_service.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';

class Admin extends StatefulWidget {
  static const route = "/Admin";
  const Admin({super.key});

  @override
  State<Admin> createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(color: Colors.white),
              padding: EdgeInsets.only(left: 24, right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 231, 231, 231),
                          offset: Offset(0, 10),
                          blurRadius: 15,
                          spreadRadius: -3,
                        ),
                        BoxShadow(
                          color: Color.fromARGB(255, 231, 231, 231),
                          offset: Offset(0, 4),
                          blurRadius: 6,
                          spreadRadius: 0,
                        ),
                      ],
                      border: Border.all(color: const Color(0xFFF1852E), width: 1),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://piketesemkada.000webhostapp.com/" + box.read('foto')),
                                fit: BoxFit.fitHeight),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              box.read('nama'),
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Text(
                              "NIP. " + box.read('nip'),
                              style: GoogleFonts.inter(
                                fontSize: 14,
                                color: const Color(0xFF4B5563),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.location_on_outlined,
                                  color: Color(0xFF4B5563),
                                  size: 16,
                                ),
                                Text(
                                  "Admin",
                                  style: GoogleFonts.inter(
                                    fontSize: 14,
                                    color: const Color(0xFF4B5563),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Data guru",
                    style: GoogleFonts.inter(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFFB8500),
                          ),
                          onPressed: () {
                            // Navigator.pushNamed(context, InspeksiKelasAdminScreen.route);
                          },
                          child: Text(
                            "Cek Kelas",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFFB8500),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, AturJadwalPiketScreen.route);
                          },
                          child: Text(
                            "Buat jadwal",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Cari data guru",
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xFF9CA3AF),
                      ),
                      hintStyle: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF9CA3AF)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: Color(0xFFF3F4F6),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  // Memanggil data user
                  FutureBuilder(
                      future: GuruService().getGuru(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: snapshot.data!.length,
                            itemBuilder: (context, index) {
                              /// Varibale snapshot
                              final item = snapshot.data![index];
                              return Container(
                                margin: const EdgeInsets.only(bottom: 8),
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 231, 231, 231),
                                      offset: Offset(0, 10),
                                      blurRadius: 15,
                                      spreadRadius: -3,
                                    ),
                                    BoxShadow(
                                      color: Color.fromARGB(255, 231, 231, 231),
                                      offset: Offset(0, 4),
                                      blurRadius: 6,
                                      spreadRadius: 0,
                                    ),
                                  ],
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      // menampilkan foto

                                      width: 80,
                                      height: 80,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://t9xfkx7g-80.asse.devtunnels.ms/Api_pigur/" +
                                                    item.foto),
                                            fit: BoxFit.fitHeight),
                                        color: Color.fromRGBO(255, 255, 254, 1),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          // disi sesuai class Guru_model
                                          // menampilkan nama
                                          item.nama,
                                          style: const TextStyle(
                                            fontSize: 16,
                                            color: Color(0xFF1F2A37),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 16,
                                        ),
                                        Text(
                                          "NIP. " + item.nip,
                                          style: GoogleFonts.inter(
                                            fontSize: 14,
                                            color: const Color(0xFF4B5563),
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Text(
                                          // ignore: prefer_interpolation_to_compose_strings
                                          "Telpon. " + item.telp,
                                          style: GoogleFonts.inter(
                                            fontSize: 14,
                                            color: const Color(0xFF4B5563),
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        } else if (snapshot.hasError) {
                          return Text("Error: ${snapshot.error}");
                        } else {
                          return Text("Loading");
                        }
                      }),

                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, Guru.route);
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFF1852E),
                              shape:
                                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))),
                          child: Text(
                            "Tambah",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, LoginPage.route);
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFF1852E),
                              shape:
                                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))),
                          child: Text(
                            "Logout",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
