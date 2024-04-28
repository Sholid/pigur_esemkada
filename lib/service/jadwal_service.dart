import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_app_prjct/model/jadwal_model.dart';
import 'package:get_storage/get_storage.dart';

class JadwalService {
  final box = GetStorage();
  final dio = Dio(BaseOptions(headers: {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
  }));
  Future<List> getListJadwal() async {
    final response = await dio.get(
        "https://pgc7n869-80.asse.devtunnels.ms/Api_pigur/user/get-piket.php?id_user=${box.read('id')}");
    if (response.statusCode == 200) {
      final result = (response.data as List<dynamic>)
          .map((e) => JadwalModel.fromJson(e))
          .toList();
      return result;
    } else {
      return [];
    }
  }
}
