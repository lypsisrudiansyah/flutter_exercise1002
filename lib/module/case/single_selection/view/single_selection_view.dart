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
                  itemCount: controller.categories.length,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.zero,
                  clipBehavior: Clip.none,
                  itemBuilder: (context, index) {
                    String category = controller.categories[index];
                    bool isSelected = index == controller.selectedIndex;
                    return GestureDetector(
                      onTap: () => controller.updateSelectedIndex(index),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 8.0,
                        ),
                        margin: const EdgeInsets.only(
                          right: 12.0,
                        ),
                        decoration:  BoxDecoration(
                          color: isSelected ? Colors.black : Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x19000000),
                              blurRadius: 24,
                              offset: Offset(0, 11),
                            ),
                          ],
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              8.0,
                            ),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            category,
                            style:  TextStyle(
                              fontSize: 14.0,
                              color: isSelected ? Colors.white : Colors.black
                            ),
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
