import 'package:auto_route/annotations.dart';
import 'package:kanban_flutter_sample/page/task_detail_page.dart';
import 'package:kanban_flutter_sample/page/home_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: HomePage,
      path: '/home',
      initial: true,
    ),
    AutoRoute(
      page: TaskDetailPage,
      path: '/addTaskPage',
    ),
  ],
)
class $AppRouter {}