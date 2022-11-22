import 'package:admin_dashboard/providers/side_menu_provider.dart';
import 'package:admin_dashboard/router/router.dart';
import 'package:admin_dashboard/ui/views/dise_view.dart';
import 'package:admin_dashboard/ui/views/solicitud_view.dart';
import 'package:fluro/fluro.dart';
import 'package:provider/provider.dart';

import '../providers/auth_provider.dart';

import '../ui/views/login_view.dart';
import '../ui/views/root_dashboard_view.dart';
import '../ui/views/pedidos_view.dart';

class DashbordHandlers {
  static Handler main = Handler(handlerFunc: (context, paramrs) {
    final authProvider = Provider.of<AuthProvider>(context!);

    Provider.of<SideMenuProvider>(context, listen: false)
        .setCurrentPageUrl(Flurorouter.dashboardRoute);
    if (authProvider.authStatus == AuthStatus.authenticated) {
      return const RootDashboardView();
    } else {
      return const LoginView();
    }
  });

  static Handler design = Handler(handlerFunc: (context, paramrs) {
    final authProvider = Provider.of<AuthProvider>(context!);
    Provider.of<SideMenuProvider>(context, listen: false)
        .setCurrentPageUrl(Flurorouter.designRoute);

    if (authProvider.authStatus == AuthStatus.authenticated) {
      return const DiseView();
    } else {
      return const LoginView();
    }
  });

  static Handler pedidos = Handler(handlerFunc: (context, paramrs) {
    final authProvider = Provider.of<AuthProvider>(context!);
    Provider.of<SideMenuProvider>(context, listen: false)
        .setCurrentPageUrl(Flurorouter.pedidosRoute);
    if (authProvider.authStatus == AuthStatus.authenticated) {
      return const PedidosView();
    } else {
      return const LoginView();
    }
  });
  static Handler solicitud = Handler(handlerFunc: (context, paramrs) {
    final authProvider = Provider.of<AuthProvider>(context!);
    Provider.of<SideMenuProvider>(context, listen: false)
        .setCurrentPageUrl(Flurorouter.solicitudesRoute);
    if (authProvider.authStatus == AuthStatus.authenticated) {
      return const SolicitudView();
    } else {
      return const LoginView();
    }
  });
}
