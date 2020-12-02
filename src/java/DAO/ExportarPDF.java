
package DAO;

import com.lowagie.text.Font;
import com.lowagie.text.FontFactory;
import com.lowagie.text.Phrase;
import com.lowagie.text.pdf.PdfPTable;
import com.lowagie.text.pdf.PdfPCell;
import java.awt.Color;
import VO.carritoVO;
import com.itextpdf.text.Image;
import com.lowagie.text.Document;
import com.lowagie.text.Element;
import com.lowagie.text.PageSize;
import com.lowagie.text.Paragraph;
import com.lowagie.text.pdf.PdfWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;

public class ExportarPDF {

    public ExportarPDF() {
    }
    
    double total = 0;
    
    
    public void writeHeader(PdfPTable pdftable){
        PdfPCell cell = new PdfPCell();
            cell.setBackgroundColor(Color.darkGray);
            cell.setPadding(6);
            Font font = FontFactory.getFont(FontFactory.HELVETICA_BOLD);
            font.setColor(Color.WHITE);
            
            
            cell.setPhrase(new Phrase("Codigo carrito", font));
            pdftable.addCell(cell);
            cell.setPhrase(new Phrase("Producto", font));
            pdftable.addCell(cell);
            cell.setPhrase(new Phrase("Categoria", font));
            pdftable.addCell(cell);
            cell.setPhrase(new Phrase("Cantidad", font));
            pdftable.addCell(cell);
            cell.setPhrase(new Phrase("Precio", font));
            pdftable.addCell(cell);
            cell.setPhrase(new Phrase("SubPrecio", font));
            pdftable.addCell(cell);
    }
    
     public void writeTable(PdfPTable pTable, List<carritoVO> vo){
        
            for(carritoVO xd : vo){
                pTable.addCell(String.valueOf(xd.getCod_prod()));
                pTable.addCell(String.valueOf(xd.getProducto()));
                pTable.addCell(String.valueOf(xd.getCategoria()));
                pTable.addCell(String.valueOf(xd.getCantidad()));
                pTable.addCell(String.valueOf(xd.getPrecio()));
                pTable.addCell(String.valueOf(xd.getSubprecio()));
            }
    }
     
     public void exportPDF(HttpServletResponse response, List<carritoVO> vo){
        
            try(Document document = new Document(PageSize.A4)){
                PdfWriter.getInstance(document, response.getOutputStream());
                document.open();
                
                Font font = FontFactory.getFont(FontFactory.HELVETICA, Font.DEFAULTSIZE, Font.BOLDITALIC);
                font.setSize(20);
                font.setColor(Color.BLUE);
                
                Font font2 = FontFactory.getFont(FontFactory.TIMES_ROMAN, Font.DEFAULTSIZE, Font.ITALIC);
                font2.setSize(15);
                font2.setColor(Color.BLACK);
                
                Font font3 = FontFactory.getFont(FontFactory.TIMES_ROMAN, Font.DEFAULTSIZE, Font.BOLD);
                font3.setSize(17);
                font3.setColor(Color.BLACK);
                
                Font font4 = FontFactory.getFont(FontFactory.TIMES_ROMAN, Font.DEFAULTSIZE, Font.BOLD);
                font4.setSize(17);
                font4.setColor(Color.BLUE);
                
                Paragraph paragraph = new Paragraph("--------------                BOLETA DE VENTA", font);
                paragraph.setAlignment(Paragraph.ALIGN_LEFT);
                document.add(paragraph);
                
                Paragraph pa14 = new Paragraph("-   Fixa SA   -", font4);
                pa14.setAlignment(Paragraph.ALIGN_LEFT);
                document.add(pa14);
                
                Paragraph pa15 = new Paragraph("--------------                                        ", font);
                pa14.setAlignment(Paragraph.ALIGN_LEFT);
                document.add(pa15);
                
                Paragraph pa11 = new Paragraph("CODIGO COMPRA: N000001" + vo.get(0).getCod_cart(), font3);
                pa11.setAlignment(Paragraph.ALIGN_RIGHT);
                document.add(pa11);
                
                document.add(new Phrase("\n"));


                Paragraph pa2 = new Paragraph("Nombre: " + vo.get(0).getNombre().toString() + "  " + vo.get(0).getApellido().toString(), font2);
                pa2.setAlignment(Paragraph.ALIGN_LEFT);
                document.add(pa2);
                Paragraph pa4 = new Paragraph("Telefono: " + vo.get(0).getTelef().toString(), font2);
                pa4.setAlignment(Paragraph.ALIGN_LEFT);
                document.add(pa4);
                 
                document.add(new Phrase("\n"));
                
                PdfPTable table = new PdfPTable(6);
                table.setWidthPercentage(100f);
                table.setWidths(new float[]{1.5f,2.5f,3.0f,3.5f,3.5f,3.0f});
                table.setSpacingBefore(10);
                
                writeHeader(table);
                writeTable(table, vo);
                
                document.add(table);
                Paragraph pa13 = new Paragraph("-----------------------------------", font2);
                pa13.setAlignment(Paragraph.ALIGN_RIGHT);
                document.add(pa13);
                
                Paragraph pa12 = new Paragraph("El precio final: s/ " + vo.get(0).getTotal().toString() + " soles", font2);
                pa12.setAlignment(Paragraph.ALIGN_RIGHT);
                document.add(pa12);
                
                document.close();
                
            }catch(Exception e){ }
    }
     
     
     
     
     
     
     
     
    
}
