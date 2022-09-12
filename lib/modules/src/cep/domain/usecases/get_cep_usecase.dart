import 'package:dartz/dartz.dart';

import '../entities/cep_entity.dart';
import '../errors/error.dart';
import '../repositories/cep_repository.dart';

abstract class GetCepUsecase {
  Future<Either<Failure, CepEntity>> call(String cep);
}

class GetCepUsecaseImpl implements GetCepUsecase {
  final CepRepository _repository;

  GetCepUsecaseImpl(this._repository);
  @override
  Future<Either<Failure, CepEntity>> call(String cep) {
    return _repository.search(cep);
  }
}
