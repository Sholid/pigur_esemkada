import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_app_prjct/model/jampel_model.dart';
import 'package:get_storage/get_storage.dart';

class JampelService {
  final box = GetStorage();
  final dio = Dio(BaseOptions(headers: {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
  }));
  Future<List> getJampel(String idJadwal) async {
    final response = await dio.get(
        "https://pgc7n869-80.asse.devtunnels.ms/Api_pigur/user/get-jampel.php?id_jadwal=$idJadwal");
    log(response.statusCode.toString());
    if (response.statusCode == 200) {
      final result = (response.data as List<dynamic>)
          .map((e) => JampelModel.fromJson(e))
          .toList();
      return result;
    } else {
      return [];
    }
  }
}
