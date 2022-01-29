
import 'package:ecommerce/Shared/colors.dart';
import 'package:ecommerce/models/category_model.dart';
import 'package:ecommerce/models/product_model.dart';
import 'package:ecommerce/presentation/Cart/cartItems.dart';
import 'package:ecommerce/presentation/productitem.dart';
import 'package:flutter/material.dart';

Widget defaultButton({
  required String text,
  required VoidCallback onTap,
}) {
  return ElevatedButton(
      onPressed: onTap,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(mainColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: mainColor),
              ))));
}

// Widget defaultFormField({
//   required TextEditingController controller,
//   required TextInputType type,
//   Function(dynamic val)? onSubmit,
//   Function? onChange,
//   Function? onTap,
//   bool isPassword = false,
//   required Function? validate,
//   required String label,
//   required IconData prefix,
//   IconData? suffix,
//   Function? suffixPressed,
//   bool isClickable = true,
//   bool autofocus = false,
// }) {
//   return TextFormField(
//     controller: controller,
//     autofocus: autofocus,
//     obscureText: isPassword,
//     onTap: () => onTap ?? () {},
//     onChanged: (value) => onChange ?? (value),
//     onFieldSubmitted: (value) => onSubmit!(value),
//     validator: (value) {
//       return validate!(value);
//     },
//     decoration: InputDecoration(
//       focusedBorder: const OutlineInputBorder(
//         borderRadius: BorderRadius.all(Radius.circular(20.0)),
//         borderSide: BorderSide(color: Colors.grey),
//       ),
//       border: const OutlineInputBorder(
//         borderRadius: BorderRadius.all(Radius.circular(20.0)),
//       ),
//       labelText: label,
//       labelStyle: const TextStyle(color: Colors.grey),
//       prefixIcon: Icon(
//         prefix,
//         color: Colors.grey,
//       ),
//       suffixIcon: suffix != null
//           ? IconButton(
//         color: Colors.grey,
//         onPressed: () => suffixPressed,
//         icon: Icon(
//           suffix,
//         ),
//       )
//           : null,
//     ),
//   );
// }

void navigateTo(context, widget) => Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => widget,
  ),
);

void navigateFinish(
    context,
    widget,
    ) =>
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
          (route) {
        return false;
      },
    );

Widget buildGridProducts(Product model, context) {
  return Card(
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image(
              image: NetworkImage('${model.avatar}'),
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          Text(
            '${model.name}',
            maxLines: 2,
            style: TextStyle(fontSize: 16),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: IconButton(
                  onPressed: () {},
                  icon: CircleAvatar(
                    backgroundColor: mainColor,
                    radius: 15.0,
                    child: const Icon(
                      Icons.add,
                      size: 14.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Text(
                '${model.price} EGP',
                style: TextStyle(
                  height: 1.2,
                  fontSize: 16.0,
                  color: mainColor,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget buildCategoriesItem(Category model) {
  return InkWell(
    onTap: () {},
    child: Stack(
      children: [
        Image.network(
          "${model.avatar}",
          height: 200,
        ),
        Center(
          child: Container(
            color: Colors.black38,
            width: 200,
            height: 50,
            child: Center(
                child: Text(
                  "${model.name}",
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
          ),
        ),
      ],
    ),
  );
}

Widget buildCartItem(Cartitems model, context) {
  return Card(
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image(
              image: NetworkImage('${model.image}'),
              width: double.infinity,
              fit: BoxFit.fitHeight,
            ),
          ),
          Text(
            '${model.name}',
            maxLines: 2,
            style: TextStyle(fontSize: 16),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: IconButton(
                  onPressed: () {},
                  icon: CircleAvatar(
                    backgroundColor: mainColor,
                    radius: 15.0,
                    child: const Icon(
                      Icons.add,
                      size: 14.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: IconButton(
                  onPressed: () {},
                  icon: CircleAvatar(
                    backgroundColor: mainColor,
                    radius: 15.0,
                    child: const Icon(
                      Icons.minimize_outlined,
                      size: 14.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Text(
                '${model.price} EGP',
                style: TextStyle(
                  height: 1.2,
                  fontSize: 16.0,
                  color: mainColor,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
