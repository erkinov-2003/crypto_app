import '../model/crypto_model.dart';

abstract class CryptoRepository {
  Future<CryptoModel?>? getCryptoData();
}
