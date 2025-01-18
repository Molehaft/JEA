import 'package:flutter/material.dart';
import 'PDFViewerPage.dart';

class Sciencegrade12 extends StatelessWidget {
  const Sciencegrade12({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> pdfFiles = [
      {'title': 'P1 May-June 2023', 'path': 'assets/pdfs/science/Physical Sciences P1 May-June 2023 Eng.pdf'},
      {'title': 'P1 May-June MG', 'path': 'assets/pdfs/science/Physical Sciences P1 May-June 2023 MG Eng & Afr.pdf'},
      {'title': 'P2 May-June 2023', 'path': 'assets/pdfs/science/Physical Sciences P2 May-June 2023 Eng.pdf'},
      {'title': 'P2 May-June 2023 MG', 'path': 'assets/pdfs/science/Physical Sciences P2 May-June 2023 MG Eng & Afr.pdf'},
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
