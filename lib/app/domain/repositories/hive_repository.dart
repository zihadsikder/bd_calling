import '../../data/models/network_response.dart';
import '../../services/api_clients.dart';
import '../../services/api_endpoints.dart';

class HiveRepository {
  static Future<NetworkResponse> getPost() async {
    final NetworkResponse response =
    await ApiClient().getRequest(ApiEndPoints.postApiHive,);
    return response;
  }
}