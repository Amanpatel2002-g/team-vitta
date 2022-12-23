import 'dart:convert';

import 'package:vitta/Global_widgets_and_files/commons.dart';
import 'package:http/http.dart' as http;

class ConsentService {
  Future<String> initializeTheRequest() async {
    Map<String, String> reqmp = {
      "vuaId": "$mobileNumber@dashboard-aa-uat",
      "templateType": "ONETIME",
      "trackingId": "f35761ac-4a18-11e8-96ff-0277a9fbfed",
      "redirectionUrl": "https://baseurl.com"
    };

    http.Response res = await http.post(Uri.parse('$baseUrl/init/redirection'),
        headers: {
          'API_KEY': apikey,
          'content-type': 'application/json',
          'Accept': 'application/json'
        },
        body: jsonEncode(reqmp));
    final String redirectionUrl = jsonDecode(res.body)["redirectionUrl"];
    print(redirectionUrl);
    return redirectionUrl;
  }
}
