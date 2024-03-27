import 'package:crypto_app/src/core/constants/base_url.dart';
import 'package:dio/dio.dart';

import '../data/model/crypto_model.dart';

class AppService {
  Future<CryptoModel?>? getCryptoData() async {
    final response = await Dio().get(
      options: Options(
        headers: {
          "Content-Type": "application/json",
          "Accept": "application/json",
        },
      ),
      queryParameters: {
        "vs_currency": "usd",
        "sparkline": "true",
      },
      AppBaseUrl.baseUrl,
    );
    if (response.statusCode == 200 || response.statusCode == 201) {
      return CryptoModel.fromJson(response.data ?? {});
    } else {
      return null;
    }
  }
}
