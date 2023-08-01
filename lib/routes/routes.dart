import 'package:crypto_list/screens/crypto_coins_list/crypto_list.dart';
import 'package:crypto_list/screens/crypto_coin/view/crypto_coin.dart';

final routes = {
  '/': (context) => const CryptoListScreen(),
  '/coin': (context) => const CryptoCoinScreen(),
};
