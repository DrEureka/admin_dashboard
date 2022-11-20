import 'package:admin_dashboard/router/admin_handlers.dart';
import 'package:admin_dashboard/router/router.dart';
import 'package:fluro/fluro.dart';

class Flurorauter {
  static final FluroRouter router = FluroRouter();
  //pagina inicial
  static String rootRoute = '/';

  //Auth Routes de fluro
  static String loginRoute = '/auth/login';
  static String registerRoute = '/auth/register';

  //Dashboard Routes de fluro
  static String dashboardRoute = '/dashboard';

  static void configureRoutes() {
    //Auth Routes
    router.define(loginRoute, handler: AdminHandlers.login);
    router.define(rootRoute, handler: AdminHandlers.login);
    //Faltan hacer las rutas view
    //router.define(registerRoute, handler: registerHandler);
  }
}
