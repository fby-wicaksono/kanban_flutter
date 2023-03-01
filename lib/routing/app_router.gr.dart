// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../data/drift_client.dart' as _i5;
import '../page/home_page.dart' as _i1;
import '../page/task_detail_page.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    TaskDetailRoute.name: (routeData) {
      final args = routeData.argsAs<TaskDetailRouteArgs>(
          orElse: () => const TaskDetailRouteArgs());
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.TaskDetailPage(
          key: args.key,
          task: args.task,
        ),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/home',
          fullMatch: true,
        ),
        _i3.RouteConfig(
          HomeRoute.name,
          path: '/home',
        ),
        _i3.RouteConfig(
          TaskDetailRoute.name,
          path: '/addTaskPage',
        ),
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/home',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.TaskDetailPage]
class TaskDetailRoute extends _i3.PageRouteInfo<TaskDetailRouteArgs> {
  TaskDetailRoute({
    _i4.Key? key,
    _i5.Task? task,
  }) : super(
          TaskDetailRoute.name,
          path: '/addTaskPage',
          args: TaskDetailRouteArgs(
            key: key,
            task: task,
          ),
        );

  static const String name = 'TaskDetailRoute';
}

class TaskDetailRouteArgs {
  const TaskDetailRouteArgs({
    this.key,
    this.task,
  });

  final _i4.Key? key;

  final _i5.Task? task;

  @override
  String toString() {
    return 'TaskDetailRouteArgs{key: $key, task: $task}';
  }
}
