import 'package:flutter/material.dart';
import 'package:state_management_exercises/core.dart';
import '../controller/timer_controller.dart';

class TimerView extends StatefulWidget {
  const TimerView({Key? key}) : super(key: key);

  Widget build(context, TimerController controller) {
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
              const Text(
                "20:30",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
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
                    child: const Text("Start"),
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  ElevatedButton(
                    onPressed: () {},
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
DateTime date = DateTime.now();
Timer? timer;

Method
startTimer(){}
T: Start button
A: Menjalankan timer setiap 1 detik sekali, dan mengubah nilai date menjadi DateTime.now()

stopTimer(){}
T: Stop button
A: Mengancel timer, gunakan timer?.cancel();

Catatan:
Jangan lupa tambahkan kode ini dalam dispose(),
timer?.cancel();

UI Effect:
Gunakan DateFormat("kk:mm").format(controller.date)
Untuk mengambil jam saat ini.
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
  State<TimerView> createState() => TimerController();
}
