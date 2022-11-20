import 'package:admin_dashboard/ui/views/login_view.dart';
import 'package:admin_dashboard/ui/views/no_page_found_view.dart';
import 'package:fluro/fluro.dart';

class NoPageFoundHandlers {
  static Handler noPageFound = Handler(handlerFunc: (context, paramrs) {
    return NoPageFoundView();
  });
}
