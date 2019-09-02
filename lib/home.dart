import 'package:flutter/material.dart';
import 'package:flutter_food_recipes/detail.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        appBar: new AppBar(
          title: const Text('Food Recipes'),
        ),
        body: FoodRecipesView(),
      ),
    );
  }

  GridView FoodRecipesView() => GridView.builder(
      itemCount: foodName.length,
      gridDelegate:
          new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, index) => Center(
            child: ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => DetailScreen(
                              FoodName: foodName[index],
                              FoodImage: foodImage[index],
                              FoodIngredients: foodIngredients[index],
                            )));
              },
              title: Column(
                children: <Widget>[
                  Image.network(foodImage[index], width: 380, height: 130, fit: BoxFit.cover,),
                  Text(foodName[index])
                ],
              ),
            ),
          ));

  List<String> foodName = [
    'Richeese Fire Wings ala Rumahan',
    'Ayam Bakar Happy Call Praktis',
    'Ayam Presto Tulang Lunak',
    'Ayam Saus Pedas ala Korea',
    'Resep Soto Daging Kuah Bening',
    'Tahu Bulat Isi Sosis',
    'Bola Tahu Rambutan',
    'Steak Daging Giling Yummy Rumahan',
    'Salmon Panggang Saos Lemon',
    'Resep Nasi Kepal Keju',
  ];

  List<String> foodImage = [
    'https://resepkoki.co/wp-content/uploads/2019/03/richeese-fire-wings-05.jpg',
    'https://resepkoki.co/wp-content/uploads/2019/03/ayam-bakar-HP-07.jpg',
    'https://resepkoki.co/wp-content/uploads/2018/12/ayam-presto-tulang-lunak-01.jpg',
    'https://resepkoki.co/wp-content/uploads/2018/10/ayam-saus-pedas-korea-01.jpg',
    'https://resepkoki.co/wp-content/uploads/2016/10/soto-kuah-bening.jpg',
    'https://resepkoki.co/wp-content/uploads/2017/02/tahu-bulat-sosis.jpg',
    'https://resepkoki.co/wp-content/uploads/2019/01/bola-tahu-rambutan-09.jpg',
    'https://resepkoki.co/wp-content/uploads/2016/06/steak-daging-giling-0.jpg',
    'https://resepkoki.co/wp-content/uploads/2017/10/tasty-salmon-lemon-butter-1.jpg',
    'https://resepkoki.co/wp-content/uploads/2016/12/1-nasi-kepal-keju.jpg',
  ];

  List<String> foodIngredients = [
    '=> 1/2 kg sayap ayam\n=> 1 sachet tepung bumbu sasa',
    '=> 1 ekor ayam, potong sesuai selera\n=> 2 batang serai, ambil bagian putihnya, memarkan\n=> 4 lembar daun salam\n=> 20 gr asam jawa, larutkan dan remas-remas dalam 3sdm air panas, ambil airnya\n=> 500 ml air kelapa',
    '=> 1 ekor ayam pejantan\n=> 3 Liter Air\n=> 4 butir kemiri dihaluskan\n=> 3 siung bawang putih, geprek\n=> 3 ruas lengkuas\n=> 3 lembar daun jeruk\n=> 1 sdm ketumbar bubuk\n=> Garam, secukupnya',
    '=> 1/2 potong dada ayam, potong kecil\n=> 2 bks tepung serba guna\n=> 4 siung bawang putih, haluskan\n=> 1 bks saus tiram\n=> Saus tomat, secukupnya\n=> Saus sambal, secukupnya\n=> Merica, secukupnya\n=> Kaldu bubuk Alsultan Non MSG Ayam, secukupnya\n=> Air, secukupnya\n=> Minyak untuk menggoreng',
    '=> 2 liter air\n=> 300 gr daging sapi sandung lamur, portong-potong\n=> 2 cm jahe, memarkan\n=> 3 sdm minyak untuk menumis\n=> 2 batang serai, memarkan\n=> 2 cm lengkuas, memarkan\n=> 50 gr lobak, iris tipis\n=> 1 batang seledri, cincang halus\n=> 1 batang daun bacang, iris\n=> 1 sdt gula pasir\n=> Garam secukupnya\n=> 1 sdm bawang merah goreng\n=> 50 gr kacang kedelai, goreng',
    '=> 300 gr tahu puti\n=> 1 sdt kaldu ayam (bisa pakai Alsultan)\n=> 1/2 sdt gula pasir\n=> 1/4 sdt merica bubuk\n=> 1/4 sdt bawang putih bubuk\n=> 1 butir putih telur',
    '=> 100 gr ayam giling\n=> 10 butir telur puyuh, rebus\n=> 1 buah tahu putih\n=> 1 bks mie telur\n=> 1 butir telur\n=> 2 siung bawang putih, haluskan\n=> 1/2 sdt lada bubuk\n=> 1/2 sdt garam\n=> Minyak, untuk menggoreng',
    '=> 400g daging sapi giling\n=> ½ btr bawang bombay\n=> 1btr telur\n=> ¼ sdt pala bubuk\n=> 50g tepung roti\n=> 3 sdm mentega\n=> 1 bks Masako Sapi (7,5 g) (optional)',
    '=> Salmon segar, jika masih ada kulitnya tidak apa.\n=> 1 cup cream masak\n=> 100 cc white wine (bisa diganti dengan air)\n=> 1 buah bawang merah, dipotong kecil- kecil\n=> Daun parseley, diiris halus\n=> Mentega secukupnya untuk menggoreng salmon\n=> Garam\n=> Lada hitam\n=> ½ buah buah lemon segar, ambil airnya',
    '=> 1 mangkok nasi\n=> 1 butir telur\n=> Keju parut\n=> Garam secukupnya\n=> Lada sedikit\n=> Keju cheddar, potong kotak (untuk isian)\n=> Tepung panir',
  ];

//Source : https://resepkoki.co/resep-masakan/
}
