import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';

import '/index.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) => const LoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => const LoginWidget(),
        ),
        FFRoute(
          name: 'capa_fotos',
          path: '/capaFotos',
          builder: (context, params) => const CapaFotosWidget(),
        ),
        FFRoute(
          name: 'capa_fotosCopy',
          path: '/capaFotosCopy',
          builder: (context, params) => const CapaFotosCopyWidget(),
        ),
        FFRoute(
          name: 'menu',
          path: '/menu',
          builder: (context, params) => const MenuWidget(),
        ),
        FFRoute(
          name: 'solo',
          path: '/solo',
          builder: (context, params) => const SoloWidget(),
        ),
        FFRoute(
          name: 'CargarRadiografia',
          path: '/cargarRadiografia',
          builder: (context, params) => const CargarRadiografiaWidget(),
        ),
        FFRoute(
          name: 'Mapa',
          path: '/mapa',
          builder: (context, params) => const MapaWidget(),
        ),
        FFRoute(
          name: 'clicckmapa',
          path: '/clicckmapa',
          builder: (context, params) => const ClicckmapaWidget(),
        ),
        FFRoute(
          name: 'BannerFotos',
          path: '/bannerFotos',
          builder: (context, params) => const BannerFotosWidget(),
        ),
        FFRoute(
          name: 'Details05Event',
          path: '/details05Event',
          builder: (context, params) => const Details05EventWidget(),
        ),
        FFRoute(
          name: 'mapaLeaflet',
          path: '/mapaLeaflet',
          builder: (context, params) => const MapaLeafletWidget(),
        ),
        FFRoute(
          name: 'leaflev2',
          path: '/leaflev2',
          builder: (context, params) => const Leaflev2Widget(),
        ),
        FFRoute(
          name: 'mapaEstudio',
          path: '/mapaEstudio',
          builder: (context, params) => const MapaEstudioWidget(),
        ),
        FFRoute(
          name: 'Dashboard6',
          path: '/dashboard6',
          builder: (context, params) => const Dashboard6Widget(),
        ),
        FFRoute(
          name: 'webview',
          path: '/webview',
          builder: (context, params) => const WebviewWidget(),
        ),
        FFRoute(
          name: 'VerHistoriaClinica',
          path: '/verHistoriaClinica',
          builder: (context, params) => VerHistoriaClinicaWidget(
            nombre: params.getParam(
              'nombre',
              ParamType.String,
            ),
            celular: params.getParam(
              'celular',
              ParamType.String,
            ),
            identificacion: params.getParam(
              'identificacion',
              ParamType.String,
            ),
            observacion: params.getParam(
              'observacion',
              ParamType.String,
            ),
            foto: params.getParam(
              'foto',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'VerRadiografia',
          path: '/verRadiografia',
          builder: (context, params) => VerRadiografiaWidget(
            foto: params.getParam(
              'foto',
              ParamType.String,
            ),
            nombre: params.getParam(
              'nombre',
              ParamType.String,
            ),
            cel: params.getParam(
              'cel',
              ParamType.String,
            ),
            identificaion: params.getParam(
              'identificaion',
              ParamType.String,
            ),
            observacion: params.getParam(
              'observacion',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'ConfirmarDiagnostico',
          path: '/confirmarDiagnostico',
          builder: (context, params) => ConfirmarDiagnosticoWidget(
            usuarioId: params.getParam(
              'usuarioId',
              ParamType.String,
            ),
            usuarioNombre: params.getParam(
              'usuarioNombre',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'Login',
          path: '/login',
          builder: (context, params) => const LoginWidget(),
        ),
        FFRoute(
          name: 'MenuHospital',
          path: '/menuHospital',
          builder: (context, params) => MenuHospitalWidget(
            login: params.getParam(
              'login',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'HistorialDiagnostico',
          path: '/historialDiagnostico',
          builder: (context, params) => HistorialDiagnosticoWidget(
            usuarioId: params.getParam(
              'usuarioId',
              ParamType.String,
            ),
            usuarioNombre: params.getParam(
              'usuarioNombre',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'AgendarCita',
          path: '/agendarCita',
          builder: (context, params) => AgendarCitaWidget(
            usuarioId: params.getParam(
              'usuarioId',
              ParamType.String,
            ),
            usuarioNombre: params.getParam(
              'usuarioNombre',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'HistorialClinicoPage',
          path: '/historialClinicoPage',
          builder: (context, params) => HistorialClinicoPageWidget(
            usuarioId: params.getParam(
              'usuarioId',
              ParamType.String,
            ),
            usuarioNombre: params.getParam(
              'usuarioNombre',
              ParamType.String,
            ),
            diagnostico: params.getParam(
              'diagnostico',
              ParamType.String,
            ),
          ),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
