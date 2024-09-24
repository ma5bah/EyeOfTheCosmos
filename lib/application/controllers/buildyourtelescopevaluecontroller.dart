import 'package:get/get.dart';

class Buildyourtelescopevaluecontroller extends GetxController {
  RxString myState = ''.obs;

  void updateState(String newState, int page) {
    if (myState.value.length < page) {
      myState.value += newState;
    }
    if (!myState.value.endsWith(newState) && myState.value.length == page) {
      // If the last character is newState, remove it
      myState.value =
          myState.value.substring(0, myState.value.length - newState.length);
      myState.value += newState;
    }
  }

  void updateState2(String newState) {
    myState.value += newState;
  }
}
