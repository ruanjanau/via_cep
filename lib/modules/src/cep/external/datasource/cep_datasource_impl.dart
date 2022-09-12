import 'package:dio/dio.dart';
import 'package:via_cep/modules/src/cep/domain/errors/error.dart';
import 'package:via_cep/modules/src/cep/infra/datasource/cep_datasource.dart';

import '../../infra/models/cep_model.dart';

class CepDatasourceImpl implements CepDatasource {
  final Dio _dio;

  CepDatasourceImpl(this._dio);
  @override
  Future<CepModel> getCep(String cep) async {
    var response = await _dio.get('https://viacep.com.br/ws/$cep/json/');

    if (response.statusCode == 200) {
      return CepModel.fromMap(response.data);
    }
    throw Failure();
  }
}
