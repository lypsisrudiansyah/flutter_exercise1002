import 'package:flutter/material.dart';
import 'package:state_management_exercises/core.dart';
import '../controller/game_controller.dart';

class GameView extends StatefulWidget {
  const GameView({Key? key}) : super(key: key);

  Widget build(context, GameController controller) {
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
              GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.0,
                  crossAxisCount: 3,
                  mainAxisSpacing: 6,
                  crossAxisSpacing: 6,
                ),
                itemCount: 9,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    color: Colors.orange,
                    child: const FittedBox(
                      child: Text(
                        "",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Reset"),
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
int turns = 1;
List values = ["","","","","","","","",""];

Method
updateBoard(int newIndex){}
T: Ketika Container di dalam Grid di klik
A: Mengubah nilai values[newIndex] menjadi X jika turns adalah bilangan genap
   Mengubah nilai values[newIndex] menjadi O jika turns adalah bilangan ganjil
   Mengubah turns dengan turns++;
   Terapkan early return jika turns == 9
     if(turns == 9) return;

resetBoard(){}
T: Reset button
A: Mengubah nilau values menjadi ["","","","","","","","",""]; 
   Mreset turns menjadi 1

UI Effect:
- Menampilkan values ke dalam GridView.
- Menampilkan nilai dari values ke dalam Text di dalam Container oren
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
  State<GameView> createState() => GameController();
}
