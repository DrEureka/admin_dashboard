import 'package:admin_dashboard/router/admin_handlers.dart';
import 'package:admin_dashboard/router/dashboard_handlers.dart';
import 'package:admin_dashboard/router/no_page_found_handlers.dart';

import 'package:fluro/fluro.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();
  //pagina inicial
  static String rootRoute = '/';

  //Auth Routes de fluro
  static String loginRoute = '/auth/login';
  static String registerRoute = '/auth/register';

  //Dashboard Routes de fluro
  static String dashboardRoute = '/dashboard';
  static String designRoute = '/dashboard/design';
  static String pedidosRoute = '/dashboard/pedidos';
  static String solicitudesRoute = '/dashboard/solicitud';

  static void configureRoutes() {
    //Auth Routes
    router.define(loginRoute,
        handler: AdminHandlers.login, transitionType: TransitionType.none);
    router.define(rootRoute,
        handler: AdminHandlers.login, transitionType: TransitionType.none);
    //Faltan hacer las rutas view
    router.define(registerRoute,
        handler: AdminHandlers.register, transitionType: TransitionType.none);

    //Dashboard Routes
    router.define(dashboardRoute,
        handler: DashbordHandlers.main, transitionType: TransitionType.fadeIn);
    router.define(designRoute,
        handler: DashbordHandlers.design,
        transitionType: TransitionType.fadeIn);
    router.define(pedidosRoute,
        handler: DashbordHandlers.pedidos,
        transitionType: TransitionType.fadeIn);
    router.define(solicitudesRoute,
        handler: DashbordHandlers.solicitud,
        transitionType: TransitionType.fadeIn);

    //404
    router.notFoundHandler = NoPageFoundHandlers.noPageFound;
  }
}
