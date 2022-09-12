import '../../domain/entities/cep_entity.dart';

class CepModel extends CepEntity {
  const CepModel(
      {required String cep,
      required String logradouro,
      required String complemento,
      required String bairro,
      required String localidade,
      required String uf,
      required String ibge,
      required String gia,
      required String ddd,
      required String siafi})
      : super(
            cep: cep,
            logradouro: logradouro,
            complemento: complemento,
            bairro: bairro,
            localidade: localidade,
            uf: uf,
            ibge: ibge,
            gia: gia,
            ddd: ddd,
            siafi: siafi);
  factory CepModel.fromMap(Map<String, dynamic> map) {
    return CepModel(
      cep: map['cep'] as String,
      logradouro: map['logradouro'] as String,
      complemento: map['complemento'] as String,
      bairro: map['bairro'] as String,
      localidade: map['localidade'] as String,
      uf: map['uf'] as String,
      ibge: map['ibge'] as String,
      gia: map['gia'] as String,
      ddd: map['ddd'] as String,
      siafi: map['siafi'] as String,
    );
  }
}
