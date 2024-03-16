import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Card(
          child: Row(
            children: [
              FaIcon(FontAwesomeIcons.magnifyingGlass),
              SizedBox(
                width: 10,
              ),
              Text('Marka, ürün ve ya kategori ara')
            ],
          ),
        ),
        actions: const [
          FaIcon(FontAwesomeIcons.envelope),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: FaIcon(FontAwesomeIcons.bell),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color.fromARGB(255, 98, 94, 94),
            ),
            label: 'Anasayfa',
          ),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.circle), label: 'Kategoriler'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: Color.fromARGB(255, 98, 94, 94),
              ),
              label: 'Favorilerim'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: Color.fromARGB(255, 98, 94, 94),
              ),
              label: 'Sepetim'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Color.fromARGB(255, 98, 94, 94),
              ),
              label: 'Hesabım'),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: SizedBox(
                height: 100,
                child: Card(
                  child: PageView(
                    children: [
                      Image.network(
                          fit: BoxFit.fill,
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQDGQ55_znshhGDlxv5sDZz96tD3hxPc5j8CVWMKvJcw&s'),
                      Image.network(
                          fit: BoxFit.fill,
                          'https://qph.cf2.quoracdn.net/main-qimg-a8cafcc4acb60054c65bd209e7f5cc79.webp'),
                      Image.network(
                          fit: BoxFit.fill,
                          'https://preview.redd.it/185xihbktbn21.jpg?auto=webp&s=b1f19d0a3b858e71ee1228d95bac2c9bacbb31e8'),
                      Image.network(
                          fit: BoxFit.fill,
                          'https://picsum.photos/seed/picsum/200/300'),
                      Image.network(
                          fit: BoxFit.fill,
                          'https://picsum.photos/200/300?grayscale')
                    ],
                  ),
                ),
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
              height: 200,
              child: Image.network(
                  fit: BoxFit.fill, 'https://picsum.photos/200/300/?blur'),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            height: 150,
            child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.network(
                            'https://i.pinimg.com/236x/17/08/eb/1708eb7bfd99d208593012a8b1ebae29.jpg'),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadiusDirectional.circular(30),
                        child: Image.network(
                            'https://media.istockphoto.com/id/1470130937/photo/young-plants-growing-in-a-crack-on-a-concrete-footpath-conquering-adversity-concept.webp?b=1&s=170667a&w=0&k=20&c=IRaA17rmaWOJkmjU_KD29jZo4E6ZtG0niRpIXQN17fc='),
                      ),
                      Image.network(
                          'https://i.seadn.io/gae/2hDpuTi-0AMKvoZJGd-yKWvK4tKdQr_kLIpB_qSeMau2TNGCNidAosMEvrEXFO9G6tmlFlPQplpwiqirgrIPWnCKMvElaYgI-HiVvXc?auto=format&dpr=1&w=1000'),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
