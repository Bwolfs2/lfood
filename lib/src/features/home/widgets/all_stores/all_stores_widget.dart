import 'package:flutter/material.dart';
import 'package:pepperoni/pepperoni.dart';

class AllStoresWidget extends StatefulWidget {
  final TabController tabController;
  const AllStoresWidget({Key? key, required this.tabController})
      : super(key: key);

  @override
  State<AllStoresWidget> createState() => _AllStoresWidgetState();
}

class _AllStoresWidgetState extends State<AllStoresWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CategoryListWidget(
          items: [
            CategoryListItem(
                onTap: (item) {
                  widget.tabController.animateTo(1);
                },
                label: 'Restaurantes',
                imageUrl:
                    'https://images.tcdn.com.br/img/img_prod/326825/pao_de_hamburguer_bambini_tradicional_com_embalagem_individual_90g_cx_30_unidades_cod_318_46_4_20190426165419.png'),
            CategoryListItem(
                onTap: (item) {
                  widget.tabController.animateTo(2);
                },
                label: 'Mercado',
                imageUrl:
                    'https://cdn.w600.comps.canstockphoto.com.br/fachada-pequeno-loja-mercado-cena-cliparte-vetor_csp86637403.jpg'),
            CategoryListItem(
                onTap: (item) {
                  widget.tabController.animateTo(3);
                },
                label: 'Bebidas',
                imageUrl:
                    'https://static1.minhavida.com.br/articles/fb/8e/3b/b2/bebidas-destiladas-e-fermentadas-orig-1.jpg'),
            CategoryListItem(
                onTap: (item) {
                  widget.tabController.animateTo(4);
                },
                label: 'Farmacia',
                imageUrl:
                    'https://idec.org.br/sites/default/files/dicasedireitos/imagem_noticia_1_0.png'),
            CategoryListItem(
                onTap: (item) {
                  widget.tabController.animateTo(5);
                },
                label: 'Pet',
                imageUrl:
                    'https://www.amoviralata.com/wp-content/uploads/2021/06/nome-pet-shop.png'),
            CategoryListItem(
                onTap: (item) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Container(color: Colors.red),
                    ),
                  );
                },
                label: 'Clube Lfood',
                imageUrl:
                    'https://pbs.twimg.com/profile_images/1406730683595341828/H2SAhdvB_400x400.jpg'),
            CategoryListItem(
                onTap: (item) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Container(color: Colors.yellow),
                    ),
                  );
                },
                label: 'Feed',
                imageUrl:
                    'https://i.pinimg.com/originals/7a/e2/0e/7ae20e8b68ebab2473bef78abfca6662.jpg'),
          ],
        ),
        const CouponsAndNewsWidget(
          imageList: [
            'http://ifood.com.br/nws/2018-09-28-tudo-por-5/images/header_tudo_5_v3.gif',
            'https://gkpb.com.br/wp-content/uploads/2020/03/ifood-tudo-por-099-geek-publicitario.jpg',
            'http://ifood.com.br/nws/2018-09-28-tudo-por-5/images/header_tudo_5_v3.gif',
            'https://gkpb.com.br/wp-content/uploads/2020/03/ifood-tudo-por-099-geek-publicitario.jpg',
            'http://ifood.com.br/nws/2018-09-28-tudo-por-5/images/header_tudo_5_v3.gif',
            'https://gkpb.com.br/wp-content/uploads/2020/03/ifood-tudo-por-099-geek-publicitario.jpg',
            'http://ifood.com.br/nws/2018-09-28-tudo-por-5/images/header_tudo_5_v3.gif',
            'https://gkpb.com.br/wp-content/uploads/2020/03/ifood-tudo-por-099-geek-publicitario.jpg',
          ],
        ),
        const SizedBox(height: 16),
        const AdvertisingWidget(
          imageUrl:
              'https://gkpb.com.br/wp-content/uploads/2020/03/ifood-tudo-por-099-geek-publicitario.jpg',
        ),
        const SizedBox(height: 16),
        BestRestaurantsWidget(
          restaurants: List.generate(
            10,
            (index) => BestRestaurantItem(
              urlImage:
                  'http://ifood.com.br/nws/2018-09-28-tudo-por-5/images/header_tudo_5_v3.gif',
              id: index,
              name: '$index - Subway Sao Pelegrino',
            ),
          ),
        ),
        const SizedBox(height: 16),
        const FastMEnuWidget(),
        const SizedBox(height: 16),
        StoreList(
          stores: List.generate(
            10,
            (index) => StoreItem(
                storeName: 'Mc Donands $index',
                rate: '${index / 2}',
                price: '4.9',
                time: '${25 + index}',
                kindOfItem: 'Lanche',
                imageUrl:
                    'https://gkpb.com.br/wp-content/uploads/2020/03/ifood-tudo-por-099-geek-publicitario.jpg'),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
