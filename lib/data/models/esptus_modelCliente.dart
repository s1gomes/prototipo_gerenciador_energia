// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Cliente {
  String? id;
  String? rSoc;
  String? fant;
  String? cnpj;
  String? ieRg;
  String? end;
  String? bair;
  String? compl;
  String? cep;
  String? fone1;
  String? fone2;
  String? celular;
  String? numero;
  String? email;
  Cidade? cid;
  int? intId;

  Cliente(
      {this.id,
      this.rSoc,
      this.fant,
      this.cnpj,
      this.ieRg,
      this.end,
      this.bair,
      this.compl,
      this.cep,
      this.fone1,
      this.fone2,
      this.celular,
      this.numero,
      this.email,
      this.cid,
      this.intId});

  factory Cliente.fromMap(Map<String, dynamic> json) {
    return Cliente(
        id: json['\$id'] ?? "", //
        rSoc: json['RSoc'] ?? "", //
        fant: json['Fant'] ?? "", //
        cnpj: json['Cnpj'] ?? "", //
        ieRg: json['IeRg'] ?? "", //
        end: json['End'] ?? "",
        bair: json['Bair'] ?? "",
        compl: json['Compl'] ?? "",
        cep: json['Cep'] ?? "",
        fone1: json['Fone'] ?? "",
        fone2: json['Fone2'] ?? "",
        celular: json['Celular'] ?? "",
        numero: json['EndNo'] ?? "",
        email: json['Email'] ?? "",
        cid: json['Cid'] == null ? null : Cidade.fromJson(json['Cid']),
        intId: json['Id']);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      '\$id': id,
      'rSoc': rSoc,
      'fant': fant,
      'cnpj': cnpj,
      'ieRg': ieRg,
      'end': end,
      'bair': bair,
      'compl': compl,
      'cep': cep,
      'fone1': fone1,
      'fone2': fone2,
      'celular': celular,
      'numero': numero,
      'email': email,
      'cid': cid?.toMap(),
      'intId': intId,
    };
  }

  String toJson() => json.encode(toMap());
}

class Cidade {
  String? id;
  String? nome;

  Cidade({this.id, this.nome});

  static fromJson(Map<String, dynamic> json) {
    return Cidade(
      id: json['\$id'] ?? "",
      nome: json['Descx'] ?? "",
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nome': nome,
    };
  }

  String toJson() => json.encode(toMap());
}

class ClienteT {
  String? id;
  int? flgCCns;
  int? fDebLm;
  double? liCre;
  int? fBolPrt;
  int? fBolDPt;
  int? tEmDoc;
  String? emBoNf;
  String? emNf;
  String? emFin;
  int? flDPdC;
  int? orCd;
  List? endEnt;
  String? tyDt;
  double? lCrdDisp;
  double? sdCCt;
  double? debAb;
  double? debVen;
  bool? flgInad;
  int? mrAtrs;
  int? medAtrs;
  int? qTitAt;
  String? rSoc;
  String? fant;
  int? flagTipoPessoa;
  String? cnpj;
  int? flgIndIE;
  String? cep;
  int? idCid;
  String? uf;
  String? fone;
  String? fone2;
  String? celular;
  String? email;
  CidadeT? cidade;
  String? lstMov;
  int? lstUsr;
  int? chkDel;
  int? uTCTag;
  int? idEmp;
  int? flgAt;
  int? intId;
  int? mdOrig;
  int? sfrig;

  ClienteT(
      {this.id,
      this.flgCCns,
      this.fDebLm,
      this.liCre,
      this.fBolPrt,
      this.fBolDPt,
      this.tEmDoc,
      this.emBoNf,
      this.emNf,
      this.emFin,
      this.flDPdC,
      this.orCd,
      this.endEnt,
      this.tyDt,
      this.lCrdDisp,
      this.sdCCt,
      this.debAb,
      this.debVen,
      this.flgInad,
      this.mrAtrs,
      this.medAtrs,
      this.qTitAt,
      this.rSoc,
      this.fant,
      this.flagTipoPessoa,
      this.cnpj,
      this.flgIndIE,
      this.cep,
      this.idCid,
      this.uf,
      this.fone,
      this.fone2,
      this.celular,
      this.email,
      this.cidade,
      this.lstMov,
      this.lstUsr,
      this.chkDel,
      this.uTCTag,
      this.idEmp,
      this.flgAt,
      this.intId,
      this.mdOrig,
      this.sfrig});

  ClienteT.fromMap(Map<String, dynamic> map) {
    id = map['\$id'];
    flgCCns = map['FlgCCns'];
    fDebLm = map['FDebLm'];
    liCre = map['LiCre'];
    fBolPrt = map['FBolPrt'];
    fBolDPt = map['FBolDPt'];
    tEmDoc = map['TEmDoc'];
    emBoNf = map['EmBoNf'];
    emNf = map['EmNf'];
    emFin = map['EmFin'];
    flDPdC = map['FlDPdC'];
    orCd = map['OrCd'];
    endEnt = map['EndEnt'];

    tyDt = map['TyDt'];
    lCrdDisp = map['LCrdDisp'];
    sdCCt = map['SdCCt'];
    debAb = map['DebAb'];
    debVen = map['DebVen'];
    flgInad = map['FlgInad'];
    mrAtrs = map['MrAtrs'];
    medAtrs = map['MedAtrs'];
    qTitAt = map['QTitAt'];
    rSoc = map['RSoc'];
    fant = map['Fant'];
    flagTipoPessoa = map['FlagTipoPessoa'];
    cnpj = map['Cnpj'];
    flgIndIE = map['FlgIndIE'];
    cep = map['Cep'];
    idCid = map['IdCid'];
    uf = map['Uf'];
    fone = map['Fone'];
    fone2 = map['Fone2'];
    celular = map['Celular'];
    email = map['Email'];
    cidade = map['Cid'] == null ? null : CidadeT.fromMap((map['Cid']));
    lstMov = map['LstMov'];
    lstUsr = map['LstUsr'];
    chkDel = map['ChkDel'];
    uTCTag = map['UTCTag'];
    idEmp = map['IdEmp'];
    flgAt = map['FlgAt'];
    intId = map['Id'];
    mdOrig = map['MdOrig'];
    sfrig = map['Sfrig'];
  }


  Map<String, dynamic> toMap() {
    final Map<String, dynamic> map = Map<String, dynamic>();
    map['\$id'] = id;
    map['FlgCCns'] = flgCCns;
    map['FDebLm'] = fDebLm;
    map['LiCre'] = liCre;
    map['FBolPrt'] = fBolPrt;
    map['FBolDPt'] = fBolDPt;
    map['TEmDoc'] = tEmDoc;
    map['EmBoNf'] = emBoNf;
    map['EmNf'] = emNf;
    map['EmFin'] = emFin;
    map['FlDPdC'] = flDPdC;
    map['OrCd'] = orCd;

    if (endEnt != null) {
      map['EndEnt'] = endEnt!.map((v) => v.toJson()).toList();
    }

    map['TyDt'] = tyDt;
    map['LCrdDisp'] = lCrdDisp;
    map['SdCCt'] = sdCCt;
    map['DebAb'] = debAb;
    map['DebVen'] = debVen;
    map['FlgInad'] = flgInad;
    map['MrAtrs'] = mrAtrs;
    map['MedAtrs'] = medAtrs;
    map['QTitAt'] = qTitAt;
    map['RSoc'] = rSoc;
    map['Fant'] = fant;
    map['FlagTipoPessoa'] = flagTipoPessoa;
    map['Cnpj'] = cnpj;
    map['FlgIndIE'] = flgIndIE;
    map['Cep'] = cep;
    map['IdCid'] = idCid;
    map['Uf'] = uf;
    map['Fone'] = fone;
    map['Fone2'] = fone2;
    map['Celular'] = celular;
    map['Email'] = email;

    map['Cid'] = cidade != null ? cidade!.toMap() : null;
    map['LstMov'] = lstMov;
    map['LstUsr'] = lstUsr;
    map['ChkDel'] = chkDel;
    map['UTCTag'] = uTCTag;
    map['IdEmp'] = idEmp;
    map['FlgAt'] = flgAt;
    map['Id'] = intId;
    map['MdOrig'] = mdOrig;
    map['Sfrig'] = sfrig;
    return map;
  }
}

class CidadeT {
  String? id;
  String? descx;
  int? idUf;
  int? ibge;
  UF? uf;
  String? lstMov;
  int? lstUsr;
  int? chkDel;
  int? uTCTag;
  int? idEmp;
  int? flgAt;
  int? intId;
  int? mdOrig;
  int? sfrig;

  CidadeT(
      {this.id,
      this.descx,
      this.idUf,
      this.ibge,
      this.uf,
      this.lstMov,
      this.lstUsr,
      this.chkDel,
      this.uTCTag,
      this.idEmp,
      this.flgAt,
      this.intId,
      this.mdOrig,
      this.sfrig});

  CidadeT.fromMap(Map<String, dynamic> map) {
    id = map['\$id'];
    descx = map['Descx'];
    idUf = map['IdUf'];
    ibge = map['Ibge'];
    uf = map['Uf'] == null ? null : UF.fromMap((map['Uf']));

    lstMov = map['LstMov'];
    lstUsr = map['LstUsr'];
    chkDel = map['ChkDel'];
    uTCTag = map['UTCTag'];
    idEmp = map['IdEmp'];
    flgAt = map['FlgAt'];
    intId = map['Id'];
    mdOrig = map['MdOrig'];
    sfrig = map['Sfrig'];
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> map = Map<String, dynamic>();
    map['\$id'] = id;
    map['Descx'] = descx;
    map['IdUf'] = idUf;
    map['Ibge'] = ibge;
    map['Uf'] = uf != null ? uf!.toMap() : null;

    map['LstMov'] = lstMov;
    map['LstUsr'] = lstUsr;
    map['ChkDel'] = chkDel;
    map['UTCTag'] = uTCTag;
    map['IdEmp'] = idEmp;
    map['FlgAt'] = flgAt;
    map['Id'] = intId;
    map['MdOrig'] = mdOrig;
    map['Sfrig'] = sfrig;
    return map;
  }
}

class UF {
  String? id;
  String? descx;
  String? sig;
  int? ibge;
  int? idPais;
  Pais? pais;
  String? lstMov;
  int? lstUsr;
  int? chkDel;
  int? uTCTag;
  int? idEmp;
  int? flgAt;
  int? intId;
  int? mdOrig;
  int? sfrig;

  UF(
      {this.id,
      this.descx,
      this.sig,
      this.ibge,
      this.idPais,
      this.pais,
      this.lstMov,
      this.lstUsr,
      this.chkDel,
      this.uTCTag,
      this.idEmp,
      this.flgAt,
      this.intId,
      this.mdOrig,
      this.sfrig});

  UF.fromMap(Map<String, dynamic> map) {
    id = map['\$id'];
    descx = map['Descx'];
    sig = map['Sig'];
    ibge = map['Ibge'];
    idPais = map['IdPais'];
    pais = map['Pais'] == null ? null : Pais.fromMap((map['Pais']));

    lstMov = map['LstMov'];
    lstUsr = map['LstUsr'];
    chkDel = map['ChkDel'];
    uTCTag = map['UTCTag'];
    idEmp = map['IdEmp'];
    flgAt = map['FlgAt'];
    intId = map['Id'];
    mdOrig = map['MdOrig'];
    sfrig = map['Sfrig'];
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> map = Map<String, dynamic>();
    map['\$id'] = id;
    map['Descx'] = descx;
    map['Sig'] = sig;
    map['Ibge'] = ibge;
    map['IdPais'] = idPais;
    map['Pais'] = pais != null ? pais!.toMap() : null;

    map['LstMov'] = lstMov;
    map['LstUsr'] = lstUsr;
    map['ChkDel'] = chkDel;
    map['UTCTag'] = uTCTag;
    map['IdEmp'] = idEmp;
    map['FlgAt'] = flgAt;
    map['Id'] = intId;
    map['MdOrig'] = mdOrig;
    map['Sfrig'] = sfrig;
    return map;
  }
}

class Pais {
  String? id;
  String? descx;
  String? bacen;
  String? comex;
  String? lstMov;
  int? lstUsr;
  int? chkDel;
  int? uTCTag;
  int? idEmp;
  int? flgAt;
  int? intId;
  int? mdOrig;
  int? sfrig;

  Pais(
      {this.id,
      this.descx,
      this.bacen,
      this.comex,
      this.lstMov,
      this.lstUsr,
      this.chkDel,
      this.uTCTag,
      this.idEmp,
      this.flgAt,
      this.intId,
      this.mdOrig,
      this.sfrig});

  Pais.fromMap(Map<String, dynamic> map) {
    id = map['\$id'];
    descx = map['Descx'];
    bacen = map['Bacen'];
    comex = map['Comex'];
    lstMov = map['LstMov'];
    lstUsr = map['LstUsr'];
    chkDel = map['ChkDel'];
    uTCTag = map['UTCTag'];
    idEmp = map['IdEmp'];
    flgAt = map['FlgAt'];
    intId = map['Id'];
    mdOrig = map['MdOrig'];
    sfrig = map['Sfrig'];
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> map = Map<String, dynamic>();
    map['\$id'] = id;
    map['Descx'] = descx;
    map['Bacen'] = bacen;
    map['Comex'] = comex;
    map['LstMov'] = lstMov;
    map['LstUsr'] = lstUsr;
    map['ChkDel'] = chkDel;
    map['UTCTag'] = uTCTag;
    map['IdEmp'] = idEmp;
    map['FlgAt'] = flgAt;
    map['Id'] = intId;
    map['MdOrig'] = mdOrig;
    map['Sfrig'] = sfrig;
    return map;
  }
}