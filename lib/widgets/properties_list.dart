import 'package:flutter/material.dart';

import 'properties_card.dart';

class PropertiesList extends StatelessWidget {
  final List<PropertiesCard> properties;

  PropertiesList(this.properties);

  Widget _buildPropertiesItem(BuildContext context, int index) {
    return Container(
      margin: EdgeInsets.only(bottom: 15.0),
      child: properties[index],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildPropertiesItem,
      itemCount: properties.length,
    );
  }
}
