import 'package:flutter/material.dart';
import 'package:state_management_exercises/core.dart';
import '../controller/disabled_button_controller.dart';

class DisabledButtonView extends StatefulWidget {
  const DisabledButtonView({Key? key}) : super(key: key);

  Widget build(context, DisabledButtonController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: Text(toString()),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: () {},
                child: const Text(
                  "Save",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Enable Button"),
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Disable Button"),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Card(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(8.0),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Instruksi",
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                      Divider(),
                      Text(
                        """
State
bool enabled = false;

Tambahkan method:
enableButton(){}
disableButton(){}

Method enableButton,
akan mengubah nilai enabled menjadi true

Method disableButton,
akan mengubah nilai enabled menjadi false

Panggil method enableButton ketika tombol EnableButton di click
Panggil method disableButton ketika tombol DisableButton di click

UI Effect:
Ubah warna button menjadi Colors.grey[400] dengan textColor Colors.grey[900]
jika enabled = false
Ubah warna button menjadi Colors.green dengan textColor Colors.white
jika enabled = true
      """,
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<DisabledButtonView> createState() => DisabledButtonController();
}
