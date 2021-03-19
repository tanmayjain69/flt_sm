import 'dart:convert';
import 'package:fltsm/Models/query_post.dart';
import 'package:fltsm/services/query.dart';
import 'package:get/get.dart';


class QueryController extends GetxController{
  var querydetails = List<dynamic>().obs;

  @override
  void onInit(){
    print("Iam queryoninit");
    fetchDetails();
    super.onInit();
    
  }

  void fetchDetails() async {
    // WidgetsFlutterBinding.ensureInitialized();
    // SharedPreferences preferences = await SharedPreferences.getInstance();
    // var name = preferences.getString('name');

    QueryService().getQueryDetail().then((val) async {
      await Future.delayed(Duration(seconds: 1));
      // print(val.data['msg']);
      
      var jsonResponse = val.data['msg'];
      querydetails.value = jsonResponse.map((v) => QueryPost.fromJson(v)).toList();
      print(querydetails);
      
    });
  
  }
  void addQuery(data) async {
      var dat =json.encode(data);
      QueryService().addQuery(dat).then((val) async {
                        print(val.data);
    });
    fetchDetails();
  }

}