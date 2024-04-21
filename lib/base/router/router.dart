import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo/app.dart';
import 'package:todo/features/profile/profile_view.dart';
import 'package:todo/features/tasks/add_task/add_task_view.dart';
import 'package:todo/features/tasks/models/todo.dart';
import 'package:todo/features/tasks/task_list/tasks_list_view.dart';

final GoRouter router = GoRouter(
  initialLocation: '/tasks',
  routes: <RouteBase>[
    ShellRoute(
      builder: (context, state, child) {
        return Navigation(childScreen: child);
      },
      routes: <RouteBase>[
        GoRoute(
          path: '/tasks',
          builder: (BuildContext context, GoRouterState state) {
            return TasksListView();
          },
          routes: [
            GoRoute(
              path: 'addTask',
              builder: (BuildContext context, GoRouterState state) {
                return AddTaskView();
              },
            ),
            GoRoute(
              name: 'updateTask',
              path: 'updateTask/:todoId',
              builder: (BuildContext context, GoRouterState state) {
                var todoId = state.pathParameters["todoId"]!;
                return AddTaskView(todoId: todoId);
              },
            ),
          ],
        ),
        GoRoute(
          path: '/profile',
          builder: (BuildContext context, GoRouterState state) {
            return ProfileView();
          },
        ),
      ],
    ),
  ],
);
