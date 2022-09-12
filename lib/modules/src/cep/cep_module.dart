import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:via_cep/modules/src/cep/domain/usecases/get_cep_usecase.dart';
import 'package:via_cep/modules/src/cep/external/datasource/cep_datasource_impl.dart';
import 'package:via_cep/modules/src/cep/infra/repositories/cep_repository_impl.dart';
import 'package:via_cep/modules/src/cep/presentation/controllers/cep_controller.dart';
import 'package:via_cep/modules/src/cep/presentation/pages/cep_page.dart';

class CepModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => Dio()),
        Bind((i) => CepDatasourceImpl(i())),
        Bind((i) => CepRepositoryImpl(i())),
        Bind((i) => GetCepUsecaseImpl(i())),
        Bind((i) => CepController(i())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute,
            child: ((context, args) => const CepPage()))
      ];
}
