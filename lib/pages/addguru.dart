import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_prjct/pages/admin/home_admin.dart';
import 'package:flutter_app_prjct/service/user_service.dart';

// Class Guru/user
class Guru extends StatefulWidget {
  static const route = "/Guru";
  const Guru({super.key});

  @override
  State<Guru> createState() => _GuruState();
}

//extend properti dari state widget dari class guru
class _GuruState extends State<Guru> {
  TextEditingController namaController = TextEditingController();
  TextEditingController nipController = TextEditingController();
  TextEditingController jklmController = TextEditingController();
  TextEditingController mapelController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController teleponController = TextEditingController();
  //variabel formkey
  final formKey = GlobalKey<FormState>();

  //Opsi value Jenis kelamin
  final List<String> genderItems = [
    'Laki-laki',
    'Perempuan',
  ];
  int _value = 1;
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DATA GURU'),
      ),
      //for the form to be in center
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            shrinkWrap: true,
            children: [
              const Text('Nama'),
              TextField(
                controller: namaController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Masukan mama lengkap',
                ),
              ),
              //some space Nama And NIP
              const SizedBox(
                height: 10,
              ),
              const Text('NIP'),
              TextField(
                controller: nipController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Masukan nip',
                ),
              ),
              //some space Nip and JKLM
              const SizedBox(
                height: 5,
              ),
              const Text('Jenis Kelamin'),
              DropdownButtonFormField2<String>(
                isExpanded: true,
                decoration: InputDecoration(
                  // Add Horizontal padding using menuItemStyleData.padding so it matches
                  // the menu padding when button's width is not specified.
                  contentPadding: const EdgeInsets.symmetric(vertical: 16),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  // Add more decoration..
                ),
                hint: const Text(
                  'Select Your Gender',
                  style: TextStyle(fontSize: 14),
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
                  selectedValue = value.toString();
                  //Do something when selected item is changed.
                },
                onSaved: (value) {
                  selectedValue = value.toString();
                },
                buttonStyleData: const ButtonStyleData(
                  padding: EdgeInsets.only(right: 8),
                ),
                iconStyleData: const IconStyleData(
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black45,
                  ),
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
              // input teks data mapel
              const SizedBox(
                height: 10,
              ),
              const Text('Mata pelajaran'),
              TextField(
                controller: mapelController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Masukan matapelajaran',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Telepon'),
              TextField(
                controller: teleponController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Telepon',
                ),
              ),

              //Username
              const SizedBox(
                height: 10,
              ),
              const Text('Username'),

              TextField(
                controller: usernameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Masukan username',
                ),
              ),

              // Password
              const SizedBox(
                height: 10,
              ),
              const Text('Password'),

              TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Masukan password',
                ),
              ),
              SizedBox(
                height: 15,
              ),
              const Text('Status'),
              Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'Admin',
                    ),
                    leading: Radio(
                      value: 1,
                      groupValue: _value,
                      activeColor: Color(0xFF6200EE),
                      onChanged: (value) {
                        setState(() {
                          _value = value as int;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Guru',
                    ),
                    leading: Radio(
                      value: 0,
                      groupValue: _value,
                      activeColor: Color(0xFF6200EE),
                      onChanged: (value) {
                        setState(() {
                          _value = value as int;
                        });
                      },
                    ),
                  ),
                ],
              ),
              //create button for Simpan data
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () async {
                        bool res = await insertUser(
                          namaController.text,
                          nipController.text,
                          selectedValue.toString(),
                          mapelController.text,
                          usernameController.text,
                          passwordController.text,
                          _value.toString(),
                          teleponController.text,
                        );
                        Navigator.popAndPushNamed(context, Guru.route);
                      },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                      child: Text(style: TextStyle(fontWeight: FontWeight.w500), "Simpan"),
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () async {
                        Navigator.popAndPushNamed(context, Admin.route);
                      },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                      child: Text(style: TextStyle(fontWeight: FontWeight.w500), "Selesai"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
