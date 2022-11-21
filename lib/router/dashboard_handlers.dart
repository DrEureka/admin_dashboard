import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';

import '../providers/auth_provider.dart';

import '../ui/views/login_view.dart';
import '../ui/views/root_dashboard_view.dart';

class DashbordHandlers {
  static Handler main = Handler(handlerFunc: (context, paramrs) {
    final authProvider = Provider.of<AuthProvider>(context!);
    if (authProvider.authStatus == AuthStatus.authenticated)
      return RootDashboardView();
    else
      return LoginView();
  });
}
