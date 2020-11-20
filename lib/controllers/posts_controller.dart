import 'package:fltsm/Models/posts_model.dart';
import 'package:fltsm/services/posts.dart';
import 'package:get/get.dart';

class PostController extends GetxController{
  var postDetails = List<Post>().obs;

  @override
  void onInit(){
    super.onInit();
    fetchDetails();
  }

  void fetchDetails() async {
    // WidgetsFlutterBinding.ensureInitialized();
    // SharedPreferences preferences = await SharedPreferences.getInstance();
    // var name = preferences.getString('name');

    PostService().getAllPosts().then((val) async {
      await Future.delayed(Duration(seconds: 1));
      // print(val.data['msg']);
      
      var jsonResponse = val.data['msg'];
      for(int i=0;i<jsonResponse.length;i++){
      Post post =  Post.fromJson(jsonResponse[i]);
      postDetails.add(post);
      }
      // print(querydetails);
      // print(querypost);
      // querydetails.value = l;
      // print(querydetails[0].details);
    });
  }

}