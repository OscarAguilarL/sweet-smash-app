import 'package:flutter/material.dart';
import 'package:sweet_smash_app/modules/products/models/get_all_products_response_model.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(product.images[0]),
      title: Text(product.label),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(product.description),
          const SizedBox(height: 3),
          Text("Precio: \$${product.unitPrice}"),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              //* LOGICA PARA AGREGAR AL CARRITO
            },
            child: const Text("Agregar al carrito"),
          )
        ],
      ),
    );
  }
}
