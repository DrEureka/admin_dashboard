import 'package:flutter/material.dart';

import '../cards/white_card.dart';
import '../labels/custom_labels.dart';

//Pagina base para el dashboard
class DiseView extends StatelessWidget {
  const DiseView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      // ignore: prefer_const_constructors
      physics: ClampingScrollPhysics(),
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        // ignore: prefer_const_constructors
        Text('Diseños - Pagina base', style: CustomLabels.h1),
        const SizedBox(
          height: 10,
        ),
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.start,
          direction: Axis.horizontal,
          children: const [
            WhiteCard(
              //Titulo puede ser opcional
              title: 'Titulo hola mundo',
              width: 170,
              //Se agrego un widget de texto para darle un atributo de texto
              child: Center(
                child: Icon(Icons.ac_unit_outlined),
              ),
            ),
            WhiteCard(
              //Titulo puede ser opcional
              title: 'iconos varios - titulo',
              width: 170,
              //Se agrego un widget de texto para darle un atributo de texto
              child: Center(
                child: Icon(Icons.account_box_sharp),
              ),
            ),
            WhiteCard(
              //Titulo puede ser opcional
              title: 'iconos varios - titulo',
              width: 170,
              //Se agrego un widget de texto para darle un atributo de texto
              child: Center(
                child: Icon(Icons.account_box_sharp),
              ),
            ),
            WhiteCard(
              //Titulo puede ser opcional
              title: 'iconos varios - titulo',
              width: 170,
              //Se agrego un widget de texto para darle un atributo de texto
              child: Center(
                child: Icon(Icons.account_box_sharp),
              ),
            ),
            WhiteCard(
              //Titulo puede ser opcional
              title: 'iconos varios - titulo',
              width: 170,
              //Se agrego un widget de texto para darle un atributo de texto
              child: Center(
                child: Icon(Icons.account_box_sharp),
              ),
            ),
            WhiteCard(
              //Titulo puede ser opcional
              title: 'iconos varios - titulo',
              width: 170,
              //Se agrego un widget de texto para darle un atributo de texto
              child: Center(
                child: Icon(Icons.account_box_sharp),
              ),
            ),
          ],
        )
        // ignore: prefer_const_constructors
      ],
    );
  }
}
