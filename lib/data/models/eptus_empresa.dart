class Empresa {
  String id;
  int idInt;
  String rSoc;
  String fant;
  String noSre;
  String cSac;
  String wSac;
  String cdSac;
  String ufSac;
  String emSac;
  String vrs;
  
  String? ip;
  String? porta;
  Empresa(
      {required this.id,
      required this.idInt,
      required this.rSoc,
      required this.fant,
      required this.noSre,
      required this.cSac,
      required this.wSac,
      required this.cdSac,
      required this.ufSac,
      required this.emSac,
      required this.vrs,
      this.ip,
      this.porta
      });

  static fromJson(Map<String, dynamic> map) {
    return Empresa(
        id: map["\$id"],
        idInt: map["Id"],
        rSoc: map["RSoc"],
        fant: map["Fant"],
        noSre: map["NoSre"],
        cSac: map["CSac"],
        wSac: map["WSac"],
        cdSac: map["CdSac"],
        ufSac: map["UfSac"],
        emSac: map["EmSac"],
        vrs: map["Vrs"]);
  }
}

List<Empresa> listaTeste = [
  Empresa(
      id: "1",
      idInt: 1,
      rSoc: "rSoc",
      fant: "COMPANHIA DO PESCADO",
      noSre: "noSre",
      cSac: "cSac",
      wSac: "wSac",
      cdSac: "cdSac",
      ufSac: "ufSac",
      emSac: "emSac",
      vrs: "vrs"),
       Empresa(
      id: "2",
      idInt: 2,
      rSoc: "rSoc2",
      fant: "RECANTO DA PEIXADA",
      noSre: "noSre2",
      cSac: "cSac2",
      wSac: "wSac2",
      cdSac: "cdSac2",
      ufSac: "ufSac2",
      emSac: "emSac2",
      vrs: "vrs2"),
       Empresa(
      id: "3",
      idInt: 3,
      rSoc: "rSoc3",
      fant: "EPTUS DEV",
      noSre: "noSre3",
      cSac: "cSac3",
      wSac: "wSac3",
      cdSac: "cdSac3",
      ufSac: "ufSac3",
      emSac: "emSac3",
      vrs: "vrs3"),
];
