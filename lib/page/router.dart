import 'package:auto_route/auto_route.dart';
import 'package:mynavigator2/page/router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')

class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType =>
      const RouteType.material(); //.cupertino, .adaptive ..etc

  @override
  List<AutoRoute> get routes => [
        // устанавливаем стартовую сраницу
        AutoRoute(page: HomeRoute.page,initial: true),
        AutoRoute(page: ProfileRoute.page),
      ];

}
