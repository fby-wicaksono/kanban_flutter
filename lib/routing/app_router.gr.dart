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
import '../page/task_edit_page.dart' as _i2;

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
    TaskEditRoute.name: (routeData) {
      final args = routeData.argsAs<TaskEditRouteArgs>(
          orElse: () => const TaskEditRouteArgs());
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.TaskEditPage(
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
          TaskEditRoute.name,
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
/// [_i2.TaskEditPage]
class TaskEditRoute extends _i3.PageRouteInfo<TaskEditRouteArgs> {
  TaskEditRoute({
    _i4.Key? key,
    _i5.Task? task,
  }) : super(
          TaskEditRoute.name,
          path: '/addTaskPage',
          args: TaskEditRouteArgs(
            key: key,
            task: task,
          ),
        );

  static const String name = 'TaskEditRoute';
}

class TaskEditRouteArgs {
  const TaskEditRouteArgs({
    this.key,
    this.task,
  });

  final _i4.Key? key;

  final _i5.Task? task;

  @override
  String toString() {
    return 'TaskEditRouteArgs{key: $key, task: $task}';
  }
}
