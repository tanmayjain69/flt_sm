import 'package:fltsm/screens/Queries/Model/query_post.dart';
import 'package:fltsm/services/query.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';


class QueryController extends GetxController{
  var querydetails = List<QueryPost>().obs;

  @override
  void onInit(){
    super.onInit();
    fetchDetails();
  }

  void fetchDetails() async {
    // WidgetsFlutterBinding.ensureInitialized();
    // SharedPreferences preferences = await SharedPreferences.getInstance();
    // var name = preferences.getString('name');

    QueryService().getQueryDetail().then((val) async {
      await Future.delayed(Duration(seconds: 1));
      print(val.data['msg']);
      
      final jsonResponse = val.data['msg'];
      QueryPost querypost = new QueryPost.fromJson(jsonResponse);
      print("ittttttttttttt");
      print(querypost);
      querydetails.value = [querypost];
      // print(profiledetails[0].fname);
    });
  }

}