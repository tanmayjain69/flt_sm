import 'dart:convert';
import 'package:fltsm/Models/query_post.dart';
import 'package:fltsm/services/query.dart';
import 'package:get/get.dart';


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
      // print(val.data['msg']);
      
      var jsonResponse = val.data['msg'];
      for(int i=0;i<jsonResponse.length;i++){
      QueryPost querypost =  QueryPost.fromJson(jsonResponse[i]);
      querydetails.add(querypost);
      }
      // print(querydetails);
      // print(querypost);
      // querydetails.value = l;
      // print(querydetails[0].details);
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