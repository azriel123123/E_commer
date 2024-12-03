part of 'widget.dart';

class ProductTitle extends StatelessWidget {
  const ProductTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/image_shoes.png',
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              )),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Shoes Mountain Papandava V3',
                  style: primaryTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 14,
                    letterSpacing: 1,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                NumberFormat.currency(
                  locale: 'id-ID',
                  symbol: 'IDR',
                  decimalDigits: 0,
                ).format(750000),style: priceTextStyle.copyWith(fontSize: 15,fontWeight: medium,color: primaryColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
