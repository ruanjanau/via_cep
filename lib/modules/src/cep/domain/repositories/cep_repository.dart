import 'package:dartz/dartz.dart';
import 'package:via_cep/modules/src/cep/domain/entities/cep_entity.dart';

import '../errors/error.dart';

abstract class CepRepository {
  Future<Either<Failure, CepEntity>> search(String cep);
}
