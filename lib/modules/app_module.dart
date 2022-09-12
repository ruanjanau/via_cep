import 'package:flutter_modular/flutter_modular.dart';
import 'package:via_cep/modules/src/cep/cep_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
          Modular.initialRoute,
          module: CepModule(),
        )
      ];
}
