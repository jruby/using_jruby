require 'java'

pdf  = com.itextpdf.text.Document.new
para = com.itextpdf.text.Paragraph.new 'Brought to you by JRuby'
file = java.io.FileOutputStream.new 'pdf_demo.pdf'

com.itextpdf.text.pdf.PdfWriter.get_instance pdf, file

pdf.open
pdf.add para
pdf.close
