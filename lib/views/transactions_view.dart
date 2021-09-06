import 'package:block_chain/widgets/empty_trans_tile.dart';
import 'package:flutter/material.dart';

class TransactionsView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Recent Transactions',style: Theme.of(context).textTheme.bodyText1,),
        ),
                  /* ListView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                    return TransactionTile();
                  }), */
                  EmptyTransactionTile()
      ],
    );
  }

}