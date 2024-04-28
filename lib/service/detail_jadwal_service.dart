import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_app_prjct/model/detail_jadwal_model.dart';
import 'package:flutter_app_prjct/model/jampel_model.dart';
import 'package:get_storage/get_storage.dart';

class DetailJadwalService {
  final box = GetStorage();
  final dio = Dio(BaseOptions(headers: {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
  }));
  Future<List> getDetailJadwal(String idJampel) async {
    final response = await dio.get(
        "https://pgc7n869-80.asse.devtunnels.ms/Api_pigur/user/get-detail-jadwal.php?id_jampel=$idJampel");
    if (response.statusCode == 200) {
      final result = (response.data as List<dynamic>)
          .map((e) => DetailJadwalModel.fromJson(e))
          .toList();
      return result;
    } else {
      return [];
    }
  }
}
