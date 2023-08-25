import 'package:flutter/material.dart';
import 'package:state_management_exercises/core.dart';
import '../controller/http_request_controller.dart';

class HttpRequestView extends StatefulWidget {
  const HttpRequestView({Key? key}) : super(key: key);

  Widget build(context, HttpRequestController controller) {
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
              ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        backgroundImage: const NetworkImage(
                          "https://i.ibb.co/QrTHd59/woman.jpg",
                        ),
                      ),
                      title: const Text("Jessica Doe"),
                      subtitle: const Text("Programmer"),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Get Users"),
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Reset"),
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
      List users = [];
      
      Method
      getUsers(){}
      T: Get Users button
      A: Membuat http request dengan dio, gunakan snippet dio_get
         Ambil response-nya,
         Dibagian bawah function,
         gunakan:
         users = obj["data"];
         setState((){});
      
      reset(){}
      T: Reset Button
      A: Menghapus users menjadi kosong

      Catatan
      Panggil method getUsers() di dalam initState
      [HOT-Restart] dulu ya setelah memanggil kode ini
      
      UI Effect:
      Tampilkan list users ke dalam List.
      Tambahkan kode di itemBuilder:
      Map<String,dynamic> item = controller.users[index];

      Tampilkan item["avatar"] di bagian leading image
      Tampilkan item["first_name"] di bagian title
      Tampilkan item["email"] di bagian subtitle
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
  State<HttpRequestView> createState() => HttpRequestController();
}
