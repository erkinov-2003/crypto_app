import 'package:crypto_app/src/data/model/crypto_model.dart';
import 'package:crypto_app/src/data/repository/crypto_repository.dart';
import 'package:crypto_app/src/service/api_service.dart';

class CryptoRepositoryImpl implements CryptoRepository {
  @override
  Future<CryptoModel?>? getCryptoData() {
    return AppService().getCryptoData();
  }
}
