
import 'package:flutter_application_teste/data/models/eptus_configuracao_usuario_model.dart';

class Usuario {
  String? ida1;
  String? ida2;
  String? nome;
  String? pwd;
  String? ida3;
  String? modComprasCad;
  String? item;
  int modFinanceiro;
  int pisCofins;
  int pisCofinsInsert;
  int pisCofinsDelete;
  int pisCofinsUpdate;
  int pisCofinsReactive;
  int aplicacao;
  int aplicacaoInsert;
  int aplicacaoDelete;
  int aplicacaoUpdate;
  int aplicacaoReactive;
  int familiaPreco;
  int familiaPrecoInsert;
  int familiaPrecoDelete;
  int familiaPrecoUpdate;
  int familiaPrecoReactive;
  int tabelaPreco;
  int tabelaPrecoInsert;
  int tabelaPrecoDelete;
  int tabelaPrecoUpdate;
  int tabelaPrecoReactive;
  int boxEstoque;
  int boxEstoqueInsert;
  int boxEstoqueDelete;
  int boxEstoqueUpdate;
  int boxEstoqueReactive;
  int ncm;
  int ncmInsert;
  int ncmDelete;
  int ncmUpdate;
  int ncmReactive;
  int lcServico;
  int lcServicoInsert;
  int lcServicoDelete;
  int lcServicoUpdate;
  int lcServicoReactive;
  int tamanho;
  int tamanhoInsert;
  int tamanhoDelete;
  int tamanhoUpdate;
  int tamanhoReactive;
  int modComprasCon;
  int transferenciaFilialCon;
  int transferenciaDepositosCon;
  int entradaNotaFiscalCon;
  int pedidoComprasCon;
  int itensPromocaoCon;
  int modComprasRel;
  int modComprasOpe;
  int transferenciaDepositos;
  int entradaNotaFiscal;
  int pedidoCompras;
  int promocaoItens;
  int planilhaAlteracaoPrecos;
  int inventario;
  int modVendas;
  int modVendasCad;
  int cliente;
  int clienteInsert;
  int clienteDelete;
  int clienteUpdate;
  int clienteReactive;
  int pais;
  int paisInsert;
  int paisDelete;
  int paisUpdate;
  int paisReactive;
  int uf;
  String token;
  double FinTaxaJurosCtasReceber;
//  double FinMultaCtasReceber;
  int FinDiasCarenciaJurosCtasReceber;
  String? emNom;
  String? noSre;
  String? numeroVersion;
  String? cnpj;
  String? ImgLogomarca;
  String? fant;
  int idEmp;
  int idUsr;
  int idUsuario;
  //niveis de acesso
  int contasReceberTitulosPendentes;
  int modCompras;
  //niveis de acesso
  ConfiguracaoUsuario? configuracaoUsuario;
  int movimentoCaixaBancoConsulta;
  int relFechamentoCaixa;
 
  int contasPagarTitulosPendentes;
  int propostasCon;
  double prcDesc;

  Usuario(
      this.ida1,
      this.ida2,
      this.nome,
      this.pwd,
      this.ida3,
      this.modComprasCad,
      this. modFinanceiro,
      this.item,
      this.pisCofins,
      this.pisCofinsInsert,
      this.pisCofinsDelete,
      this.pisCofinsUpdate,
      this.pisCofinsReactive,
      this.aplicacao,
      this.aplicacaoInsert,
      this.aplicacaoDelete,
      this.aplicacaoUpdate,
      this.aplicacaoReactive,
      this.familiaPreco,
      this.familiaPrecoInsert,
      this.familiaPrecoDelete,
      this.familiaPrecoUpdate,
      this.familiaPrecoReactive,
      this.tabelaPreco,
      this.tabelaPrecoInsert,
      this.tabelaPrecoDelete,
      this.tabelaPrecoUpdate,
      this.tabelaPrecoReactive,
      this.boxEstoque,
      this.boxEstoqueInsert,
      this.boxEstoqueDelete,
      this.boxEstoqueUpdate,
      this.boxEstoqueReactive,
      this.ncm,
      this.ncmInsert,
      this.ncmDelete,
      this.ncmUpdate,
      this.ncmReactive,
      this.lcServico,
      this.lcServicoInsert,
      this.lcServicoDelete,
      this.lcServicoUpdate,
      this.lcServicoReactive,
      this.tamanho,
      this.tamanhoInsert,
      this.tamanhoDelete,
      this.tamanhoUpdate,
      this.tamanhoReactive,
      this.modComprasCon,
      this.transferenciaFilialCon,
      this.transferenciaDepositosCon,
      this.entradaNotaFiscalCon,
      this.pedidoComprasCon,
      this.itensPromocaoCon,
      this.modComprasRel,
      this.modComprasOpe,
      this.transferenciaDepositos,
      this.entradaNotaFiscal,
      this.pedidoCompras,
      this.promocaoItens,
      this.planilhaAlteracaoPrecos,
      this.inventario,
      this.modVendas,
      this.modVendasCad,
      this.cliente,
      this.clienteInsert,
      this.clienteDelete,
      this.clienteUpdate,
      this.clienteReactive,
      this.pais,
      this.paisInsert,
      this.paisDelete,
      this.paisUpdate,
      this.paisReactive,
      this.uf,
      this.token,
      this.FinTaxaJurosCtasReceber,
      this.FinDiasCarenciaJurosCtasReceber,
      this.emNom,
      this.noSre,
      this.numeroVersion,
      this.cnpj,
      this.ImgLogomarca,
      this.fant,
      this.idEmp,
      this.idUsr,
      this.configuracaoUsuario,
      this.idUsuario,
      this.contasReceberTitulosPendentes,
      this.modCompras,
      this.movimentoCaixaBancoConsulta,
      this.relFechamentoCaixa,
      this.contasPagarTitulosPendentes,
      this.prcDesc,
      this.propostasCon,
      );

  Usuario.fromJson(Map<String, dynamic> map)
      : ida1 = map['\$id'] ?? '',
        ida2 = map["Item1"]['\$id'] ?? '',
        nome = map["Item1"]["Nome"] ?? '',
        pwd = map["Item1"]["Pwd"] ?? '',
        emNom = map["Item2"]["EmNom"] ?? '',
        noSre = map["Item2"]["NoSre"] ?? '',
        ida3 = map["Item1"]["NivelAcesso"]['\$id'] ?? '',
          idUsuario = map["Item1"]["NivelAcesso"]['IdUsuario'],

          contasReceberTitulosPendentes = map["Item1"]["NivelAcesso"]['ContasReceberTitulosPendentes'],
          modCompras = map["Item1"]["NivelAcesso"]['ModCompras'],
           modFinanceiro = map["Item1"]["NivelAcesso"]['ModFinanceiro'],


           movimentoCaixaBancoConsulta = map["Item1"]["NivelAcesso"]['MovimentoCaixaBancoConsulta'],
           relFechamentoCaixa = map["Item1"]["NivelAcesso"]['RelFechamentoCaixa'],

                contasPagarTitulosPendentes = map["Item1"]["NivelAcesso"]['ContasPagarTitulosPendentes'],

                  prcDesc = map["Item1"]['PrcDesc'],

                  propostasCon = map["Item1"]["NivelAcesso"]['PropostasCon'],   
        pisCofins = map["Item1"]["NivelAcesso"]["PisCofins"],
        pisCofinsInsert = map["Item1"]["NivelAcesso"]["PisCofinsInsert"],
        pisCofinsDelete = map["Item1"]["NivelAcesso"]["PisCofinsDelete"],
        pisCofinsUpdate = map["Item1"]["NivelAcesso"]["PisCofinsUpdate"],
        pisCofinsReactive = map["Item1"]["NivelAcesso"]["PisCofinsReactive"],
        aplicacao = map["Item1"]["NivelAcesso"]["Aplicacao"],
        aplicacaoInsert = map["Item1"]["NivelAcesso"]["AplicacaoInsert"],
        aplicacaoDelete = map["Item1"]["NivelAcesso"]["AplicacaoDelete"],
        aplicacaoUpdate = map["Item1"]["NivelAcesso"]["AplicacaoUpdate"],
        aplicacaoReactive = map["Item1"]["NivelAcesso"]["AplicacaoReactive"],
        familiaPreco = map["Item1"]["NivelAcesso"]["FamiliaPreco"],
        familiaPrecoInsert = map["Item1"]["NivelAcesso"]["FamiliaPrecoInsert"],
        familiaPrecoDelete = map["Item1"]["NivelAcesso"]["FamiliaPrecoDelete"],
        familiaPrecoUpdate = map["Item1"]["NivelAcesso"]["FamiliaPrecoUpdate"],
        familiaPrecoReactive =
            map["Item1"]["NivelAcesso"]["FamiliaPrecoReactive"],
        tabelaPreco = map["Item1"]["NivelAcesso"]["TabelaPreco"],
        tabelaPrecoInsert = map["Item1"]["NivelAcesso"]["TabelaPrecoInsert"],
        tabelaPrecoDelete = map["Item1"]["NivelAcesso"]["TabelaPrecoDelete"],
        tabelaPrecoUpdate = map["Item1"]["NivelAcesso"]["TabelaPrecoUpdate"],
        tabelaPrecoReactive =
            map["Item1"]["NivelAcesso"]["TabelaPrecoReactive"],
        boxEstoque = map["Item1"]["NivelAcesso"]["BoxEstoque"],
        boxEstoqueInsert = map["Item1"]["NivelAcesso"]["BoxEstoqueInsert"],
        boxEstoqueDelete = map["Item1"]["NivelAcesso"]["BoxEstoqueDelete"],
        boxEstoqueUpdate = map["Item1"]["NivelAcesso"]["BoxEstoqueUpdate"],
        boxEstoqueReactive = map["Item1"]["NivelAcesso"]["BoxEstoqueReactive"],
        ncm = map["Item1"]["NivelAcesso"]["Ncm"],
        ncmInsert = map["Item1"]["NivelAcesso"]["NcmInsert"],
        ncmDelete = map["Item1"]["NivelAcesso"]["NcmDelete"],
        ncmUpdate = map["Item1"]["NivelAcesso"]["NcmUpdate"],
        ncmReactive = map["Item1"]["NivelAcesso"]["NcmReactive"],
        lcServico = map["Item1"]["NivelAcesso"]["LcServico"],
        lcServicoInsert = map["Item1"]["NivelAcesso"]["LcServicoInsert"],
        lcServicoDelete = map["Item1"]["NivelAcesso"]["LcServicoDelete"],
        lcServicoUpdate = map["Item1"]["NivelAcesso"]["LcServicoUpdate"],
        lcServicoReactive = map["Item1"]["NivelAcesso"]["LcServicoReactive"],
        tamanho = map["Item1"]["NivelAcesso"]["Tamanho"],
        tamanhoInsert = map["Item1"]["NivelAcesso"]["TamanhoInsert"],
        tamanhoDelete = map["Item1"]["NivelAcesso"]["TamanhoDelete"],
        tamanhoUpdate = map["Item1"]["NivelAcesso"]["TamanhoUpdate"],
        tamanhoReactive = map["Item1"]["NivelAcesso"]["TamanhoReactive"],
        modComprasCon = map["Item1"]["NivelAcesso"]["ModComprasCon"],
        transferenciaFilialCon =
            map["Item1"]["NivelAcesso"]["TransferenciaFilialCon"],
        transferenciaDepositosCon =
            map["Item1"]["NivelAcesso"]["TransferenciaDepositosCon"],
        entradaNotaFiscalCon =
            map["Item1"]["NivelAcesso"]["EntradaNotaFiscalCon"],
        pedidoComprasCon = map["Item1"]["NivelAcesso"]["PedidoComprasCon"],
        itensPromocaoCon = map["Item1"]["NivelAcesso"]["ItensPromocaoCon"],
        modComprasRel = map["Item1"]["NivelAcesso"]["ModComprasRel"],
        modComprasOpe = map["Item1"]["NivelAcesso"]["ModComprasOpe"],
        transferenciaDepositos =
            map["Item1"]["NivelAcesso"]["TransferenciaDepositos"],
        entradaNotaFiscal = map["Item1"]["NivelAcesso"]["EntradaNotaFiscal"],
        pedidoCompras = map["Item1"]["NivelAcesso"]["PedidoCompras"],
        promocaoItens = map["Item1"]["NivelAcesso"]["PromocaoItens"],
        planilhaAlteracaoPrecos =
            map["Item1"]["NivelAcesso"]["PlanilhaAlteracaoPrecos"],
        inventario = map["Item1"]["NivelAcesso"]["Inventario"],
        modVendas = map["Item1"]["NivelAcesso"]["ModVendas"],
        modVendasCad = map["Item1"]["NivelAcesso"]["ModVendasCad"],
        cliente = map["Item1"]["NivelAcesso"]["Cliente"],
        clienteInsert = map["Item1"]["NivelAcesso"]["ClienteInsert"],
        clienteDelete = map["Item1"]["NivelAcesso"]["ClienteDelete"],
        clienteUpdate = map["Item1"]["NivelAcesso"]["ClienteUpdate"],
        clienteReactive = map["Item1"]["NivelAcesso"]["ClienteReactive"],
        pais = map["Item1"]["NivelAcesso"]["Pais"],
        paisInsert = map["Item1"]["NivelAcesso"]["PaisInsert"],
        paisDelete = map["Item1"]["NivelAcesso"]["PaisDelete"],
        paisUpdate = map["Item1"]["NivelAcesso"]["PaisUpdate"],
        paisReactive = map["Item1"]["NivelAcesso"]["PaisReactive"],
        uf = map["Item1"]["NivelAcesso"]["Uf"],
        token = map["Item1"]["Token"],
        FinTaxaJurosCtasReceber =
            map['Item2']['Configuracao']['FinTaxaJurosCtasReceber'],
        FinDiasCarenciaJurosCtasReceber =
            map['Item2']['Configuracao']['FinDiasCarenciaJurosCtasReceber'],
        numeroVersion = map['Item2']['Vers'] ?? '',
        cnpj = map['Item2']['Cnpj'] ?? '',
        ImgLogomarca = map['Item2']['Configuracao']['ImgLogomarca'] ?? '',
        fant = map['Item2']['Fant'] ?? '',
        idEmp = map['Item2']['IdEmp'],
        idUsr = map['Item2']['Id'],
   configuracaoUsuario =
     ConfiguracaoUsuario.fromMap(map['Item2']['Configuracao']);
}
