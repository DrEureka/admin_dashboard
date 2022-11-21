import 'package:admin_dashboard/providers/auth_provider.dart';

import 'package:admin_dashboard/ui/views/login_view.dart';
import 'package:admin_dashboard/ui/views/register_view.dart';
import 'package:admin_dashboard/ui/views/root_dashboard_view.dart';
import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';

class AdminHandlers {
  static Handler login = Handler(handlerFunc: (context, paramrs) {
    final authProvider = Provider.of<AuthProvider>(context!);
    if (authProvider.authStatus == AuthStatus.notAuthenticated) {
      return LoginView();
    } else {
      return RootDashboardView();
    }
  });

  static Handler register = Handler(handlerFunc: (context, paramrs) {
    final authProvider = Provider.of<AuthProvider>(context!);
    if (authProvider.authStatus == AuthStatus.notAuthenticated) {
      return RegisterView();
    } else {
      return RootDashboardView();
    }
  });
}
