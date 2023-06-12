import 'package:dartz/dartz.dart';

import '../error/failures/fault.dart';

typedef FutureEither<T> = Future<Either<Fault, T>>;
