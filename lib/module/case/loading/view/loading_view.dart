import 'package:flutter/material.dart';
import 'package:state_management_exercises/core.dart';
import '../controller/loading_controller.dart';

class LoadingView extends StatefulWidget {
  const LoadingView({Key? key}) : super(key: key);

  Widget build(context, LoadingController controller) {
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
              const CircularProgressIndicator(),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Show loading"),
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Hide loading"),
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
bool loading = false;

Tambahkan method:
showLoading() {}
hideLoading() {}

Method showLoading,
akan mengubah nilai loading menjadi true

Method hideLoading,
akan mengubah nilai loading jadi false

Panggil method showLoading ketika tombol Show loading di click
Panggil method hideLoading ketika tombol Hide loading di click

UI Effect:
Tampilkan circularprogressindicator jika loading == true
Sembunyikan circularprogressindicator jika loading == false
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
  State<LoadingView> createState() => LoadingController();
}
