import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first

class ConfiguracaoUsuario {
  String id;
  //String ImgLogomarca;
  int GerQtdCaracterBusca;
  int GerFlagEmailCopyOculta;
  String GerEmailCopyOculta;
  int SegFlagAltSenhaPeriodo;
  int SegPrazoAlteraSenha;
  int SegQtdCaracterSenha;
  int SegFlagReutilizaPwd;
  int VClInad;
  double TFedNac;
  double TFedImp;
  double Tmun;
  double Test;
  int tefFlg;
  String tefIp;
  String tefPfil;
  String tefIemp;
  int FinDiasCarenciaJurosCtasReceber;
  double FinMultaCtasReceber;
  double FinTaxaJurosMinimaCtasReceber;
  double FinTaxaJurosCtasReceber;
  String DfDiSch;
  String DfDiXml;
  String DfDLogWs;
  int DfCertT;
  String DfCertNS;
  String DfCertDt;
  int NfTiEmi;
  int NfTiEmSec;
  String NfeDiX;
  int NfeAmb;
  int NfeVLay;
  int NfeProtSeg;
  int NfeTime;
  String NfRCn;
  String NfRCtt;
  String NfEml;
  String NfRFne;
  int NfcTiEmi;
  int NfcTiEmSec;
  int NfceVQr;
  String NfceCsc;
  String NfceCscId;
  String NfceDiX;
  int NfceAmb;
  int NfceVLay;
  int NcfeProtSeg;
  int NfceTime;
  int NfseTSpeedPrefeitura;
  int NfseTSpeedAmbiente;
  String NfseTSpeedDiretorioArquivos;
  String NfseDiretorioXml;
  String NfseTSpeedDiretorioLog;
  int NfseTSpeedFlagConexaoSegura;
  String NfseTSpeedParametrosExtras;
  int NfseTSpeedFlagSalvarLogs;
  int NfseTSpeedTimeout;
  int NfseMultiploServico;
  int NfseRegimeEspecialTributacao;
  int NfseConsultaNotasTomadas;
  String NfseUsuario;
  String NfsePwd;
  String FclSpedPerfil;
  int FclSpedIndicadorAtividade;
  int FclSpedIndPeriodoApuracaoIpi;
  String FclContadorNome;
  String FclContadorCpf;
  String FclContadorCpj;
  String FclContadorCrc;
  String FclContadorEndereco;
  String FclContadorCep;
  String FclContadorEndNumero;
  String FclContadorBairro;
  String FclContadorComplemento;
  String FclContadorFone;
  String FclContadorFax;
  String FclContadorEmail;
  String FclContadorCodMunIbge;
  int ApiFlagTrayEcommerce;
  String ApiTrayConsumerKey;
  String ApiTrayConsumerSecret;
  String ApiTrayCodeLoja;
  String ApiTrayUrlLoja;
  int ApiTrayGrupoLast;
  int ApiTrayFabricanteLast;
  int ApiTrayItemLast;
  int ApiTrayClienteLast;
  int ApiTrayStatusPedidoLast;
  int ApiTrayClienteEnderecoLast;
  int TsPixFlg;
  String TsPixICpy;
  String TsPixSts;
  String TsPixDUp;
  String TsPixIcy;
  String TsPixSKy;
  int PGdlv;
  int PdQtd;
  int PDiBal;
  int PslVdd;
  int PFcInt;
  int PSpDc;
  int PIprt1;
  int PIprt2;
  int PIprt3;
  int PIprt4;
  int PIprt5;
  int PIprt6;
  int PIprt7;
  int PIprt8;
  String PDprt1;
  String PDprt2;
  String PDprt3;
  String PDprt4;
  String Pdprt5;
  String PDprt6;
  String PDprt7;
  String PDprt8;
  int PIGer;
  int PIDSc;
  int PIPlP;
  int PINfc;
  int PIONf;
  int PIOAxn;
  String LstMov;
  int LstUsr;
  int ChkDel;
  int UTCTag;
  int IdEmp;
  int FlgAt;
  int intId;
  int MdOrig;
  int Sfrig;
  ConfiguracaoUsuario({
    required this.id,
  //  required this.ImgLogomarca,
    required this.GerQtdCaracterBusca,
    required this.GerFlagEmailCopyOculta,
    required this.GerEmailCopyOculta,
    required this.SegFlagAltSenhaPeriodo,
    required this.SegPrazoAlteraSenha,
    required this.SegQtdCaracterSenha,
    required this.SegFlagReutilizaPwd,
    required this.VClInad,
    required this.TFedNac,
    required this.TFedImp,
    required this.Tmun,
    required this.Test,
    required this.tefFlg,
    required this.tefIp,
    required this.tefPfil,
    required this.tefIemp,
    required this.FinDiasCarenciaJurosCtasReceber,
    required this.FinMultaCtasReceber,
    required this.FinTaxaJurosMinimaCtasReceber,
    required this.FinTaxaJurosCtasReceber,
    required this.DfDiSch,
    required this.DfDiXml,
    required this.DfDLogWs,
    required this.DfCertT,
    required this.DfCertNS,
    required this.DfCertDt,
    required this.NfTiEmi,
    required this.NfTiEmSec,
    required this.NfeDiX,
    required this.NfeAmb,
    required this.NfeVLay,
    required this.NfeProtSeg,
    required this.NfeTime,
    required this.NfRCn,
    required this.NfRCtt,
    required this.NfEml,
    required this.NfRFne,
    required this.NfcTiEmi,
    required this.NfcTiEmSec,
    required this.NfceVQr,
    required this.NfceCsc,
    required this.NfceCscId,
    required this.NfceDiX,
    required this.NfceAmb,
    required this.NfceVLay,
    required this.NcfeProtSeg,
    required this.NfceTime,
    required this.NfseTSpeedPrefeitura,
    required this.NfseTSpeedAmbiente,
    required this.NfseTSpeedDiretorioArquivos,
    required this.NfseDiretorioXml,
    required this.NfseTSpeedDiretorioLog,
    required this.NfseTSpeedFlagConexaoSegura,
    required this.NfseTSpeedParametrosExtras,
    required this.NfseTSpeedFlagSalvarLogs,
    required this.NfseTSpeedTimeout,
    required this.NfseMultiploServico,
    required this.NfseRegimeEspecialTributacao,
    required this.NfseConsultaNotasTomadas,
    required this.NfseUsuario,
    required this.NfsePwd,
    required this.FclSpedPerfil,
    required this.FclSpedIndicadorAtividade,
    required this.FclSpedIndPeriodoApuracaoIpi,
    required this.FclContadorNome,
    required this.FclContadorCpf,
    required this.FclContadorCpj,
    required this.FclContadorCrc,
    required this.FclContadorEndereco,
    required this.FclContadorCep,
    required this.FclContadorEndNumero,
    required this.FclContadorBairro,
    required this.FclContadorComplemento,
    required this.FclContadorFone,
    required this.FclContadorFax,
    required this.FclContadorEmail,
    required this.FclContadorCodMunIbge,
    required this.ApiFlagTrayEcommerce,
    required this.ApiTrayConsumerKey,
    required this.ApiTrayConsumerSecret,
    required this.ApiTrayCodeLoja,
    required this.ApiTrayUrlLoja,
    required this.ApiTrayGrupoLast,
    required this.ApiTrayFabricanteLast,
    required this.ApiTrayItemLast,
    required this.ApiTrayClienteLast,
    required this.ApiTrayStatusPedidoLast,
    required this.ApiTrayClienteEnderecoLast,
    required this.TsPixFlg,
    required this.TsPixICpy,
    required this.TsPixSts,
    required this.TsPixDUp,
    required this.TsPixIcy,
    required this.TsPixSKy,
    required this.PGdlv,
    required this.PdQtd,
    required this.PDiBal,
    required this.PslVdd,
    required this.PFcInt,
    required this.PSpDc,
    required this.PIprt1,
    required this.PIprt2,
    required this.PIprt3,
    required this.PIprt4,
    required this.PIprt5,
    required this.PIprt6,
    required this.PIprt7,
    required this.PIprt8,
    required this.PDprt1,
    required this.PDprt2,
    required this.PDprt3,
    required this.PDprt4,
    required this.Pdprt5,
    required this.PDprt6,
    required this.PDprt7,
    required this.PDprt8,
    required this.PIGer,
    required this.PIDSc,
    required this.PIPlP,
    required this.PINfc,
    required this.PIONf,
    required this.PIOAxn,
    required this.LstMov,
    required this.LstUsr,
    required this.ChkDel,
    required this.UTCTag,
    required this.IdEmp,
    required this.FlgAt,
    required this.intId,
    required this.MdOrig,
    required this.Sfrig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      '\$id': id,
      //'ImgLogomarca': ImgLogomarca,
      'GerQtdCaracterBusca': GerQtdCaracterBusca,
      'GerFlagEmailCopyOculta': GerFlagEmailCopyOculta,
      'GerEmailCopyOculta': GerEmailCopyOculta,
      'SegFlagAltSenhaPeriodo': SegFlagAltSenhaPeriodo,
      'SegPrazoAlteraSenha': SegPrazoAlteraSenha,
      'SegQtdCaracterSenha': SegQtdCaracterSenha,
      'SegFlagReutilizaPwd': SegFlagReutilizaPwd,
      'VClInad': VClInad,
      'TFedNac': TFedNac,
      'TFedImp': TFedImp,
      'Tmun': Tmun,
      'Test': Test,
      'tefFlg': tefFlg,
      'tefIp': tefIp,
      'tefPfil': tefPfil,
      'tefIemp': tefIemp,
      'FinDiasCarenciaJurosCtasReceber': FinDiasCarenciaJurosCtasReceber,
      'FinMultaCtasReceber': FinMultaCtasReceber,
      'FinTaxaJurosMinimaCtasReceber': FinTaxaJurosMinimaCtasReceber,
      'DfDiSch': DfDiSch,
      'DfDiXml': DfDiXml,
      'DfDLogWs': DfDLogWs,
      'DfCertT': DfCertT,
      'DfCertNS': DfCertNS,
      'DfCertDt': DfCertDt,
      'NfTiEmi': NfTiEmi,
      'NfTiEmSec': NfTiEmSec,
      'NfeDiX': NfeDiX,
      'NfeAmb': NfeAmb,
      'NfeVLay': NfeVLay,
      'NfeProtSeg': NfeProtSeg,
      'NfeTime': NfeTime,
      'NfRCn': NfRCn,
      'NfRCtt': NfRCtt,
      'NfEml': NfEml,
      'NfRFne': NfRFne,
      'NfcTiEmi': NfcTiEmi,
      'NfcTiEmSec': NfcTiEmSec,
      'NfceVQr': NfceVQr,
      'NfceCsc': NfceCsc,
      'NfceCscId': NfceCscId,
      'NfceDiX': NfceDiX,
      'NfceAmb': NfceAmb,
      'NfceVLay': NfceVLay,
      'NcfeProtSeg': NcfeProtSeg,
      'NfceTime': NfceTime,
      'NfseTSpeedPrefeitura': NfseTSpeedPrefeitura,
      'NfseTSpeedAmbiente': NfseTSpeedAmbiente,
      'NfseTSpeedDiretorioArquivos': NfseTSpeedDiretorioArquivos,
      'NfseDiretorioXml': NfseDiretorioXml,
      'NfseTSpeedDiretorioLog': NfseTSpeedDiretorioLog,
      'NfseTSpeedFlagConexaoSegura': NfseTSpeedFlagConexaoSegura,
      'NfseTSpeedParametrosExtras': NfseTSpeedParametrosExtras,
      'NfseTSpeedFlagSalvarLogs': NfseTSpeedFlagSalvarLogs,
      'NfseTSpeedTimeout': NfseTSpeedTimeout,
      'NfseMultiploServico': NfseMultiploServico,
      'NfseRegimeEspecialTributacao': NfseRegimeEspecialTributacao,
      'NfseConsultaNotasTomadas': NfseConsultaNotasTomadas,
      'NfseUsuario': NfseUsuario,
      'NfsePwd': NfsePwd,
      'FclSpedPerfil': FclSpedPerfil,
      'FclSpedIndicadorAtividade': FclSpedIndicadorAtividade,
      'FclSpedIndPeriodoApuracaoIpi': FclSpedIndPeriodoApuracaoIpi,
      'FclContadorNome': FclContadorNome,
      'FclContadorCpf': FclContadorCpf,
      'FclContadorCpj': FclContadorCpj,
      'FclContadorCrc': FclContadorCrc,
      'FclContadorEndereco': FclContadorEndereco,
      'FclContadorCep': FclContadorCep,
      'FclContadorEndNumero': FclContadorEndNumero,
      'FclContadorBairro': FclContadorBairro,
      'FclContadorComplemento': FclContadorComplemento,
      'FclContadorFone': FclContadorFone,
      'FclContadorFax': FclContadorFax,
      'FclContadorEmail': FclContadorEmail,
      'FclContadorCodMunIbge': FclContadorCodMunIbge,
      'ApiFlagTrayEcommerce': ApiFlagTrayEcommerce,
      'ApiTrayConsumerKey': ApiTrayConsumerKey,
      'ApiTrayConsumerSecret': ApiTrayConsumerSecret,
      'ApiTrayCodeLoja': ApiTrayCodeLoja,
      'ApiTrayUrlLoja': ApiTrayUrlLoja,
      'ApiTrayGrupoLast': ApiTrayGrupoLast,
      'ApiTrayFabricanteLast': ApiTrayFabricanteLast,
      'ApiTrayItemLast': ApiTrayItemLast,
      'ApiTrayClienteLast': ApiTrayClienteLast,
      'ApiTrayStatusPedidoLast': ApiTrayStatusPedidoLast,
      'ApiTrayClienteEnderecoLast': ApiTrayClienteEnderecoLast,
      'TsPixFlg': TsPixFlg,
      'TsPixICpy': TsPixICpy,
      'TsPixSts': TsPixSts,
      'TsPixDUp': TsPixDUp,
      'TsPixIcy': TsPixIcy,
      'TsPixSKy': TsPixSKy,
      'PGdlv': PGdlv,
      'PdQtd': PdQtd,
      'PDiBal': PDiBal,
      'PslVdd': PslVdd,
      'PFcInt': PFcInt,
      'PSpDc': PSpDc,
      'PIprt1': PIprt1,
      'PIprt2': PIprt2,
      'PIprt3': PIprt3,
      'PIprt4': PIprt4,
      'PIprt5': PIprt5,
      'PIprt6': PIprt6,
      'PIprt7': PIprt7,
      'PIprt8': PIprt8,
      'PDprt1': PDprt1,
      'PDprt2': PDprt2,
      'PDprt3': PDprt3,
      'PDprt4': PDprt4,
      'Pdprt5': Pdprt5,
      'PDprt6': PDprt6,
      'PDprt7': PDprt7,
      'PDprt8': PDprt8,
      'PIGer': PIGer,
      'PIDSc': PIDSc,
      'PIPlP': PIPlP,
      'PINfc': PINfc,
      'PIONf': PIONf,
      'PIOAxn': PIOAxn,
      'LstMov': LstMov,
      'LstUsr': LstUsr,
      'ChkDel': ChkDel,
      'UTCTag': UTCTag,
      'IdEmp': IdEmp,
      'FlgAt': FlgAt,
      'intId': intId,
      'MdOrig': MdOrig,
      'Sfrig': Sfrig,
    };
  }

  factory ConfiguracaoUsuario.fromMap(Map<String, dynamic> map) {
    return ConfiguracaoUsuario(
      id: map['\$id'] as String,
    //  ImgLogomarca: map['ImgLogomarca'] as String,
      GerQtdCaracterBusca: map['GerQtdCaracterBusca'] ?? 0,
      GerFlagEmailCopyOculta: map['GerFlagEmailCopyOculta'] ?? 0,
      GerEmailCopyOculta: map['GerEmailCopyOculta'] ?? '',
      SegFlagAltSenhaPeriodo: map['SegFlagAltSenhaPeriodo'] ?? 0,
      SegPrazoAlteraSenha: map['SegPrazoAlteraSenha'] ?? 0,
      SegQtdCaracterSenha: map['SegQtdCaracterSenha'] ?? 0,
      SegFlagReutilizaPwd: map['SegFlagReutilizaPwd'] ?? 0,
      VClInad: map['VClInad'] ?? 0,
      TFedNac: map['TFedNac'] as double,
      TFedImp: map['TFedImp'] as double,
      Tmun: map['TMun'] as double,
      Test: map['TEst'] as double,
      tefFlg: map['TefFlg'] ?? 0,
      tefIp: map['TefIp'] ?? '',
      tefPfil: map['TefPFil'] ?? '',
      tefIemp: map['TefIEmp'] ?? '',
      FinDiasCarenciaJurosCtasReceber:
          map['FinDiasCarenciaJurosCtasReceber'] ?? 0,
      FinMultaCtasReceber: map['FinMultaCtasReceber'] as double,
      FinTaxaJurosCtasReceber: map['FinTaxaJurosCtasReceber'] as double,
      FinTaxaJurosMinimaCtasReceber:
          map['FinTaxaJurosMinimaCtasReceber'] as double,
      DfDiSch: map['DfDiSch'] ?? '',
      DfDiXml: map['DfDiXml'] ?? '',
      DfDLogWs: map['DfDLogWs'] ?? '',
      DfCertT: map['DfCertT'] ?? 0,
      DfCertNS: map['DfCertNS'] ?? '',
      DfCertDt: map['DfCertDt'] ?? '',
      NfTiEmi: map['NfTiEmi'] ?? 0,
      NfTiEmSec: map['NfTiEmSec'] ?? 0,
      NfeDiX: map['NfeDiX'] ?? '',
      NfeAmb: map['NfeAmb'] ?? 0,
      NfeVLay: map['NfeVLay'] ?? 0,
      NfeProtSeg: map['NfeProtSeg'] ?? 0,
      NfeTime: map['NfeTime'] ?? 0,
      NfRCn: map['NfRCn'] ?? '',
      NfRCtt: map['NfRCtt'] ?? '',
      NfEml: map['NfEml'] ?? '',
      NfRFne: map['NfRFne'] ?? '',
      NfcTiEmi: map['NfcTiEmi'] ?? 0,
      NfcTiEmSec: map['NfcTiEmSec'] ?? 0,
      NfceVQr: map['NfceVQr'] ?? 0,
      NfceCsc: map['NfceCsc'] ?? '',
      NfceCscId: map['NfceCscId'] ?? '',
      NfceDiX: map['NfceDiX'] ?? '',
      NfceAmb: map['NfceAmb'] ?? 0,
      NfceVLay: map['NfceVLay'] ?? 0,
      NcfeProtSeg: map['NcfeProtSeg'] ?? 0,
      NfceTime: map['NfceTime'] ?? 0,
      NfseTSpeedPrefeitura: map['NfseTSpeedPrefeitura'] ?? 0,
      NfseTSpeedAmbiente: map['NfseTSpeedAmbiente'] ?? 0,
      NfseTSpeedDiretorioArquivos: map['NfseTSpeedDiretorioArquivos'] ?? '',
      NfseDiretorioXml: map['NfseDiretorioXml'] ?? '',
      NfseTSpeedDiretorioLog: map['NfseTSpeedDiretorioLog'] ?? '',
      NfseTSpeedFlagConexaoSegura: map['NfseTSpeedFlagConexaoSegura'] ?? 0,
      NfseTSpeedParametrosExtras: map['NfseTSpeedParametrosExtras'] ?? '',
      NfseTSpeedFlagSalvarLogs: map['NfseTSpeedFlagSalvarLogs'] ?? 0,
      NfseTSpeedTimeout: map['NfseTSpeedTimeout'] ?? 0,
      NfseMultiploServico: map['NfseMultiploServico'] ?? 0,
      NfseRegimeEspecialTributacao: map['NfseRegimeEspecialTributacao'] ?? 0,
      NfseConsultaNotasTomadas: map['NfseConsultaNotasTomadas'] ?? 0,
      NfseUsuario: map['NfseUsuario'] ?? '',
      NfsePwd: map['NfsePwd'] ?? '',
      FclSpedPerfil: map['FclSpedPerfil'] ?? '',
      FclSpedIndicadorAtividade: map['FclSpedIndicadorAtividade'] ?? 0,
      FclSpedIndPeriodoApuracaoIpi: map['FclSpedIndPeriodoApuracaoIpi'] ?? 0,
      FclContadorNome: map['FclContadorNome'] ?? '',
      FclContadorCpf: map['FclContadorCpf'] ?? '',
      FclContadorCpj: map['FclContadorCpj'] ?? '',
      FclContadorCrc: map['FclContadorCrc'] ?? '',
      FclContadorEndereco: map['FclContadorEndereco'] ?? '',
      FclContadorCep: map['FclContadorCep'] ?? '',
      FclContadorEndNumero: map['FclContadorEndNumero'] ?? '',
      FclContadorBairro: map['FclContadorBairro'] ?? '',
      FclContadorComplemento: map['FclContadorComplemento'] ?? '',
      FclContadorFone: map['FclContadorFone'] ?? '',
      FclContadorFax: map['FclContadorFax'] ?? '',
      FclContadorEmail: map['FclContadorEmail'] ?? '',
      FclContadorCodMunIbge: map['FclContadorCodMunIbge'] ?? '',
      ApiFlagTrayEcommerce: map['ApiFlagTrayEcommerce'] ?? 0,
      ApiTrayConsumerKey: map['ApiTrayConsumerKey'] ?? '',
      ApiTrayConsumerSecret: map['ApiTrayConsumerSecret'] ?? '',
      ApiTrayCodeLoja: map['ApiTrayCodeLoja'] ?? '',
      ApiTrayUrlLoja: map['ApiTrayUrlLoja'] ?? '',
      ApiTrayGrupoLast: map['ApiTrayGrupoLast'] ?? 0,
      ApiTrayFabricanteLast: map['ApiTrayFabricanteLast'] ?? 0,
      ApiTrayItemLast: map['ApiTrayItemLast'] ?? 0,
      ApiTrayClienteLast: map['ApiTrayClienteLast'] ?? 0,
      ApiTrayStatusPedidoLast: map['ApiTrayStatusPedidoLast'] ?? 0,
      ApiTrayClienteEnderecoLast: map['ApiTrayClienteEnderecoLast'] ?? 0,
      TsPixFlg: map['TsPixFlg'] ?? 0,
      TsPixICpy: map['TsPixICpy'] ?? '',
      TsPixSts: map['TsPixSts'] ?? '',
      TsPixDUp: map['TsPixDUp'] ?? '',
      TsPixIcy: map['TsPixIcy'] ?? '',
      TsPixSKy: map['TsPixSKy'] ?? '',
      PGdlv: map['PGdlv'] ?? 0,
      PdQtd: map['PdQtd'] ?? 0,
      PDiBal: map['PDiBal'] ?? 0,
      PslVdd: map['PslVdd'] ?? 0,
      PFcInt: map['PFcInt'] ?? 0,
      PSpDc: map['PSpDc'] ?? 0,
      PIprt1: map['PIprt1'] ?? 0,
      PIprt2: map['PIprt2'] ?? 0,
      PIprt3: map['PIprt3'] ?? 0,
      PIprt4: map['PIprt4'] ?? 0,
      PIprt5: map['PIprt5'] ?? 0,
      PIprt6: map['PIprt6'] ?? 0,
      PIprt7: map['PIprt7'] ?? 0,
      PIprt8: map['PIprt8'] ?? 0,
      PDprt1: map['PDprt1'] ?? '',
      PDprt2: map['PDprt2'] ?? '',
      PDprt3: map['PDprt3'] ?? '',
      PDprt4: map['PDprt4'] ?? '',
      Pdprt5: map['Pdprt5'] ?? '',
      PDprt6: map['PDprt6'] ?? '',
      PDprt7: map['PDprt7'] ?? '',
      PDprt8: map['PDprt8'] ?? '',
      PIGer: map['PIGer'] ?? 0,
      PIDSc: map['PIDSc'] ?? 0,
      PIPlP: map['PIPlP'] ?? 0,
      PINfc: map['PINfc'] ?? 0,
      PIONf: map['PIONf'] ?? 0,
      PIOAxn: map['PIOAxn'] ?? 0,
      LstMov: map['LstMov'] as String,
      LstUsr: map['LstUsr'] ?? 0,
      ChkDel: map['ChkDel'] ?? 0,
      UTCTag: map['UTCTag'] ?? 0,
      IdEmp: map['IdEmp'] ?? 0,
      FlgAt: map['FlgAt'] ?? 0,
      intId: map['Id'] ?? 0,
      MdOrig: map['MdOrig'] ?? 0,
      Sfrig: map['Sfrig'] ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory ConfiguracaoUsuario.fromJson(String source) =>
      ConfiguracaoUsuario.fromMap(json.decode(source) as Map<String, dynamic>);
}
