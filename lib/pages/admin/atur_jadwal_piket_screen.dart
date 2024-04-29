import 'dart:ui';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_prjct/service/guru_service.dart';
import 'package:flutter_app_prjct/service/jadwal_service.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:multi_dropdown/models/chip_config.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';

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
  String? guruKoordDipilih;

  List<String> guruKoord = [];
  List<ValueItem<String>> dataGuruDipilih = [];
  List<String> guruKoordId = [];

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
                FutureBuilder(
                    future: GuruService().getGuru(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return MultiSelectDropDown<String>(
                          dropdownBackgroundColor: Colors.white,
                          searchEnabled: true,
                          dropdownBorderRadius: 12,
                          searchLabel: "Cari",
                          borderColor: const Color(0xFFCCCCCC),
                          borderWidth: 1.5,
                          borderRadius: 12,
                          alwaysShowOptionIcon: false,
                          hintFontSize: 12,
                          hintColor: const Color(0xFFCCCCCC),
                          animateSuffixIcon: false,
                          hintPadding:
                              const EdgeInsets.symmetric(horizontal: 10),
                          hint: "Daftar siswa yang sakit",
                          hintStyle: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFFCCCCCC),
                          ),
                          onOptionSelected:
                              (List<ValueItem<String>> selectedOptions) {
                            guruKoord.clear();
                            guruKoordId.clear();
                            dataGuruDipilih.clear();
                            setState(() {
                              selectedOptions.forEach((e) {
                                guruKoord.add(e.label.toString());
                              });
                              selectedOptions.forEach((e) {
                                guruKoordId.add(e.value.toString());
                              });
                              selectedOptions.forEach((e) {
                                dataGuruDipilih.add(e);
                              });
                            });
                          },
                          options: snapshot.data!
                              .map((e) =>
                                  ValueItem<String>(label: e.nama, value: e.id))
                              .toList(),
                          selectionType: SelectionType.multi,
                          chipConfig: const ChipConfig(
                            deleteIconColor: Colors.white,
                            labelColor: Colors.white,
                            padding: EdgeInsets.all(6),
                            radius: 8,
                            labelStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                            deleteIcon: Icon(
                              Icons.close,
                              color: Colors.white,
                              size: 14,
                            ),
                            wrapType: WrapType.wrap,
                            backgroundColor: Colors.red,
                          ),
                          searchBackgroundColor: Colors.white,
                          dropdownHeight: 300,
                          optionTextStyle: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Colors.black,
                          ),
                          selectedOptionIcon: const Icon(Icons.check_circle),
                        );
                      } else if (snapshot.hasError) {
                        return Text("Error: ${snapshot.error}");
                      } else {
                        return Text("Loading");
                      }
                    }),
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
                    '--Pilihan Koordinator--',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF040F0F),
                    ),
                  ),
                  items: guruKoord
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
                    setState(() {
                      guruKoordDipilih = value;
                    });
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
                  onPressed: () async {
                    print("Di tekan");
                    List<Map<String, dynamic>> dataGuru = [];
                    for (var element in dataGuruDipilih) {
                      dataGuru.add({
                        "user_id": int.parse(element.value.toString()),
                        "is_koord": int.parse(
                            (guruKoordDipilih == element.label) ? "1" : "0"),
                      });
                    }
                    await JadwalService().insert(
                        (selectedDate1 != null)
                            ? DateFormat('d-MM-y')
                                .format(selectedDate1 as DateTime)
                            : null,
                        (selectedDate2 != null)
                            ? DateFormat('d-MM-y')
                                .format(selectedDate2 as DateTime)
                            : null,
                        (selectedDate3 != null)
                            ? DateFormat('d-MM-y')
                                .format(selectedDate3 as DateTime)
                            : null,
                        (selectedDate4 != null)
                            ? DateFormat('d-MM-y')
                                .format(selectedDate4 as DateTime)
                            : null,
                        (selectedDate5 != null)
                            ? DateFormat('d-MM-y')
                                .format(selectedDate5 as DateTime)
                            : null,
                        dataGuru);
                    Navigator.pop(context);
                  },
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
