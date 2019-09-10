import 'package:flutter/material.dart';
import 'package:flutter_food_recipes/detail.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Food Recipes'),
        ),
        body: foodRecipesView(),
      ),
    );
  }

  GridView foodRecipesView() => GridView.builder(
      itemCount: foodName.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, index) => Center(
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              child: ListTile(
                title: Column(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.all(5.0)),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network(foodImage[index], width: 300, height: 100, fit: BoxFit.cover,),
                    ),
                    SizedBox(height: 10),
                    Text(foodName[index], style: TextStyle(color: Colors.blueGrey, fontSize: 13),)
                  ],
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (BuildContext context) => DetailScreen(
                        foodImage: foodImage[index],
                        foodName: foodName[index],
                        foodIngredients: foodIngredients[index],
                      )));
                },
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
    '1/2 kg sayap ayam\n1 sachet tepung bumbu sasa',
    '1 ekor ayam, potong sesuai selera\n2 batang serai, ambil bagian putihnya, memarkan\n4 lembar daun salam\n20 gr asam jawa, larutkan dan remas-remas dalam 3 sdm air panas, ambil airnya\n500 ml air kelapa',
    '1 ekor ayam pejantan\n3 Liter Air\n4 butir kemiri dihaluskan\n3 siung bawang putih, geprek\n3 ruas lengkuas\n3 lembar daun jeruk\n1 sdm ketumbar bubuk\nGaram, secukupnya',
    '1/2 potong dada ayam, potong kecil\n2 bks tepung serba guna\n4 siung bawang putih, haluskan\n1 bks saus tiram\nSaus tomat, secukupnya\nSaus sambal, secukupnya\nMerica, secukupnya\nKaldu bubuk Alsultan Non MSG Ayam, secukupnya\nAir, secukupnya\nMinyak untuk menggoreng',
    '2 liter air\n300 gr daging sapi sandung lamur, portong-potong\n2 cm jahe, memarkan\n3 sdm minyak untuk menumis\n2 batang serai, memarkan\n2 cm lengkuas, memarkan\n50 gr lobak, iris tipis\n1 batang seledri, cincang halus\n1 batang daun bacang, iris\n1 sdt gula pasir\nGaram secukupnya\n1 sdm bawang merah goreng\n50 gr kacang kedelai, goreng',
    '300 gr tahu puti\n1 sdt kaldu ayam (bisa pakai Alsultan)\n1/2 sdt gula pasir\n1/4 sdt merica bubuk\n1/4 sdt bawang putih bubuk\n1 butir putih telur',
    '100 gr ayam giling\n10 butir telur puyuh, rebus\n1 buah tahu putih\n1 bks mie telur\n1 butir telur\n2 siung bawang putih, haluskan\n1/2 sdt lada bubuk\n1/2 sdt garam\nMinyak, untuk menggoreng',
    '400g daging sapi giling\n½ btr bawang bombay\n1btr telur\n¼ sdt pala bubuk\n50g tepung roti\n3 sdm mentega\n1 bks Masako Sapi (7,5 g) (optional)',
    'Salmon segar, jika masih ada kulitnya tidak apa.\n1 cup cream masak\n100 cc white wine (bisa diganti dengan air)\n1 buah bawang merah, dipotong kecil- kecil\nDaun parseley, diiris halus\nMentega secukupnya untuk menggoreng salmon\nGaram\nLada hitam\n½ buah buah lemon segar, ambil airnya',
    '1 mangkok nasi\n1 butir telur\nKeju parut\nGaram secukupnya\nLada sedikit\nKeju cheddar, potong kotak (untuk isian)\nTepung panir',
  ];

//Source : https://resepkoki.co/resep-masakan/
}
