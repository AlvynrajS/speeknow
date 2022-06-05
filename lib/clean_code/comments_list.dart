import 'package:flutter/material.dart';

class commentList extends StatelessWidget {
  const commentList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width, child: _buildListView());
  }

  Widget _buildListView() {
    return ListView.builder(
      itemCount: 13,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Column(
          children: [
            Text('Comment title $index'),
            Text('Comment body $index'),
            SizedBox(height: 18),
          ],
        );
      },
    );
  }
}
