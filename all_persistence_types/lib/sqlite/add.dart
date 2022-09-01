import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddPerson extends StatelessWidget {
  AddPerson({Key? key}) : super(key: key);

  final Text title = const Text("Nova Pessoa");
  final EdgeInsets padding = const EdgeInsets.all(16);
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _lastController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: title),
      body: Padding(
        padding: padding,
        child: Form(
            key: _formKey,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              TextFormField(
                decoration:
                    const InputDecoration(hintText: "Nome", labelText: "Nome"),
                controller: _nameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Digita o nome direito seu burro";
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: "Sobrenome", labelText: "Sobrenome"),
                controller: _lastController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Digita o Sobrenome direito seu burro";
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: "Endereço", labelText: "Endereço"),
                controller: _addressController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Digita o endereço direito seu burro";
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: ElevatedButton(
                    child: const Text("Gravar"),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Language language = Language(
                        //     _nameController.text, _descriptionController.text);

                        // Navigator.pop(context, language);
                      }
                    }),
              )
            ])),
      ),
    );
  }
}
