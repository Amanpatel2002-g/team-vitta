
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;
import 'package:vitta/models/requests/initiate_request.dart';

String baseUrl = "https://hackathon.pirimidtech.com/hackathon";

class ApiServices {
  // To InitialRequest the request of Data Fetch & get AA Redirection URL

  final String API_KEY = "8c9afe0e708b63c6625d188188";
  Future<void> initialRequestTheRequest(InitialRequest initialRequest) async {
    http.Response res = await http.post(Uri.parse('$baseUrl/init/redirection'),
        headers: {
          'API_KEY': API_KEY,
          'content-type': 'application/json',
          'Accept': 'application/json'
        },
        body: initialRequest.toJson());
    print(res.body);
  }
}

void main(List<String> args) {
  ApiServices apiServices = ApiServices();
  String trackingId = "f35761ac-4a18-11e8-96ff-0277a9fbfed";
  String referenceId = "0bf2c9e6-2f54-4f46-8142-115cf9661538";
  final InitialRequest initialRequest = InitialRequest(
      vuaId: "9987600001@dashboard-aa-uat",
      templateType: "ONETIME",
      trackingId: trackingId,
      redirectionUrl: baseUrl);
  apiServices.initialRequestTheRequest(initialRequest);
}
