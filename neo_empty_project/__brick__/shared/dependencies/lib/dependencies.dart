/// {@template dependencies}
/// Dependencies package for JNP.
/// {@endtemplate}
library dependencies;

import 'package:dependencies/dependencies.dart';

export 'package:collection/collection.dart';
export 'package:dartz/dartz.dart' show Either, Left, Right;
export 'package:dio/dio.dart';
export 'package:event_bus/event_bus.dart';
export 'package:get_it/get_it.dart';
export 'package:injectable/injectable.dart';
export 'package:intl/intl.dart';
export 'package:reactive_forms/reactive_forms.dart';
export 'package:rxdart/rxdart.dart';

final sl = GetIt.I;