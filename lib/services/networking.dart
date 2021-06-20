import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper{
  NetworkHelper(this.urlStr);
  final String urlStr;

  Future getData() async{
    // url = Uri.parse('https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey');
    var url = Uri.parse(urlStr);
    http.Response response = await http.get(url);
    String result;
    if (response.statusCode == 200) {
      result = response.body;

      var decodedData = jsonDecode(result);
      return decodedData;

    } else {
      print(response.statusCode);
    }
  }
}