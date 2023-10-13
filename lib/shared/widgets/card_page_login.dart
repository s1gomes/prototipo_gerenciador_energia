import 'package:flutter/material.dart';
import 'package:gerenciador_energia/pages/page_adc_server_login.dart';
import 'package:gerenciador_energia/shared/widgets/dropdownMenu_login_eptus.dart';

class CardLogin extends StatefulWidget {
  const CardLogin({super.key});

  @override
  State<CardLogin> createState() => _CardLoginState();
}

class _CardLoginState extends State<CardLogin> {
  var emailController = TextEditingController(text: "");
  var senhaController = TextEditingController(text: "");
  bool isObscureText = true;
  bool isAdmin = false;
  
  @override
  Widget build(BuildContext context) {
    return Center(
                  child: Card (
                    color: const Color.fromRGBO(60, 62, 64, 1),
                    elevation: 7,
                    shadowColor: const Color.fromARGB(255, 140, 139, 140),
                    child: SizedBox(
                      height: 400,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                            Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              child: Row(
                                children: [
                                  const Text(
                                    "Dados Login",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 247, 142),
                                      fontSize: 29,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    textAlign: TextAlign.left,
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Visibility(
                                        visible: isAdmin,
                                        child: IconButton(
                                          onPressed: () {Navigator.push(
                                            context, 
                                            MaterialPageRoute(
                                            builder: (context) => const CadastroServidorLogin()));
                                            }, 
                                          icon: const Icon(Icons.settings,
                                          color: Colors.white)
                                          ),
                                      ),
                                    )
                                ],
                              ),
                              ),
                            ),
                           Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              child: Container(
                                height: 50,
                                child: DropMenuLoginServidor()
                                // ajeitar dropdown menu para receber os servidores
                              )
                            ),
                          ),
                            Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            child: TextField(
                                controller: emailController,
                                onChanged: (value) {
                                  debugPrint(value);
                                },
                                style: const TextStyle(color: Colors.white),
                                decoration: const InputDecoration(
                                  contentPadding:  EdgeInsets.all(13),
                                  enabledBorder:  OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(18)),
                                    borderSide: BorderSide(
                                      color: Color.fromARGB(255, 241, 217, 30),
                                      width: 2
                                    )),
                                  focusedBorder:  UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color.fromARGB(255, 241, 217, 30)
                                    ),
                                  ),
                                  hintText: "Usuário",
                                  hintStyle: TextStyle(color: Colors.white,
            
                                  ),
                              suffixIcon: Icon(
                                Icons.person, 
                                color:  Color.fromARGB(255, 241, 217, 30))),
                          ),
                          ),
                            Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            child: TextField(
                            controller: senhaController,
                            obscureText: isObscureText,
                            onChanged: (value) {
                              debugPrint(value);
                            },
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              
                              contentPadding:  const EdgeInsets.all(13),
                              enabledBorder:  const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(18)),
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 241, 217, 30),
                                  width: 2
                                )),
                              focusedBorder:  const UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 241, 217, 30)
                                ),
                              ),
                              hintText: "Senha",
                              hintStyle: const TextStyle(color: Colors.white,
            
                              ),
                              suffixIcon: InkWell(
                                              onTap: () {
                                                  setState(() {
                                                    isObscureText = !isObscureText;
                                                  }
                                                );
                                              },
                                              child: Icon(
                                                isObscureText 
                                                    ? Icons.lock 
                                                    : Icons.lock_open,
                                                color: const Color.fromARGB(255, 241, 217, 30),
                                                ),
                                            )
                                          )
                                        ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            child: SizedBox(
                              width: double.infinity,
                              child: TextButton(
                                onPressed: () {
                                  if (
                                  emailController.text.trim() == "admin" &&
                                  senhaController.text.trim() == "123") {
                                    setState(() {
                                      isAdmin = true;
            
                                    });
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(content: Text("Erro ao efetuar o login"))
                                    );
                                  }
                                }, 
                                style: ButtonStyle( 
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                  )
                                ),
                                backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 98, 97, 94))
                                ),
                                child: const Text("Entrar",
                                style: TextStyle(color: Colors.white, 
                                fontSize: 16, 
                                fontWeight: FontWeight.w600),
                                )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                );
  }
}