import 'package:flutter/material.dart';
import 'package:flutter_getx_showcase/controllers/controllerbindings.dart';
import 'package:get/get.dart';

class Bindingsone extends GetView<Controllerbindings> {
  //getview crea una propiedad controller disponible
  //dentro de esta clase para realizar los cambios de estado
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreenAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetBuilder<Controllerbindings>(
            //con getbuilder no es necesario que la variable sea
            //.obs porque usamos update. Pero se puede usar .obs
            //si queremos combinar GetBuilder y Obx
            builder: (_) => Text(
              'clicks: ${_.count}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          RaisedButton(
            child: Text('Increment'),
            onPressed: () {
              controller.increment();
            },
          ),
        ],
      ),
    );
  }
}
