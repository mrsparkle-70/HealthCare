import '../controller/articles_controller.dart';
import 'package:get/get.dart';

class ArticlesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ArticlesController());
  }
}
