import 'package:flutter/material.dart';
import 'package:gerenciador_energia/pages/pageview1.dart';
import 'package:gerenciador_energia/repositories/linguagens_repository.dart';
import 'package:gerenciador_energia/repositories/nivel_repository.dart';
import 'package:gerenciador_energia/shared/widgets/menu_lateral.dart';
import 'package:gerenciador_energia/shared/widgets/text_label.dart';
// import 'package:flutter_application_teste/service/app_bar.dart';

class DadosCadastrais extends StatefulWidget {
  const DadosCadastrais(
    {super.key});

  @override
  State<DadosCadastrais> createState() => _DadosCadastraisState();
}

class _DadosCadastraisState extends State<DadosCadastrais> {
  TextEditingController nomeController = TextEditingController(text: "");
  TextEditingController dataNascController = TextEditingController(text: "");
  DateTime? dataNascimento;
  var nivelRepository = NivelRepository();
  var linguagensRepository = LinguagensRepository();
  var niveis = [];
  var linguagens = [];
  var linguagensSelecionadas = [];
  var nivelSelecionado = "";
  double salarioEscolhido = 0;
  int tempoExperiencia = 0;

  bool salvando = false;


  @override
  void initState() {
    niveis = nivelRepository.retornaNiveis();
    linguagens = linguagensRepository.retornaLinguagens();
    super.initState();
  }

  List<DropdownMenuItem<int>> returnItens(int quantidadeMax) {
    var itens = <DropdownMenuItem<int>>[];
    for (var i = 0; i <= quantidadeMax; i++) {
      itens.add(
        DropdownMenuItem(
                    value: i,
                    child: Text(i.toString() + " ano(s)")
                  ));
    }
    return itens;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dados cadastrais")),
      drawer: const Gaveta(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: salvando ? const Center(
          child: CircularProgressIndicator()) 
        : ListView(
          children: [
           const TextLabel(texto: "Nome"),
              TextField(
                controller: nomeController,
              ),
            const TextLabel(texto: "Data de nascimento"),
              TextField(
                controller: dataNascController,
                readOnly: true,
                onTap: () async {
                 var data = await showDatePicker(
                    context: context, 
                    initialDate: DateTime(2000, 1, 1), 
                    firstDate: DateTime(1900, 1, 1), 
                    lastDate: DateTime.now());
                  if (data != null) {
                    dataNascController.text = data.toString();
                    dataNascimento = data;
                  }
                }),
            const TextLabel(texto: "Nivel de experiência"),
            Column(children: 
            niveis.map((nivel) => RadioListTile(
              title: Text(nivel.toString()),
              selected: nivelSelecionado == nivel,
              value: nivel.toString(), 
              groupValue: nivelSelecionado, 
              onChanged: (value) {
                setState(() {
                  nivelSelecionado = value.toString();  
                });              
              })).toList()
              ),
            const TextLabel(texto: "Linguagens preferidas"),
            Column(
              children: linguagens.map((linguagem) => CheckboxListTile(
                  title: Text(linguagem),
                  value: linguagensSelecionadas.contains(linguagem), 
                  onChanged: (bool? value) {
                    if (value!) {
                      setState(() {
                      linguagensSelecionadas.add(linguagem);
                       });
                    } else {
                      setState(() {
                      linguagensSelecionadas.remove(linguagem);
                       });
                    }
                  })).toList()
              ),
              const TextLabel(texto: "Tempo de experiência"),
               DropdownButton(
                value: tempoExperiencia,
                isExpanded: true,
                items: returnItens(4), 
                onChanged: (value) {
                  setState(() {
                    tempoExperiencia = int.parse(value.toString());
                  });
                }),
              TextLabel(texto: "Pretenção salarial. R\$ ${salarioEscolhido.round().toString()}"),
              Slider(
                min: 0, 
                max: 10000,
                value: salarioEscolhido, 
                onChanged: (double value)
                {
                  setState (()
                  {salarioEscolhido = value;
                  });
                }
                ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                setState(() {
                salvando = false; 
              });
              if (nomeController.text.trim().length <= 1) {
                 ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: 
                              Text("Sem nome? Preencha o campo Nome"))
                          );
                          return;
                }
              if (dataNascimento == null) {
                 ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: 
                              Text("Quando você nasceu? Preencha o campo Data de nascimento"))
                          );
                          return;
                }
              if (nivelSelecionado.trim() == '') {
                 ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: 
                              Text("Você não tem nível de experiência? Preencha o campo Nível de experiência"))
                          );
                          return;
                }
              if (linguagensSelecionadas.isEmpty) {
                 ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: 
                              Text("Não programa em nenhuma das linguagens listadas? Selecione a opção Outras"))
                          );
                          return;
                }
              if (tempoExperiencia == 0) {
                 ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: 
                              Text("Não começou a programar ainda? Pré-requisito da vaga é mínimo de 1 ano de experiência"))
                          );
                          return;
                }
              if (salarioEscolhido == 0) {
                 ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: 
                              Text("Quanto você gostaria de receber? Só pra você desejar mesmo"))
                          );
                          return;
                }

              setState(() {
                salvando = true; 
              });
              Future.delayed(const Duration(seconds: 1), () {
                ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: 
                              Text("Usuário cadastrado")));
                setState(() {
                salvando = false; 
              });
              Navigator.pushReplacement(
                            context, 
                              MaterialPageRoute(
                                builder: (context) => const Pageview1()));
              } );

              
              
            }, 
            child: const Text("Salvar"))
          ],
          
        ),
      )
    );
  }
}