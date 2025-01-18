import 'package:flutter/material.dart';
import 'PDFViewerPage.dart';

class Afrikaansgrade12 extends StatelessWidget {
  const Afrikaansgrade12({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> pdfFiles = [
      {'title': 'FAL P1 May-June 2023 MG', 'path': 'assets/pdfs/afrikaans/Afrikaans FAL P1 May-June 2023 MG.pdf'},
      {'title': 'FAL P1 May-June 2023', 'path': 'assets/pdfs/afrikaans/Afrikaans FAL P1 May-June 2023.pdf'},
      {'title': 'FAL P2 May-June 2023 MG', 'path': 'assets/pdfs/afrikaans/Afrikaans FAL P2 May-June 2023 MG.pdf'},
      {'title': 'FAL P2 May-June 2023', 'path': 'assets/pdfs/afrikaans/Afrikaans FAL P2 May-June 2023.pdf'},
      {'title': 'FAL P3 May-June 2023', 'path': 'assets/pdfs/afrikaans/Afrikaans FAL P3 May-June 2023 MG.pdf'},
      {'title': 'FAL P3 May-June 2023', 'path': 'assets/pdfs/afrikaans/Afrikaans FAL P3 May-June 2023.pdf'},
      {'title': 'HL P1 May-June 2023 MG', 'path': 'assets/pdfs/afrikaans/Afrikaans HL P1 May-June 2023 MG.pdf'},
      {'title': 'HL P1 May-June 2023 ', 'path': 'assets/pdfs/afrikaans/Afrikaans HL P1 May-June 2023.pdf'},
      {'title': 'HL P2 May-June 2023 MG', 'path': 'assets/pdfs/afrikaans/Afrikaans HL P2 May-June 2023 MG.pdf'},
      {'title': 'HL P2 May-June 2023', 'path': 'assets/pdfs/afrikaans/Afrikaans HL P2 May-June 2023.pdf'},
      {'title': 'HL P3 May-June 2023 MG', 'path': 'assets/pdfs/afrikaans/Afrikaans HL P3 May-June 2023 MG.pdf'},
      {'title': 'HL P3 May-June 2023', 'path': 'assets/pdfs/afrikaans/Afrikaans HL P3 May-June 2023.pdf'},
    ];

    return Scaffold(
      body: ListView.builder(
        itemCount: pdfFiles.length,
        itemBuilder: (context, index) {
          final file = pdfFiles[index];
          return ListTile(
            title: Text(file['title']!),
            trailing: const Icon(Icons.picture_as_pdf, color: Colors.red),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PDFViewerPage(
                    pdfPath: file['path']!,
                    title: file['title']!,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
