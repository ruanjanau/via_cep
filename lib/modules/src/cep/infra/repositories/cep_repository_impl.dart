import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:via_cep/modules/src/cep/domain/entities/cep_entity.dart';
import 'package:via_cep/modules/src/cep/domain/errors/error.dart';
import 'package:via_cep/modules/src/cep/infra/datasource/cep_datasource.dart';

import '../../domain/repositories/cep_repository.dart';

class CepRepositoryImpl implements CepRepository {
  final CepDatasource _datasource;

  CepRepositoryImpl(this._datasource);
  @override
  Future<Either<Failure, CepEntity>> search(String cep) async {
    try {
      var result = await _datasource.getCep(cep);

      return Right(result);
    } catch (e) {
      log(e.toString());

      return left(Failure());
    }
  }
}
