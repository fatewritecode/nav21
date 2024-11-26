// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:mynavigator2/page/home_screen.dart' as _i1;
import 'package:mynavigator2/page/profile_screen.dart' as _i2;

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i3.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    _i4.Key? key,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i1.HomeScreen(key: args.key);
    },
  );
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final _i4.Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.ProfileScreen]
class ProfileRoute extends _i3.PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({
    _i4.Key? key,
    required String userName,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          ProfileRoute.name,
          args: ProfileRouteArgs(
            key: key,
            userName: userName,
          ),
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProfileRouteArgs>();
      return _i2.ProfileScreen(
        key: args.key,
        userName: args.userName,
      );
    },
  );
}

class ProfileRouteArgs {
  const ProfileRouteArgs({
    this.key,
    required this.userName,
  });

  final _i4.Key? key;

  final String userName;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key, userName: $userName}';
  }
}
