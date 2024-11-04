import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(
        name: 'Sugar',
        price: 5000,
        link:
            'https://d324bm9stwnv8c.cloudfront.net/Pemanis_Rendah_Kalori_Sebagai_Pengganti_Gula_Pasir,_Amankah-halodoc.jpg',
        rating: 4.7,
        stok: 10),
    Item(
        name: 'Salt',
        price: 2000,
        link:
            'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//89/MTA-28327102/no-brand_no-brand_full01.jpg',
        rating: 4.5,
        stok: 11),
    Item(
        name: 'Pepper',
        price: 3000,
        link:
            'https://d1e3z2jco40k3v.cloudfront.net/-/media/mccormickforchefs2017/our-difference/spice-story/2000/spice-story-black-pepper.jpg?rev=0103f6e819914d24aa469d3c988c16eb&vd=20210604T145011Z&extension=webp&hash=6360C0B87DBD366F70C277B784C27AC0',
        rating: 4.6,
        stok: 40),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TokoPDI'),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 1 / 1.2,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Hero(
                      tag: item.link,
                      child: Image.network(
                        item.link,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    item.name,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const Spacer(),
                                  Icon(Icons.star,
                                      color: Colors.yellow[700], size: 16),
                                  const SizedBox(width: 4),
                                  Text(item.rating.toString()),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          Text('Price: ${item.price}'),
                          const SizedBox(height: 4),
                          Text('Stock: ${item.stok}'),
                          const SizedBox(height: 4),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          child: Center(
            child: Text(
              'Muhammad Ridlo Febrio Putra - 2241720098',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
