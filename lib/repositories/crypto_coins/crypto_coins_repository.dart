import 'package:dio/dio.dart';

import 'models/crypto_coin.dart';

class CryptoCoinsRepository {
  Future<List<CryptoCoin>> getCoinsList() async {
    final response = await Dio().get(
        'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,ETH,BNB&tsyms=RUB');

    final data = response.data as Map<String, dynamic>;
    final dataRaw = data['RAW'] as Map<String, dynamic>;
    final cryptoCoinsList = dataRaw.entries.map((e) {
      final rubData =
          (e.value as Map<String, dynamic>)['RUB'] as Map<String, dynamic>;
      final price = rubData['PRICE'];
      final imageUrl = rubData['IMAGEURL'];
      return CryptoCoin(
          name: e.key,
          priceInRUB: price,
          imageUrl: "https://www.cryptocompare.com/$imageUrl");
    }).toList();
    return cryptoCoinsList;
  }
}
