import 'dart:ui';
import 'package:get/get.dart';
import 'package:pets/app/data/models/pet.dart';
import 'package:pets/app/data/repositories/local/mobile_repository.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';

class PetController extends GetxController {
  final MobileRepository _mobileRepository = Get.find<MobileRepository>();
  late final Pet? pet = Get.arguments is Pet ? Get.arguments as Pet : null;

  Future<void> createPDF() async {
    //Create a PDF document.
    final PdfDocument document = PdfDocument();
    //Add page to the PDF
    final PdfPage page = document.pages.add();
    //Get page client size
    final Size pageSize = page.getClientSize();
    //Draw rectangle
    page.graphics.drawRectangle(
        bounds: Rect.fromLTWH(0, 0, pageSize.width, pageSize.height),
        pen: PdfPen(PdfColor(142, 170, 219, 255)));
    //Generate PDF grid.
    //Draw the header section by creating text element
    drawHeader(page, pageSize);
    //Draw grid
    //Save the PDF document
    final List<int> bytes = await document.save();
    //Dispose the document.
    document.dispose();
    //Save and launch the file.

    _mobileRepository.saveAndLaunchFileRepository(bytes, "Output.pdf");
  }

  //Draws the invoice header
  PdfLayoutResult drawHeader(PdfPage page, Size pageSize) {
    final PdfFont contentFont = PdfStandardFont(PdfFontFamily.helvetica, 9);

    // ignore: leading_newlines_in_multiline_strings
    const String address = '''Bill To: \r\n\r\nAbraham Swearegin, 
        \r\n\r\nUnited States, California, San Mateo, 
        \r\n\r\n9920 BridgePointe Parkway, \r\n\r\n9365550136''';

    return PdfTextElement(text: address, font: contentFont).draw(
        page: page,
        bounds: Rect.fromLTWH(
            30, 120, pageSize.width - (30), pageSize.height - 120))!;
  }

  //Create and row for the grid.
  void addProducts(String productId, String productName, double price,
      int quantity, double total, PdfGrid grid) {
    final PdfGridRow row = grid.rows.add();
    row.cells[0].value = productId;
    row.cells[1].value = productName;
    row.cells[2].value = price.toString();
    row.cells[3].value = quantity.toString();
    row.cells[4].value = total.toString();
  }

  //Get the total amount.
  double getTotalAmount(PdfGrid grid) {
    double total = 0;
    for (int i = 0; i < grid.rows.count; i++) {
      final String value =
          grid.rows[i].cells[grid.columns.count - 1].value as String;
      total += double.parse(value);
    }
    return total;
  }
}
