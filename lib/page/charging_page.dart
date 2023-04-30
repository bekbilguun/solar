import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_barcodes/barcodes.dart';
import '../constants.dart';
import '../widget/app_layout.dart';

class ChargingPage extends StatefulWidget {
  const ChargingPage({super.key});

  @override
  State<ChargingPage> createState() => _ChargeScreenState();
}

class _ChargeScreenState extends State<ChargingPage> {
  String? pinCode;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppLayout("УНДАГ ДУГУЙ SCOOTER ЦЭНЭГЛЭХ",
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: QR_SIZE_MD,
              child: SfBarcodeGenerator(
                value: "Coming soon",
                symbology: QRCode(),
              ),
            ),
            const SizedBox(height: SPACE_LG),
            const Text(
                "Та QR code уншуулж унадаг дугуй болон scooter-ээ цэнэглэхээс гадна купон, ваучер, оноо ашиглах, цуглуулах боломжийг бүгдийг нэг дороос авах боломжтой."),
            const SizedBox(height: SPACE_LG),
            Container(
              height: 40,
              padding: const EdgeInsets.all(SPACE_XS),
              decoration: const BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(Icons.attach_money, size: 30),
                      SizedBox(width: SPACE_XS),
                      Text("1 Цагын төлбөр")
                    ],
                  ),
                  const Text("3500₮")
                ],
              ),
            ),
            const SizedBox(height: SPACE_LG),
            Container(
              height: 40,
              padding: const EdgeInsets.all(SPACE_XS),
              decoration: const BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(Icons.control_point, size: 30),
                      SizedBox(width: SPACE_XS),
                      Text("Оноо")
                    ],
                  ),
                  const Text("2470")
                ],
              ),
            ),
            const SizedBox(height: SPACE_LG),
            Container(
              height: 40,
              padding: const EdgeInsets.all(SPACE_XS),
              decoration: const BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(Icons.card_giftcard, size: 30),
                      SizedBox(width: SPACE_XS),
                      Text("Ваучер")
                    ],
                  ),
                  const Text("0")
                ],
              ),
            ),
            const SizedBox(height: SPACE_LG),
            Container(
              height: 40,
              padding: const EdgeInsets.all(SPACE_XS),
              decoration: const BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(Icons.list, size: 30),
                      SizedBox(width: SPACE_XS),
                      Text("Цэнэглэлтийн түүх")
                    ],
                  ),
                  const Icon(Icons.arrow_right, size: 30),
                ],
              ),
            )
          ],
        ));
  }
}
