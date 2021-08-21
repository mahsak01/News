import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class ProviderControl with ChangeNotifier{
  var width=1.0;
  ScrollController scrollController= new ScrollController();
  ProviderControl(){
    scrollController.addListener(_scrollController);
    notifyListeners();
  }

  void _scrollController() {
    if (scrollController.offset> scrollController.position.minScrollExtent)
      width=0.75;
    else
      width=1;
    notifyListeners();
  }
}
