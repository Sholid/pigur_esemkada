import 'package:flutter/material.dart';
import 'package:flutter_app_prjct/pages/addguru.dart';
import 'package:flutter_app_prjct/pages/login/login_page.dart';
import 'package:get_storage/get_storage.dart';

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
        appBar: AppBar(
          title: Text(
            "ADMIN",
            style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
          shadowColor: Colors.black,
          elevation: 10,
        ),
        body: ListView(
          children: [
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.only(left: 24, right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(18),
                    decoration: BoxDecoration(color: Colors.orange[500]),
                    child: Center(
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(" Nama",
                                    style: TextStyle(
                                        color: Colors.black, fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                  child: Text(" NIP",
                                      style: TextStyle(
                                          color: Colors.black, fontWeight: FontWeight.bold))),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(": " + box.read('nama'),
                                    style: TextStyle(
                                        color: Colors.black, fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                  child: Text(": " + box.read('nip'),
                                      style: TextStyle(
                                          color: Colors.black, fontWeight: FontWeight.bold))),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  // list view Builder..........................................................
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 98,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 1.0,
                            ),
                            BoxShadow(
                              color: Colors.white,
                              offset: Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.fromLTRB(18, 20, 18, 20),
                        margin: const EdgeInsets.fromLTRB(12, 0, 12, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "NAMA",
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "NIP ",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 22,
                            ),
                          ],
                        ),
                      );
                    },
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.popAndPushNamed(context, Guru.route);
                          },
                          style: ElevatedButton.styleFrom(
                              shape:
                                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                          child: Text(style: TextStyle(fontWeight: FontWeight.w500), "Tambah Guru"),
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.popAndPushNamed(context, LoginPage.route);
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          )),
                          child: Text(style: TextStyle(fontWeight: FontWeight.w500), "Logout"),
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
