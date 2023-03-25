import 'package:healthcare/core/app_export.dart';
import 'package:healthcare/presentation/message_history_page/models/message_history_model.dart';

class MessageHistoryController extends GetxController {
  MessageHistoryController(this.messageHistoryModelObj);

  Rx<MessageHistoryModel> messageHistoryModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
