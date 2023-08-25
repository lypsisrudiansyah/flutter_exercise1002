import 'package:flutter/material.dart';
import 'package:state_management_exercises/core.dart';
import '../controller/single_selection_controller.dart';

class SingleSelectionView extends StatefulWidget {
  const SingleSelectionView({Key? key}) : super(key: key);

  Widget build(context, SingleSelectionController controller) {
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
              SizedBox(
                height: 40.0,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.zero,
                  clipBehavior: Clip.none,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      margin: const EdgeInsets.only(
                        right: 12.0,
                      ),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 24,
                            offset: Offset(0, 11),
                          ),
                        ],
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            8.0,
                          ),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          "Category 1",
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    );
                  },
                ),
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
Tambahkan kode ini di Controller:
List categories = ["Apple","Mango","Orange","Banana","Pineapple"];

Tambahkan state:
int selectedIndex = -1;

Tambahkan method:
updateSelectedIndex(int newIndex){}

Ubah selectedIndex menjadi newIndex.

---

Tampilkan isi dari categories ke ListView horizontal di atas.
Tampilkan category-nya di Text (Category 1,dst)

Tambahkan event click pada Category.
Ketika di klik,
Panggil method controller.updateSelectedIndex(index)

Di dalam itemBuilder,
Tambahkan:
bool selected = controller.selectedIndex == index;

Jika dalam keadaan terpilih atau if(selected),
Ubah warna background Category-nya menjadi hitam,
dan text-nya menjadi putih.

Sedangkan jika tidak terpilih,
Ubah warna background-nya jadi putih dan teks-nya jadi hitam.

Klik salah satu category,
Jika itu berubah menjadi terpilih,
Maka tasks ini selesai!

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
  State<SingleSelectionView> createState() => SingleSelectionController();
}
