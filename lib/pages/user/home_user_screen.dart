import 'package:flutter/material.dart';
import 'package:flutter_app_prjct/pages/login/login_page.dart';
import 'package:flutter_app_prjct/pages/user/cek_kelas_screen.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeUserScreen extends StatefulWidget {
  // static const route = "/homeuserscreen";
  static const String route = '/homeuserscreen';
  const HomeUserScreen({super.key});

  @override
  State<HomeUserScreen> createState() => _HomeUserScreenState();
}

class _HomeUserScreenState extends State<HomeUserScreen> {
  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 24,
                ),
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
                          color: const Color(0xFFF1852E),
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
                  height: 40,
                ),
                Text(
                  "Tugas guru piket",
                  style: GoogleFonts.inter(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF1F2A37),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "1. Memastikan keamanan pembelajaran di semua kelas",
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF6B7280),
                  ),
                ),
                Text(
                  "2. Mengkondisikan kelas apabila guru tidak hadir",
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF6B7280),
                  ),
                ),
                Text(
                  "3. Memastikan kegiatan pembelajaran berjalan dengan lancar dan kondusif",
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF6B7280),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  "Jadwal Piket Bulan Juli",
                  style: GoogleFonts.inter(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF606C38),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, CekKelasScreen.route);
                        },
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 16),
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          decoration: BoxDecoration(
                            color: const Color(0xFFCBF3F0),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              "Tanggaal  03-06-2024",
                              style: GoogleFonts.inter(
                                  fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black),
                            ),
                          ),
                        ),
                      );
                    }),
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.pushReplacementNamed(context, LoginPage.route);
        },
        child: Container(
          margin: const EdgeInsets.only(bottom: 16),
          padding: const EdgeInsets.symmetric(vertical: 16),
          height: 48,
          width: MediaQuery.of(context).size.width - 48,
          decoration: BoxDecoration(
            color: const Color(0xFFFB8500),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            "Log Out",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
