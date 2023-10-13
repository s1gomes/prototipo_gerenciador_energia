import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:gerenciador_energia/data/models/eptus_empresa.dart';
import 'package:gerenciador_energia/repositories/eptus_login_repository.dart';

class DropMenuLoginServidor extends StatefulWidget {
  const DropMenuLoginServidor({super.key});
  static Empresa? selectedValue;
  static bool selected = false;

  @override
  State<DropMenuLoginServidor> createState() => _DropMenuLoginServidorState();

  static Empresa? getSelectedValue() {
    return selectedValue;
  }
}

class _DropMenuLoginServidorState extends State<DropMenuLoginServidor> {
  final TextEditingController textEditingController = TextEditingController();
  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: FutureBuilder(
          future: LoginRepository.recuperandoEmpresa(),
          builder: (_, snapshot) {
              return DropdownButtonHideUnderline(
                child: DropdownButton2(
                  menuItemStyleData: const MenuItemStyleData(
                    padding: EdgeInsets.only(left: 5.0),
                  ),
                  isExpanded: true,
                  hint: const Text(
                    'Selecione a filial',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                  items: snapshot.data!
                  .map((item) => DropdownMenuItem(
                    value: item, 
                    child: Text(
                      item.fant,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white
                      ),
                    )
                    )).toList(),
                    value: DropMenuLoginServidor.selectedValue, 
                    onChanged: (value) {
                      setState(() {
                        DropMenuLoginServidor.selectedValue = value as Empresa;
                        DropMenuLoginServidor.selected = true;
                      });
                    },
                    buttonStyleData: const ButtonStyleData( 
                      padding: EdgeInsets.only(left: 10.0)
                    ),
                    dropdownSearchData: DropdownSearchData(
                      searchMatchFn:  (item, searchValue) {
                      return (item.value.toString().contains(searchValue));
                    },
                      searchController: textEditingController,
                      searchInnerWidgetHeight: 150,                      
                      searchInnerWidget: Padding(
                      padding: 
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 2.0),
                      child: TextFormField(
                        controller: textEditingController,
                        decoration: InputDecoration(
                          isDense: true,
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 8
                          ),
                          hintText: 'Procure a filial.',
                          hintStyle: const TextStyle(
                            fontSize: 13, 
                            color: Colors.white
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          )
                        ),
                      ),
                    ),
                    ),
                    dropdownStyleData: const DropdownStyleData(
                      maxHeight: 200,
                      decoration: BoxDecoration(
                        color: Color(0xff2e3133),
                        )
                      ),
                    onMenuStateChange: (isOpen) {
                      if (!isOpen) {
                        textEditingController.clear();
                      }
                    },
                  )
                );
              },
            )
          ),
        );
      }
    }