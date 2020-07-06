import 'networking.dart';
import 'api_key.dart';

const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate/BTC/';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  Future<String> getCoinData(String selectedCurrency) async {
    NetworkHelper networkHelper =
        NetworkHelper('$coinAPIURL$selectedCurrency?apikey=$apiKey');

    var data = await networkHelper.getData();
    print('returned JSON: $data');
    return data['rate'].round().toString();
  }
}
