
import 'package:gerenciador_energia/data/models/card_detail_model.dart';

class CardDetailRepository {

  Future<CardDetail> get() async {
    await Future.delayed(const Duration(milliseconds: 100));
    return CardDetail(
      1,
      'assets/images/planta.jpeg',
      "Relatório de consumo",
      "Análise",
      "Registro do consumo dos eletrodomésticos da sala.",
  );
  }

}