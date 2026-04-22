import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_fl_hibryd/core/route/go_router_provider.dart';

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final goRouter = ref.watch(appRouterProvider);
    return MaterialApp.router(routerConfig: goRouter);
  }
}
