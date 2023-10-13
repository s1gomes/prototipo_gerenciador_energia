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
// cadastrar eletrodomestico nao listado
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
                    child: Text(i.toString() + " dia(s)")
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
            const TextLabel(texto: "Voltagem"),
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
              const TextLabel(texto: "Dias de Uso"),
               DropdownButton(
                value: tempoExperiencia,
                isExpanded: true,
                items: returnItens(7), 
                onChanged: (value) {
                  setState(() {
                    tempoExperiencia = int.parse(value.toString());
                  });
                }),
              TextLabel(texto: "Preço do Watts. R\$ ${salarioEscolhido.round().toString()}"),
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
              if (linguagensSelecionadas.isEmpty) {
                 ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: 
                              Text("Seu eletrodoméstico não tem uma das voltagens listadas? Selecione a opção Outras"))
                          );
                          return;
                }
              if (tempoExperiencia == 0) {
                 ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: 
                              Text("Escolha os dias de uso."))
                          );
                          return;
                }
              if (salarioEscolhido == 0) {
                 ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: 
                              Text("Não sabe o preço do Watts? Verifique sua conta de energia."))
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
                              Text("Eletrodoméstido cadastrado")));
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