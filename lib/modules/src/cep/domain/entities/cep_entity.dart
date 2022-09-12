import 'package:equatable/equatable.dart';

class CepEntity extends Equatable {
  final String cep;
  final String logradouro;
  final String complemento;
  final String bairro;
  final String localidade;
  final String uf;
  final String ibge;
  final String gia;
  final String ddd;
  final String siafi;
  const CepEntity({
    required this.cep,
    required this.logradouro,
    required this.complemento,
    required this.bairro,
    required this.localidade,
    required this.uf,
    required this.ibge,
    required this.gia,
    required this.ddd,
    required this.siafi,
  });

  @override
  List<Object> get props {
    return [
      cep,
      logradouro,
      complemento,
      bairro,
      localidade,
      uf,
      ibge,
      gia,
      ddd,
      siafi,
    ];
  }
}
