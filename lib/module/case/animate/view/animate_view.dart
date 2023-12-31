import 'package:flutter/material.dart';
import 'package:state_management_exercises/core.dart';

class AnimateView extends StatefulWidget {
  const AnimateView({Key? key}) : super(key: key);

  Widget build(context, AnimateController controller) {
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
              AnimatedContainer(
                duration: const Duration(milliseconds: 900),
                height: 100,
                width: controller.animated == false ? 100 : Get.width,
                decoration:  BoxDecoration(
                  color: controller.animated == false ? Colors.red : Colors.blue,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => controller.doAnimation(),
                    child: const Text("Start"),
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  ElevatedButton(
                    onPressed: () => controller.resetAnimation(),
                    child: const Text("Stop"),
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
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
bool animated = false;

Method
doAnimation(){}
T: Start button
A: Mengubah animated menjadi true

resetAnimation(){}
T: Stop button
A: Mengubah nilai animated menjadi false

UI Effect:
animated == true, Ubah lebar container menjadi full width
animated == false, ubah lebar container menjadi 100
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
  State<AnimateView> createState() => AnimateController();
}
