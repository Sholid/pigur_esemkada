// import 'dart:ui';

// import 'package:dropdown_button2/dropdown_button2.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_app_prjct/model/detail_jadwal_model.dart';
// import 'package:flutter_app_prjct/pages/admin/laporan_piket_screen.dart';
// import 'package:flutter_app_prjct/service/detail_jadwal_service.dart';
// import 'package:flutter_app_prjct/service/kelas_service.dart';
// import 'package:google_fonts/google_fonts.dart';

// class InspeksiKelasAdminScreen extends StatefulWidget {
//   static const String route = '/inspeksi-kelas';
//   const InspeksiKelasAdminScreen({super.key});

//   @override
//   State<InspeksiKelasAdminScreen> createState() => _InspeksiKelasAdminScreenState();
// }

// class _InspeksiKelasAdminScreenState extends State<InspeksiKelasAdminScreen> {
//   final List<String> genderItems = [
//     'Laki-laki',
//     'Perempuan',
//   ];
//   final List<String> status = [
//     'Hadir',
//     'Tidak Hadir',
//   ];
//   String? kelasDipilih;
//   String? selectedValue;
//   TextEditingController cMapel = TextEditingController();
//   TextEditingController cKet = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: ListView(
//         children: [
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 24),
//             child: Column(
//               children: [
//                 const SizedBox(
//                   height: 24,
//                 ),
//                 Container(
//                   padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
//                   decoration: BoxDecoration(
//                     color: const Color(0xFF9381FF),
//                     borderRadius: BorderRadius.circular(6),
//                   ),
//                   child: Row(
//                     children: [
//                       InkWell(
//                         onTap: () {
//                           Navigator.pop(context);
//                         },
//                         child: const Icon(
//                           size: 46,
//                           Icons.arrow_circle_left_rounded,
//                           color: Colors.white,
//                         ),
//                       ),
//                       const SizedBox(
//                         width: 18,
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "Inspeksi kelas",
//                             style: GoogleFonts.poppins(
//                               fontSize: 24,
//                               fontWeight: FontWeight.w600,
//                               color: Colors.white,
//                             ),
//                           ),
//                           Text(
//                             "Jam Ke- $jamKe",
//                             style: GoogleFonts.poppins(
//                               fontSize: 18,
//                               fontWeight: FontWeight.w600,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 16,
//                 ),
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     "Data Hasil Inspeksi Kelas",
//                     style: GoogleFonts.poppins(
//                       fontSize: 12,
//                       fontWeight: FontWeight.w400,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 8,
//                 ),
//                 FutureBuilder(
//                     future: DetailJadwalService().getDetailJadwal(""),
//                     builder: (context, snapshot) {
//                       if (snapshot.hasData) {
//                         return GridView.builder(
//                             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                               crossAxisCount: 4,
//                               crossAxisSpacing: 20,
//                               mainAxisSpacing: 10,
//                             ),
//                             itemCount: snapshot.data!.length,
//                             shrinkWrap: true,
//                             itemBuilder: (BuildContext ctx, index) {
//                               final item = snapshot.data![index];
//                               return InkWell(
//                                 onTap: () {
//                                   Navigator.pushNamed(context, LaporanPiketScreen.route,
//                                       arguments: item as DetailJadwalModel);
//                                 },
//                                 child: Container(
//                                   height: 50,
//                                   alignment: Alignment.center,
//                                   decoration: BoxDecoration(
//                                     color: item.status == "0" ? Colors.red : Colors.green,
//                                     borderRadius: BorderRadius.circular(5),
//                                   ),
//                                   child: Text(
//                                     item.kelas,
//                                     style: GoogleFonts.poppins(
//                                       fontSize: 12,
//                                       fontWeight: FontWeight.w600,
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                 ),
//                               );
//                             });
//                       } else if (snapshot.hasError) {
//                         return Text("Wkwkw: ${snapshot.error}");
//                       } else {
//                         return Text("Loading");
//                       }
//                     })
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
