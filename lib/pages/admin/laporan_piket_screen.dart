import 'package:flutter/material.dart';
import 'package:flutter_app_prjct/model/detail_jadwal_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class LaporanPiketScreen extends StatefulWidget {
  static const String route = '/laporan-piket-screen';
  const LaporanPiketScreen({super.key});

  @override
  State<LaporanPiketScreen> createState() => _LaporanPiketScreenState();
}

class _LaporanPiketScreenState extends State<LaporanPiketScreen> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as DetailJadwalModel;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                const SizedBox(
                  height: 24,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  decoration: BoxDecoration(
                    color: const Color(0xFF9381FF),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          size: 46,
                          Icons.arrow_circle_left_rounded,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 18,
                      ),
                      Text(
                        "Informasi Kelas",
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/img/logo.png',
                      width: 50,
                      height: 50,
                    ),
                    Column(
                      children: [
                        Text(
                          "Laporan Guru Piket",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "SMK NEGERI 2 KRAKSAAN",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Tanggal: ${DateFormat('d MMM y').format(DateTime.now())}",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 6),
                  decoration: BoxDecoration(
                    color: Color(0xFFFCF7F7),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Jam Ke",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "Kelas",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "Guru",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "Mapel",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "Status Guru",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "Keterangan",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                ": ${args.jamKe}",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                ": ${args.kelas}",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                ": ${args.nama}",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                ": ${args.mapel}",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                ": ${args.status == "0" ? "Tidak Hadir" : "Hadir"}",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                ": ${args.ket}",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 150,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image:
                              DecorationImage(image: NetworkImage(args.foto)),
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 157, 157, 158),
              ),
              onPressed: () {},
              child: Text(
                "Cetak",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              )),
          const SizedBox(
            width: 24,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 113, 113, 114),
              ),
              onPressed: () {},
              child: Text(
                "Tutup",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              )),
        ],
      ),
    );
  }
}
