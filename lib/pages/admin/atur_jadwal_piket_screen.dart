import 'dart:ui';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class AturJadwalPiketScreen extends StatefulWidget {
  static const String route = '/atur-jadwal-piket-screen';
  const AturJadwalPiketScreen({super.key});

  @override
  State<AturJadwalPiketScreen> createState() => _AturJadwalPiketScreenState();
}

class _AturJadwalPiketScreenState extends State<AturJadwalPiketScreen> {
  final List<String> genderItems = [
    'Laki-laki',
    'Perempuan',
  ];
  String? selectedValue;

  DateTime? selectedDate1;
  TextEditingController cTanggal1 = TextEditingController();
  DateTime? selectedDate2;
  TextEditingController cTanggal2 = TextEditingController();
  DateTime? selectedDate3;
  TextEditingController cTanggal3 = TextEditingController();
  DateTime? selectedDate4;
  TextEditingController cTanggal4 = TextEditingController();
  DateTime? selectedDate5;
  TextEditingController cTanggal5 = TextEditingController();

  Future<void> _selectDate1(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() {
        cTanggal1.text = picked.toString();
        selectedDate1 = picked;
      });
    }
  }

  Future<void> _selectDate2(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() {
        cTanggal2.text = picked.toString();
        selectedDate2 = picked;
      });
    }
  }

  Future<void> _selectDate3(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() {
        cTanggal3.text = picked.toString();
        selectedDate3 = picked;
      });
    }
  }

  Future<void> _selectDate4(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() {
        cTanggal4.text = picked.toString();
        selectedDate4 = picked;
      });
    }
  }

  Future<void> _selectDate5(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() {
        selectedDate5 = picked;
        cTanggal5.text = selectedDate5.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 24,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
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
                        "Atur Jadwal Piket",
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
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Bulan : ${DateFormat('MMMM yyyy').format(DateTime.now())}",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "Tanggal Piket 1",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: const Color(
                      0xFF040F0F,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: cTanggal1,
                  readOnly: true,
                  decoration: InputDecoration(
                    suffixIcon: InkWell(
                        onTap: () => _selectDate1(context),
                        child:
                            const Icon(Icons.date_range, color: Colors.black)),
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Tanggal Piket 2",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: const Color(
                      0xFF040F0F,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: cTanggal2,
                  readOnly: true,
                  decoration: InputDecoration(
                    suffixIcon: InkWell(
                        onTap: () => _selectDate2(context),
                        child: Icon(Icons.date_range, color: Colors.black)),
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Tanggal Piket 3",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: const Color(
                      0xFF040F0F,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  readOnly: true,
                  controller: cTanggal3,
                  decoration: InputDecoration(
                    suffixIcon: InkWell(
                        onTap: () => _selectDate3(context),
                        child: Icon(Icons.date_range, color: Colors.black)),
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Tanggal Piket 4",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: const Color(
                      0xFF040F0F,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: cTanggal4,
                  readOnly: true,
                  decoration: InputDecoration(
                    suffixIcon: InkWell(
                        onTap: () => _selectDate4(context),
                        child:
                            const Icon(Icons.date_range, color: Colors.black)),
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Tanggal Piket 5",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: const Color(
                      0xFF040F0F,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: cTanggal5,
                  readOnly: true,
                  decoration: InputDecoration(
                    suffixIcon: InkWell(
                        onTap: () => _selectDate5(context),
                        child:
                            const Icon(Icons.date_range, color: Colors.black)),
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Guru piket",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: const Color(
                      0xFF040F0F,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                DropdownButtonFormField2<String>(
                  isExpanded: true,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  hint: Text(
                    '--Pilihan Kelas--',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF040F0F),
                    ),
                  ),
                  items: genderItems
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ))
                      .toList(),
                  validator: (value) {
                    if (value == null) {
                      return 'Please select gender.';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    //Do something when selected item is changed.
                  },
                  onSaved: (value) {
                    selectedValue = value.toString();
                  },
                  buttonStyleData: const ButtonStyleData(
                    padding: EdgeInsets.only(right: 8),
                  ),
                  iconStyleData: const IconStyleData(
                    icon: Icon(Icons.keyboard_arrow_down_rounded),
                    iconSize: 24,
                  ),
                  dropdownStyleData: DropdownStyleData(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  menuItemStyleData: const MenuItemStyleData(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Koordinator Guru Piket",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: const Color(
                      0xFF040F0F,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                DropdownButtonFormField2<String>(
                  isExpanded: true,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  hint: Text(
                    '--Pilihan Kelas--',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF040F0F),
                    ),
                  ),
                  items: genderItems
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ))
                      .toList(),
                  validator: (value) {
                    if (value == null) {
                      return 'Please select gender.';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    //Do something when selected item is changed.
                  },
                  onSaved: (value) {
                    selectedValue = value.toString();
                  },
                  buttonStyleData: const ButtonStyleData(
                    padding: EdgeInsets.only(right: 8),
                  ),
                  iconStyleData: const IconStyleData(
                    icon: Icon(Icons.keyboard_arrow_down_rounded),
                    iconSize: 24,
                  ),
                  dropdownStyleData: DropdownStyleData(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  menuItemStyleData: const MenuItemStyleData(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF8B9DFE),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Simpan",
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
