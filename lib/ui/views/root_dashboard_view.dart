import 'package:flutter/material.dart';

import '../cards/white_card.dart';
import '../labels/custom_labels.dart';

class RootDashboardView extends StatelessWidget {
  const RootDashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      // ignore: prefer_const_constructors
      physics: ClampingScrollPhysics(),
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        // ignore: prefer_const_constructors
        Text('Root Dashboard view', style: CustomLabels.h1),
        const SizedBox(
          height: 10,
        ),
        // ignore: prefer_const_constructors
        WhiteCard(
          //Titulo puede ser opcional
          title: 'Titulo hola mundo',
          //Se agrego un widget de texto para darle un atributo de texto
          child: Text('Hola mundo', style: CustomLabels.p),
        ),
      ],
    );
  }
}
