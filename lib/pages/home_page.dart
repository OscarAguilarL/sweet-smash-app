import 'package:flutter/material.dart';
import 'package:sweet_smash_app/config.dart';
import 'package:sweet_smash_app/modules/products/models/get_all_products_response_model.dart';
import 'package:sweet_smash_app/modules/products/services/products_services.dart';
import 'package:sweet_smash_app/modules/products/widgets/products_list.dart';
import 'package:sweet_smash_app/services/shared_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Config.appName),
        elevation: 0,
        actions: [
          //* CART
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined),
          ),

          //* LOGOUT
          IconButton(
            onPressed: () {
              SharedService.logout(context);
            },
            icon: const Icon(Icons.logout_rounded),
            color: Colors.black,
          ),
        ],
      ),
      backgroundColor: Colors.grey[200],
      body: FutureBuilder(
        future: ProductsServices.getAllProducts(),
        builder: (BuildContext context, AsyncSnapshot<List<Product>> model) {
          if (model.hasData) {
            return ProductsList(products: model.data!);
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
