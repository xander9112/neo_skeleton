// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

/// generated route for
/// [AuthPage]
class AuthRoute extends PageRouteInfo<void> {
  const AuthRoute({List<PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AuthPage();
    },
  );
}

/// generated route for
/// [BlockPage]
class BlockRoute extends PageRouteInfo<BlockRouteArgs> {
  BlockRoute({
    Key? key,
    void Function(bool)? onResult,
    List<PageRouteInfo>? children,
  }) : super(
          BlockRoute.name,
          args: BlockRouteArgs(
            key: key,
            onResult: onResult,
          ),
          initialChildren: children,
        );

  static const String name = 'BlockRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<BlockRouteArgs>(orElse: () => const BlockRouteArgs());
      return BlockPage(
        key: args.key,
        onResult: args.onResult,
      );
    },
  );
}

class BlockRouteArgs {
  const BlockRouteArgs({
    this.key,
    this.onResult,
  });

  final Key? key;

  final void Function(bool)? onResult;

  @override
  String toString() {
    return 'BlockRouteArgs{key: $key, onResult: $onResult}';
  }
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    Key? key,
    void Function(bool)? onResult,
    bool useAppBar = false,
    List<PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(
            key: key,
            onResult: onResult,
            useAppBar: useAppBar,
          ),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<LoginRouteArgs>(orElse: () => const LoginRouteArgs());
      return LoginPage(
        key: args.key,
        onResult: args.onResult,
        useAppBar: args.useAppBar,
      );
    },
  );
}

class LoginRouteArgs {
  const LoginRouteArgs({
    this.key,
    this.onResult,
    this.useAppBar = false,
  });

  final Key? key;

  final void Function(bool)? onResult;

  final bool useAppBar;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, onResult: $onResult, useAppBar: $useAppBar}';
  }
}

/// generated route for
/// [PinCodePage]
class PinCodeRoute extends PageRouteInfo<PinCodeRouteArgs> {
  PinCodeRoute({
    Key? key,
    void Function(bool)? onResult,
    bool useAppBar = false,
    List<PageRouteInfo>? children,
  }) : super(
          PinCodeRoute.name,
          args: PinCodeRouteArgs(
            key: key,
            onResult: onResult,
            useAppBar: useAppBar,
          ),
          initialChildren: children,
        );

  static const String name = 'PinCodeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<PinCodeRouteArgs>(orElse: () => const PinCodeRouteArgs());
      return PinCodePage(
        key: args.key,
        onResult: args.onResult,
        useAppBar: args.useAppBar,
      );
    },
  );
}

class PinCodeRouteArgs {
  const PinCodeRouteArgs({
    this.key,
    this.onResult,
    this.useAppBar = false,
  });

  final Key? key;

  final void Function(bool)? onResult;

  final bool useAppBar;

  @override
  String toString() {
    return 'PinCodeRouteArgs{key: $key, onResult: $onResult, useAppBar: $useAppBar}';
  }
}
