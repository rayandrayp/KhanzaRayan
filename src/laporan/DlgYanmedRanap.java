package laporan;
import fungsi.koneksiDB;
import fungsi.sekuel;
import fungsi.validasi;
import fungsi.akses;
import java.awt.Cursor;
import java.awt.Desktop;
import java.awt.Dimension;
import java.awt.Toolkit;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.awt.event.WindowEvent;
import java.awt.event.WindowListener;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.DecimalFormat;
import javax.swing.text.Document;
import javax.swing.text.html.HTMLEditorKit;
import javax.swing.text.html.StyleSheet;
import simrskhanza.DlgCariBangsal;
import simrskhanza.DlgCariCaraBayar;

public class DlgYanmedRanap extends javax.swing.JDialog {
    private sekuel Sequel=new sekuel();
    private validasi Valid=new validasi();
    private Connection koneksi=koneksiDB.condb();
    private PreparedStatement ps;
    private ResultSet rs;
    private DlgCariCaraBayar penjab=new DlgCariCaraBayar(null,false);
    private DlgCariBangsal bangsal=new DlgCariBangsal(null,false);
    private int i=0,
            mil_ad=0,pns_ad=0,kel_ad=0,mil_lain=0,pns_lain=0,kel_lain=0,dikma=0,taruna=0,bpjs=0,umum=0,hari_mil_ad=0,hari_pns_ad=0,jumlah1=0,
            hari_kel_ad=0,hari_mil_lain=0,hari_pns_lain=0,hari_kel_lain=0,hari_dikma=0,hari_taruna=0,hari_bpjs=0,hari_umum=0,jumlah2=0,
            pulang_sembuh=0,kerumkit_tinggi=0,pindah=0,pulang_paksa=0,hidup_sembuh=0,belum_sembuh=0,meninggal_k48=0,meninggal_l48=0,lamaInap=0,jumlahInap=0;
    private double bor=0,bor2=0,jumlahBed=0,totalBed=0,jumlahHari=0;
    private StringBuilder htmlContent;
    
    /** Creates new form DlgProgramStudi
     * @param parent
     * @param modal */
    public DlgYanmedRanap(java.awt.Frame parent, boolean modal) {
        super(parent, modal);
        initComponents();
        
        
        HTMLEditorKit kit = new HTMLEditorKit();
        LoadHTML.setEditable(true);
        LoadHTML.setEditorKit(kit);
        LoadHTML.setEditable(true);
        LoadHTML.setEditorKit(kit);
        StyleSheet styleSheet = kit.getStyleSheet();
        styleSheet.addRule(
                ".isi td{border-right: 1px solid #e2e7dd;font: 8.5px tahoma;height:12px;border-bottom: 1px solid #e2e7dd;background: #ffffff;color:#323232;}"+
                ".isi2 td{font: 8.5px tahoma;height:12px;background: #ffffff;color:#323232;}"+
                ".isi3 td{border-right: 1px solid #e2e7dd;font: 8.5px tahoma;height:12px;border-top: 1px solid #e2e7dd;background: #ffffff;color:#323232;}"+
                ".isi4 td{font: 11px tahoma;height:12px;border-top: 1px solid #e2e7dd;background: #ffffff;color:#323232;}"
        );
        Document doc = kit.createDefaultDocument();
        LoadHTML.setDocument(doc);
        LoadHTML.setDocument(doc);
        
    }
    private Dimension screen=Toolkit.getDefaultToolkit().getScreenSize();

    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        Kd2 = new widget.TextBox();
        internalFrame1 = new widget.InternalFrame();
        panelisi1 = new widget.panelisi();
        label11 = new widget.Label();
        Tgl1 = new widget.Tanggal();
        label18 = new widget.Label();
        Tgl2 = new widget.Tanggal();
        btnCari = new widget.Button();
        BtnAll = new widget.Button();
        label9 = new widget.Label();
        BtnPrint = new widget.Button();
        BtnKeluar = new widget.Button();
        Scroll = new widget.ScrollPane();
        LoadHTML = new widget.editorpane();

        Kd2.setName("Kd2"); // NOI18N
        Kd2.setPreferredSize(new java.awt.Dimension(207, 23));

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setUndecorated(true);
        setResizable(false);
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowOpened(java.awt.event.WindowEvent evt) {
                formWindowOpened(evt);
            }
        });

        internalFrame1.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(240, 245, 235)), "::[ Laporan Rawat Inap ]::", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Tahoma", 0, 11), new java.awt.Color(50, 50, 50)));
        internalFrame1.setName("internalFrame1"); // NOI18N
        internalFrame1.setLayout(new java.awt.BorderLayout(1, 1));

        panelisi1.setName("panelisi1"); // NOI18N
        panelisi1.setPreferredSize(new java.awt.Dimension(100, 56));
        panelisi1.setLayout(new java.awt.FlowLayout(java.awt.FlowLayout.LEFT, 5, 9));

        label11.setText("Tanggal :");
        label11.setName("label11"); // NOI18N
        label11.setPreferredSize(new java.awt.Dimension(55, 23));
        panelisi1.add(label11);

        Tgl1.setDisplayFormat("dd-MM-yyyy");
        Tgl1.setName("Tgl1"); // NOI18N
        Tgl1.setPreferredSize(new java.awt.Dimension(95, 23));
        panelisi1.add(Tgl1);

        label18.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        label18.setText("s.d.");
        label18.setName("label18"); // NOI18N
        label18.setPreferredSize(new java.awt.Dimension(30, 23));
        panelisi1.add(label18);

        Tgl2.setDisplayFormat("dd-MM-yyyy");
        Tgl2.setName("Tgl2"); // NOI18N
        Tgl2.setPreferredSize(new java.awt.Dimension(95, 23));
        panelisi1.add(Tgl2);

        btnCari.setIcon(new javax.swing.ImageIcon(getClass().getResource("/picture/accept.png"))); // NOI18N
        btnCari.setMnemonic('2');
        btnCari.setToolTipText("Alt+2");
        btnCari.setName("btnCari"); // NOI18N
        btnCari.setPreferredSize(new java.awt.Dimension(28, 23));
        btnCari.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnCariActionPerformed(evt);
            }
        });
        btnCari.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                btnCariKeyPressed(evt);
            }
        });
        panelisi1.add(btnCari);

        BtnAll.setIcon(new javax.swing.ImageIcon(getClass().getResource("/picture/Search-16x16.png"))); // NOI18N
        BtnAll.setMnemonic('M');
        BtnAll.setToolTipText("Alt+M");
        BtnAll.setName("BtnAll"); // NOI18N
        BtnAll.setPreferredSize(new java.awt.Dimension(28, 23));
        BtnAll.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BtnAllActionPerformed(evt);
            }
        });
        BtnAll.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                BtnAllKeyPressed(evt);
            }
        });
        panelisi1.add(BtnAll);

        label9.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);
        label9.setName("label9"); // NOI18N
        label9.setPreferredSize(new java.awt.Dimension(80, 30));
        panelisi1.add(label9);

        BtnPrint.setIcon(new javax.swing.ImageIcon(getClass().getResource("/picture/b_print.png"))); // NOI18N
        BtnPrint.setMnemonic('T');
        BtnPrint.setText("Cetak");
        BtnPrint.setToolTipText("Alt+T");
        BtnPrint.setName("BtnPrint"); // NOI18N
        BtnPrint.setPreferredSize(new java.awt.Dimension(100, 30));
        BtnPrint.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BtnPrintActionPerformed(evt);
            }
        });
        BtnPrint.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                BtnPrintKeyPressed(evt);
            }
        });
        panelisi1.add(BtnPrint);

        BtnKeluar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/picture/exit.png"))); // NOI18N
        BtnKeluar.setMnemonic('K');
        BtnKeluar.setText("Keluar");
        BtnKeluar.setToolTipText("Alt+K");
        BtnKeluar.setName("BtnKeluar"); // NOI18N
        BtnKeluar.setPreferredSize(new java.awt.Dimension(100, 30));
        BtnKeluar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BtnKeluarActionPerformed(evt);
            }
        });
        BtnKeluar.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                BtnKeluarKeyPressed(evt);
            }
        });
        panelisi1.add(BtnKeluar);

        internalFrame1.add(panelisi1, java.awt.BorderLayout.PAGE_END);

        Scroll.setName("Scroll"); // NOI18N
        Scroll.setOpaque(true);

        LoadHTML.setBorder(null);
        LoadHTML.setName("LoadHTML"); // NOI18N
        Scroll.setViewportView(LoadHTML);

        internalFrame1.add(Scroll, java.awt.BorderLayout.CENTER);

        getContentPane().add(internalFrame1, java.awt.BorderLayout.CENTER);

        pack();
    }// </editor-fold>//GEN-END:initComponents
/*
private void KdKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_TKdKeyPressed
    Valid.pindah(evt,BtnCari,Nm);
}//GEN-LAST:event_TKdKeyPressed
*/

    private void BtnPrintActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BtnPrintActionPerformed
        this.setCursor(Cursor.getPredefinedCursor(Cursor.WAIT_CURSOR));
        try {
            
            File g = new File("file2.css");            
            BufferedWriter bg = new BufferedWriter(new FileWriter(g));
            bg.write(
                    ".isi td{border-right: 1px solid #e2e7dd;font: 11px tahoma;height:12px;border-bottom: 1px solid #e2e7dd;background: #ffffff;color:#323232;}"+
                    ".isi2 td{font: 11px tahoma;height:12px;background: #ffffff;color:#323232;}"+                    
                    ".isi3 td{border-right: 1px solid #e2e7dd;font: 11px tahoma;height:12px;border-top: 1px solid #e2e7dd;background: #ffffff;color:#323232;}"+
                    ".isi4 td{font: 11px tahoma;height:12px;border-top: 1px solid #e2e7dd;background: #ffffff;color:#323232;}"
            );
            bg.close();
            
            File f = new File("BulananHAIs.html");            
            BufferedWriter bw = new BufferedWriter(new FileWriter(f));            
            bw.write(LoadHTML.getText().replaceAll("<head>","<head><link href=\"file2.css\" rel=\"stylesheet\" type=\"text/css\" />"+
                        "<table width='100%' border='0' align='center' cellpadding='3px' cellspacing='0' class='tbl_form'>"+
                            "<tr class='isi2'>"+
                                "<td valign='top' align='center'>"+
                                    "<font size='4' face='Tahoma'>"+akses.getnamars()+"</font><br>"+
                                    akses.getalamatrs()+", "+akses.getkabupatenrs()+", "+akses.getpropinsirs()+"<br>"+
                                    akses.getkontakrs()+", E-mail : "+akses.getemailrs()+"<br><br>"+       
                                "</td>"+
                           "</tr>"+
                        "</table>")
            );
            bw.close();                         
            Desktop.getDesktop().browse(f.toURI());
        } catch (Exception e) {
            System.out.println("Notifikasi : "+e);
        }     
        
        this.setCursor(Cursor.getDefaultCursor());
    }//GEN-LAST:event_BtnPrintActionPerformed

    private void BtnPrintKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_BtnPrintKeyPressed
        if(evt.getKeyCode()==KeyEvent.VK_SPACE){
            BtnPrintActionPerformed(null);
        }else{
            Valid.pindah(evt,Tgl2,BtnKeluar);
        }
    }//GEN-LAST:event_BtnPrintKeyPressed

    private void BtnKeluarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BtnKeluarActionPerformed
        dispose();
    }//GEN-LAST:event_BtnKeluarActionPerformed

    private void BtnKeluarKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_BtnKeluarKeyPressed
        if(evt.getKeyCode()==KeyEvent.VK_SPACE){
            dispose();
        }else{Valid.pindah(evt,BtnPrint,Tgl1);}
    }//GEN-LAST:event_BtnKeluarKeyPressed

private void btnCariActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnCariActionPerformed
    prosesCari();
}//GEN-LAST:event_btnCariActionPerformed

private void btnCariKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_btnCariKeyPressed
        if(evt.getKeyCode()==KeyEvent.VK_SPACE){
            btnCariActionPerformed(null);
        }else{
            Valid.pindah(evt, Tgl2, BtnPrint);
        }
}//GEN-LAST:event_btnCariKeyPressed

    private void formWindowOpened(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowOpened
        prosesCari();
    }//GEN-LAST:event_formWindowOpened

    private void BtnAllActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BtnAllActionPerformed

        prosesCari();
    }//GEN-LAST:event_BtnAllActionPerformed

    private void BtnAllKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_BtnAllKeyPressed
        if(evt.getKeyCode()==KeyEvent.VK_SPACE){
            prosesCari();
        }else{
            Valid.pindah(evt, BtnPrint, BtnKeluar);
        }
    }//GEN-LAST:event_BtnAllKeyPressed

    /**
    * @param args the command line arguments
    */
    public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(() -> {
            DlgYanmedRanap dialog = new DlgYanmedRanap(new javax.swing.JFrame(), true);
            dialog.addWindowListener(new java.awt.event.WindowAdapter() {
                @Override
                public void windowClosing(java.awt.event.WindowEvent e) {
                    System.exit(0);
                }
            });
            dialog.setVisible(true);
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private widget.Button BtnAll;
    private widget.Button BtnKeluar;
    private widget.Button BtnPrint;
    private widget.TextBox Kd2;
    private widget.editorpane LoadHTML;
    private widget.ScrollPane Scroll;
    private widget.Tanggal Tgl1;
    private widget.Tanggal Tgl2;
    private widget.Button btnCari;
    private widget.InternalFrame internalFrame1;
    private widget.Label label11;
    private widget.Label label18;
    private widget.Label label9;
    private widget.panelisi panelisi1;
    // End of variables declaration//GEN-END:variables

    private void prosesCari() {
        this.setCursor(Cursor.getPredefinedCursor(Cursor.WAIT_CURSOR));
        try {
            htmlContent = new StringBuilder();
            htmlContent.append(                             
                "<tr class='isi'>"+
                    "<td valign='middle' bgcolor='#FFFAF8' align='center' width='1%' rowspan='3'>No.</td>"+
                    "<td valign='middle' bgcolor='#FFFAF8' align='center' width='8%' rowspan='3'>Kelas/ Tempat Perawatan</td>"+
                    "<td valign='middle' bgcolor='#FFFAF8' align='center' width='2%' rowspan='3'>Pasien Lama</td>"+
                    "<td valign='middle' bgcolor='#FFFAF8' align='center' width='30%' colspan='11'>Jumlah Pasien Rawat Inap</td>"+
                    "<td valign='middle' bgcolor='#FFFAF8' align='center' width='30%' colspan='11'>Jumlah Hari Perawatan</td>"+
                    "<td valign='middle' bgcolor='#FFFAF8' align='center' width='13%' colspan='4'>Cara Pasien Keluar/Rujuk</td>"+
                    "<td valign='middle' bgcolor='#FFFAF8' align='center' width='13%' colspan='4'>Keadaan Pasien Keluar</td>"+
                    "<td valign='middle' bgcolor='#FFFAF8' align='center' width='3%' rowspan='3'>BOR</td>"+
                "</tr>"+
                "<tr class='isi'>"+
                    "<td valign='middle' bgcolor='#FFFAF8' align='center' colspan='3'>AD</td>"+
                    "<td valign='middle' bgcolor='#FFFAF8' align='center' colspan='3'>Angkatan Lain</td>"+
                    "<td valign='middle' bgcolor='#FFFAF8' align='center' rowspan='2'>Siswa Dikma</td>"+
                    "<td valign='middle' bgcolor='#FFFAF8' align='center' rowspan='2'>Taruna</td>"+
                    "<td valign='middle' bgcolor='#FFFAF8' align='center' rowspan='2'>BPJS</td>"+
                    "<td valign='middle' bgcolor='#FFFAF8' align='center' rowspan='2'>Umum</td>"+
                    "<td valign='middle' bgcolor='#FFFAF8' align='center' rowspan='2'>Jumlah</td>"+
                    "<td valign='middle' bgcolor='#FFFAF8' align='center' colspan='3'>AD</td>"+
                    "<td valign='middle' bgcolor='#FFFAF8' align='center' colspan='3'>Angkatan Lain</td>"+
                    "<td valign='middle' bgcolor='#FFFAF8' align='center' rowspan='2'>Siswa Dikma</td>"+
                    "<td valign='middle' bgcolor='#FFFAF8' align='center' rowspan='2'>Taruna</td>"+
                    "<td valign='middle' bgcolor='#FFFAF8' align='center' rowspan='2'>BPJS</td>"+
                    "<td valign='middle' bgcolor='#FFFAF8' align='center' rowspan='2'>Umum</td>"+
                    "<td valign='middle' bgcolor='#FFFAF8' align='center' rowspan='2'>Jumlah</td>"+
                    "<td valign='middle' bgcolor='#FFFAF8' align='center' rowspan='2'>Pulang Sembuh</td>"+
                    "<td valign='middle' bgcolor='#FFFAF8' align='center' rowspan='2'>Ke Rumkit Lebih Tinggi</td>"+
                    "<td valign='middle' bgcolor='#FFFAF8' align='center' rowspan='2'>Pindah</td>"+
                    "<td valign='middle' bgcolor='#FFFAF8' align='center' rowspan='2'>Pulang Paksa</td>"+
                    "<td valign='middle' bgcolor='#FFFAF8' align='center' rowspan='2'>Hidup Sembuh</td>"+
                    "<td valign='middle' bgcolor='#FFFAF8' align='center' rowspan='2'>Belum Sembuh</td>"+
                    "<td valign='middle' bgcolor='#FFFAF8' align='center' colspan='2'>Mati</td>"+
                "</tr>"+
                "<tr class='isi'>"+
                    "<td valign='middle' bgcolor='#FFFAF8' align='center'>MIL</td>"+
                    "<td valign='middle' bgcolor='#FFFAF8' align='center'>PNS</td>"+
                    "<td valign='middle' bgcolor='#FFFAF8' align='center'>KEL</td>"+
                    "<td valign='middle' bgcolor='#FFFAF8' align='center'>MIL</td>"+
                    "<td valign='middle' bgcolor='#FFFAF8' align='center'>PNS</td>"+
                    "<td valign='middle' bgcolor='#FFFAF8' align='center'>KEL</td>"+
                    "<td valign='middle' bgcolor='#FFFAF8' align='center'>MIL</td>"+
                    "<td valign='middle' bgcolor='#FFFAF8' align='center'>PNS</td>"+
                    "<td valign='middle' bgcolor='#FFFAF8' align='center'>KEL</td>"+
                    "<td valign='middle' bgcolor='#FFFAF8' align='center'>MIL</td>"+
                    "<td valign='middle' bgcolor='#FFFAF8' align='center'>PNS</td>"+
                    "<td valign='middle' bgcolor='#FFFAF8' align='center'>KEL</td>"+
                    "<td valign='middle' bgcolor='#FFFAF8' align='center'>< 48 Jam</td>"+
                    "<td valign='middle' bgcolor='#FFFAF8' align='center'>> 48 Jam</td>"+
                "</tr>" +
                "<tr class='isi'>"+
                    "<td valign='middle' align='center'>1</td>"+
                    "<td valign='middle' align='center'>2</td>"+
                    "<td valign='middle' align='center'>3</td>"+
                    "<td valign='middle' align='center'>4</td>"+
                    "<td valign='middle' align='center'>5</td>"+
                    "<td valign='middle' align='center'>6</td>"+
                    "<td valign='middle' align='center'>7</td>"+
                    "<td valign='middle' align='center'>8</td>"+
                    "<td valign='middle' align='center'>9</td>"+
                    "<td valign='middle' align='center'>10</td>"+
                    "<td valign='middle' align='center'>11</td>"+
                    "<td valign='middle' align='center'>12</td>"+
                    "<td valign='middle' align='center'>13</td>"+
                    "<td valign='middle' align='center'>14</td>"+
                    "<td valign='middle' align='center'>15</td>"+
                    "<td valign='middle' align='center'>16</td>"+
                    "<td valign='middle' align='center'>17</td>"+
                    "<td valign='middle' align='center'>18</td>"+
                    "<td valign='middle' align='center'>19</td>"+
                    "<td valign='middle' align='center'>20</td>"+
                    "<td valign='middle' align='center'>21</td>"+
                    "<td valign='middle' align='center'>22</td>"+
                    "<td valign='middle' align='center'>23</td>"+
                    "<td valign='middle' align='center'>24</td>"+
                    "<td valign='middle' align='center'>25</td>"+
                    "<td valign='middle' align='center'>26</td>"+
                    "<td valign='middle' align='center'>27</td>"+
                    "<td valign='middle' align='center'>28</td>"+
                    "<td valign='middle' align='center'>29</td>"+
                    "<td valign='middle' align='center'>30</td>"+
                    "<td valign='middle' align='center'>31</td>"+
                    "<td valign='middle' align='center'>32</td>"+
                    "<td valign='middle' align='center'>33</td>"+
                    "<td valign='middle' align='center'>34</td>"+
                "</tr>"
            );
            
            mil_ad=0;pns_ad=0;kel_ad=0;mil_lain=0;pns_lain=0;kel_lain=0;dikma=0;taruna=0;bpjs=0;umum=0;hari_mil_ad=0;hari_pns_ad=0;jumlah1=0;
            hari_kel_ad=0;hari_mil_lain=0;hari_pns_lain=0;hari_kel_lain=0;hari_dikma=0;hari_taruna=0;hari_bpjs=0;hari_umum=0;jumlah2=0;
            pulang_sembuh=0;kerumkit_tinggi=0;pindah=0;pulang_paksa=0;hidup_sembuh=0;belum_sembuh=0;meninggal_k48=0;meninggal_l48=0;lamaInap=0;jumlahInap=0;
            DecimalFormat df = new DecimalFormat("###.##");
            
            ps=koneksi.prepareStatement(
                    "SELECT b.nm_bangsal,\n" +
                    "    SUM(CASE WHEN gt.nama_golongan = 'TNI AD' THEN 1 ELSE 0 END) mil_ad,\n" +
                    "    SUM(CASE WHEN gt.nama_golongan = 'PNS AD' THEN 1 ELSE 0 END) pns_ad,\n" +
                    "    SUM(CASE WHEN p.pekerjaan LIKE '%ANAK%' OR p.pekerjaan LIKE 'A/D%' OR p.pekerjaan LIKE 'I/D%' OR p.pekerjaan LIKE 'ISTRI%' OR p.pekerjaan LIKE 'I/S%' THEN 1 ELSE 0 END) kel_ad,\n" +
                    "    SUM(CASE WHEN gt.nama_golongan IN ('TNI AU','TNI AL') THEN 1 ELSE 0 END) mil_lain,\n" +
                    "    SUM(CASE WHEN p.pekerjaan LIKE 'PNS%' AND pekerjaan NOT LIKE 'PNS AD%' THEN 1 ELSE 0 END) pns_lain,\n" +
                    "    SUM(CASE WHEN p.pekerjaan LIKE '%ANAK%' OR p.pekerjaan LIKE 'A/D%' OR p.pekerjaan LIKE 'I/D%' OR p.pekerjaan LIKE 'ISTRI%' OR p.pekerjaan LIKE 'I/S%' THEN 1 ELSE 0 END) kel_lain,\n" +
                    "    SUM(CASE WHEN p.pekerjaan LIKE '%DIKMA%' THEN 1 ELSE 0 END) dikma,\n" +
                    "    SUM(CASE WHEN p.pekerjaan LIKE '%TARUNA%' THEN 1 ELSE 0 END) taruna,\n" +
                    "    SUM(CASE WHEN r.kd_pj IN ('A65', 'BPJ') THEN 1 ELSE 0 END) bpjs,\n" +
                    "    SUM(CASE WHEN r.kd_pj NOT IN ('A65', 'BPJ') THEN 1 ELSE 0 END) umum,\n" +
                    "    SUM(CASE WHEN gt.nama_golongan = 'TNI AD' THEN DATEDIFF((CASE WHEN k.tgl_keluar = '0000-00-00' THEN '"+Valid.SetTgl(Tgl2.getSelectedItem()+"")+"' ELSE k.tgl_keluar END), k.tgl_masuk) ELSE 0 END) hari_mil_ad,\n" +
                    "    SUM(CASE WHEN gt.nama_golongan = 'PNS AD' THEN DATEDIFF((CASE WHEN k.tgl_keluar = '0000-00-00' THEN '"+Valid.SetTgl(Tgl2.getSelectedItem()+"")+"' ELSE k.tgl_keluar END), k.tgl_masuk) ELSE 0 END) hari_pns_ad,\n" +
                    "    SUM(CASE WHEN p.pekerjaan LIKE '%ANAK%' OR p.pekerjaan LIKE 'A/D%' OR p.pekerjaan LIKE 'I/D%' OR p.pekerjaan LIKE 'ISTRI%' OR p.pekerjaan LIKE 'I/S%' THEN DATEDIFF((CASE WHEN k.tgl_keluar = '0000-00-00' THEN '"+Valid.SetTgl(Tgl2.getSelectedItem()+"")+"' ELSE k.tgl_keluar END), k.tgl_masuk) ELSE 0 END) hari_kel_ad,\n" +
                    "    SUM(CASE WHEN gt.nama_golongan IN ('TNI AU','TNI AL') THEN DATEDIFF((CASE WHEN k.tgl_keluar = '0000-00-00' THEN '"+Valid.SetTgl(Tgl2.getSelectedItem()+"")+"' ELSE k.tgl_keluar END), k.tgl_masuk) ELSE 0 END) hari_mil_lain,\n" +
                    "    SUM(CASE WHEN p.pekerjaan LIKE 'PNS%' AND pekerjaan NOT LIKE 'PNS AD%' THEN DATEDIFF((CASE WHEN k.tgl_keluar = '0000-00-00' THEN '"+Valid.SetTgl(Tgl2.getSelectedItem()+"")+"' ELSE k.tgl_keluar END), k.tgl_masuk) ELSE 0 END) hari_pns_lain,\n" +
                    "    SUM(CASE WHEN p.pekerjaan LIKE '%ANAK%' OR p.pekerjaan LIKE 'A/D%' OR p.pekerjaan LIKE 'I/D%' OR p.pekerjaan LIKE 'ISTRI%' OR p.pekerjaan LIKE 'I/S%' THEN DATEDIFF((CASE WHEN k.tgl_keluar = '0000-00-00' THEN '"+Valid.SetTgl(Tgl2.getSelectedItem()+"")+"' ELSE k.tgl_keluar END), k.tgl_masuk) ELSE 0 END) hari_kel_lain,\n" +
                    "    SUM(CASE WHEN p.pekerjaan LIKE '%DIKMA%' THEN DATEDIFF((CASE WHEN k.tgl_keluar = '0000-00-00' THEN '"+Valid.SetTgl(Tgl2.getSelectedItem()+"")+"' ELSE k.tgl_keluar END), k.tgl_masuk) ELSE 0 END) hari_dikma,\n" +
                    "    SUM(CASE WHEN p.pekerjaan LIKE '%TARUNA%' THEN DATEDIFF((CASE WHEN k.tgl_keluar = '0000-00-00' THEN '"+Valid.SetTgl(Tgl2.getSelectedItem()+"")+"' ELSE k.tgl_keluar END), k.tgl_masuk) ELSE 0 END) hari_taruna,\n" +
                    "    SUM(CASE WHEN r.kd_pj IN ('A65', 'BPJ') THEN DATEDIFF((CASE WHEN k.tgl_keluar = '0000-00-00' THEN '"+Valid.SetTgl(Tgl2.getSelectedItem()+"")+"' ELSE k.tgl_keluar END), k.tgl_masuk) ELSE 0 END) hari_bpjs,\n" +
                    "    SUM(CASE WHEN r.kd_pj NOT IN ('A65', 'BPJ') THEN DATEDIFF((CASE WHEN k.tgl_keluar = '0000-00-00' THEN '"+Valid.SetTgl(Tgl2.getSelectedItem()+"")+"' ELSE k.tgl_keluar END), k.tgl_masuk) ELSE 0 END) hari_umum,\n" +
                    "    SUM(CASE WHEN k.stts_pulang IN ('Sehat', 'Membaik', 'Sembuh') THEN 1 ELSE 0 END) pulang_sembuh,\n" +
                    "    SUM(CASE WHEN k.stts_pulang IN ('Rujuk','Lain-lain') THEN 1 ELSE 0 END) kerumkit_tinggi,\n" +
                    "    SUM(CASE WHEN k.stts_pulang IN ('Pindah Kamar') THEN 1 ELSE 0 END) pindah,\n" +
                    "	 SUM(CASE WHEN k.stts_pulang IN ('Pulang Paksa') THEN 1 ELSE 0 END) pulang_paksa,\n" +
                    "	 SUM(CASE WHEN k.stts_pulang IN ('Sehat', 'Membaik', 'Sembuh') THEN 1 ELSE 0 END) hidup_sembuh,\n" +
                    "	 SUM(CASE WHEN k.stts_pulang IN ('Pulang Paksa', 'Atas Persetujuan Dokter', 'Atas Permintaan Sendiri') THEN 1 ELSE 0 END) belum_sembuh,\n" +
                    "	 SUM(CASE WHEN k.stts_pulang = 'Meninggal' AND TIMESTAMPDIFF(HOUR, concat(tgl_masuk, ' ', jam_masuk), concat(tgl_keluar, ' ', jam_keluar)) < 48 THEN 1 ELSE 0 END) meninggal_k48,\n" +
                    "	 SUM(CASE WHEN k.stts_pulang = 'Meninggal' AND TIMESTAMPDIFF(HOUR, concat(tgl_masuk, ' ', jam_masuk), concat(tgl_keluar, ' ', jam_keluar)) >= 48 THEN 1 ELSE 0 END) meninggal_l48\n" +
                    "FROM kamar_inap k\n" +
                    "INNER JOIN reg_periksa r ON r.no_rawat = k.no_rawat\n" +
                    "INNER JOIN pasien p ON p.no_rkm_medis = r.no_rkm_medis\n" +
                    "INNER JOIN kamar ka ON ka.kd_kamar = k.kd_kamar\n" +
                    "INNER JOIN bangsal b ON b.kd_bangsal = ka.kd_bangsal "+ 
                    " LEFT JOIN pasien_tni pt ON pt.no_rkm_medis = p.no_rkm_medis\n" +
                    " LEFT JOIN golongan_tni gt ON gt.id = pt.golongan_tni\n" +
                    "WHERE k.tgl_masuk BETWEEN ? AND ?  AND b.`status` = '1'\n" +
                    "GROUP BY ka.kd_bangsal");
            try {
                i=1;                     
                ps.setString(1,Valid.SetTgl(Tgl1.getSelectedItem()+""));
                ps.setString(2,Valid.SetTgl(Tgl2.getSelectedItem()+""));
                rs=ps.executeQuery();
//                System.out.println("yanmed ranap "+ps); 
                while(rs.next()){
                    int _bpjs = (rs.getInt("bpjs")-rs.getInt("mil_ad")-rs.getInt("pns_ad")-rs.getInt("kel_ad")-
                            rs.getInt("mil_lain")-rs.getInt("pns_lain")-rs.getInt("kel_lain")-rs.getInt("dikma")-rs.getInt("taruna"));
                    
                    int _hari_bpjs = (rs.getInt("hari_bpjs")-rs.getInt("hari_mil_ad")-rs.getInt("hari_pns_ad")-rs.getInt("hari_kel_ad")-
                            rs.getInt("hari_mil_lain")-rs.getInt("hari_pns_lain")-rs.getInt("hari_kel_lain")-rs.getInt("hari_dikma")-rs.getInt("hari_taruna"));
                    
                    jumlahBed=Sequel.cariIsiAngka("SELECT COUNT(*) AS jml FROM kamar k INNER JOIN bangsal b ON b.kd_bangsal = k.kd_bangsal WHERE b.nm_bangsal = '"+rs.getString("nm_bangsal")+"' AND k.statusdata='1'");
                    jumlahHari=Sequel.cariIsiAngka2("SELECT DATEDIFF(?, ?)",Valid.SetTgl(Tgl2.getSelectedItem()+""),Valid.SetTgl(Tgl1.getSelectedItem()+"")) + 1;
                    lamaInap=(rs.getInt(12)+rs.getInt(13)+rs.getInt(14)+rs.getInt(15)+rs.getInt(16)+rs.getInt(17)+rs.getInt(18)+rs.getInt(19)+rs.getInt(20)+rs.getInt(21));
                    jumlahInap =(rs.getInt(2)+rs.getInt(3)+rs.getInt(4)+rs.getInt(5)+rs.getInt(6)+rs.getInt(7)+rs.getInt(8)+rs.getInt(9)+rs.getInt(10)+rs.getInt(11));
                    bor=(lamaInap/(jumlahBed*jumlahHari))*100;
                    
                    mil_ad=mil_ad+rs.getInt("mil_ad");
                    pns_ad=pns_ad+rs.getInt("pns_ad");
                    kel_ad=kel_ad+rs.getInt("kel_ad");
                    mil_lain=mil_lain+rs.getInt("mil_lain");
                    pns_lain=pns_lain+rs.getInt("pns_lain");
                    kel_lain=kel_lain+rs.getInt("kel_lain");
                    dikma=dikma+rs.getInt("dikma");
                    taruna=taruna+rs.getInt("taruna");
                    bpjs=bpjs+_bpjs;
                    umum=umum+rs.getInt("umum");
                    jumlah1=jumlah1+jumlahInap;
                    hari_mil_ad=hari_mil_ad+rs.getInt("hari_mil_ad");
                    hari_pns_ad=hari_pns_ad+rs.getInt("hari_pns_ad");
                    hari_kel_ad=hari_kel_ad+rs.getInt("hari_kel_ad");
                    hari_mil_lain=hari_mil_lain+rs.getInt("hari_mil_lain");
                    hari_pns_lain=hari_pns_lain+rs.getInt("hari_pns_lain");
                    hari_kel_lain=hari_kel_lain+rs.getInt("hari_kel_lain");
                    hari_dikma=hari_dikma+rs.getInt("hari_dikma");
                    hari_taruna=hari_taruna+rs.getInt("hari_taruna");
                    hari_bpjs=hari_bpjs+ _hari_bpjs;
                    hari_umum=hari_umum+rs.getInt("hari_umum");
                    jumlah2=jumlah2+lamaInap;
                    pulang_sembuh=pulang_sembuh+rs.getInt("pulang_sembuh");
                    kerumkit_tinggi=kerumkit_tinggi+rs.getInt("kerumkit_tinggi");
                    pindah=pindah+rs.getInt("pindah");
                    pulang_paksa=pulang_paksa+rs.getInt("pulang_paksa");
                    hidup_sembuh=hidup_sembuh+rs.getInt("hidup_sembuh");
                    belum_sembuh=belum_sembuh+rs.getInt("belum_sembuh");
                    meninggal_k48=meninggal_k48+rs.getInt("meninggal_k48");
                    meninggal_l48=meninggal_l48+rs.getInt("meninggal_l48");
                    totalBed=totalBed+jumlahBed;

                    htmlContent.append(                             
                        "<tr class='isi'>"+
                            "<td valign='middle' align='center'>"+i+"</td>"+
                            "<td valign='middle' align='left'>"+rs.getString("nm_bangsal")+"</td>"+
                            "<td valign='middle' align='center'>0</td>"+
                            "<td valign='middle' align='center'>"+rs.getString("mil_ad")+"</td>"+
                            "<td valign='middle' align='center'>"+rs.getString("pns_ad")+"</td>"+
                            "<td valign='middle' align='center'>"+rs.getString("kel_ad")+"</td>"+
                            "<td valign='middle' align='center'>"+rs.getString("mil_lain")+"</td>"+
                            "<td valign='middle' align='center'>"+rs.getString("pns_lain")+"</td>"+
                            "<td valign='middle' align='center'>"+rs.getString("kel_lain")+"</td>"+
                            "<td valign='middle' align='center'>"+rs.getString("dikma")+"</td>"+
                            "<td valign='middle' align='center'>"+rs.getString("taruna")+"</td>"+
                            "<td valign='middle' align='center'>"+_bpjs+"</td>"+
                            "<td valign='middle' align='center'>"+rs.getString("umum")+"</td>"+
                            "<td valign='middle' align='center'>"+jumlahInap+"</td>"+
                            "<td valign='middle' align='center'>"+rs.getString("hari_mil_ad")+"</td>"+
                            "<td valign='middle' align='center'>"+rs.getString("hari_pns_ad")+"</td>"+
                            "<td valign='middle' align='center'>"+rs.getString("hari_kel_ad")+"</td>"+
                            "<td valign='middle' align='center'>"+rs.getString("hari_mil_lain")+"</td>"+
                            "<td valign='middle' align='center'>"+rs.getString("hari_pns_lain")+"</td>"+
                            "<td valign='middle' align='center'>"+rs.getString("hari_kel_lain")+"</td>"+
                            "<td valign='middle' align='center'>"+rs.getString("hari_dikma")+"</td>"+
                            "<td valign='middle' align='center'>"+rs.getString("hari_taruna")+"</td>"+
                            "<td valign='middle' align='center'>"+_hari_bpjs+"</td>"+
                            "<td valign='middle' align='center'>"+rs.getString("hari_umum")+"</td>"+
                            "<td valign='middle' align='center'>"+lamaInap+"</td>"+
                            "<td valign='middle' align='center'>"+rs.getString("pulang_sembuh")+"</td>"+
                            "<td valign='middle' align='center'>"+rs.getString("kerumkit_tinggi")+"</td>"+
                            "<td valign='middle' align='center'>"+rs.getString("pindah")+"</td>"+
                            "<td valign='middle' align='center'>"+rs.getString("pulang_paksa")+"</td>"+
                            "<td valign='middle' align='center'>"+rs.getString("hidup_sembuh")+"</td>"+
                            "<td valign='middle' align='center'>"+rs.getString("belum_sembuh")+"</td>"+
                            "<td valign='middle' align='center'>"+rs.getString("meninggal_k48")+"</td>"+
                            "<td valign='middle' align='center'>"+rs.getString("meninggal_l48")+"</td>"+
                            "<td valign='middle' align='center'>"+df.format(bor)+"</td>"+
                        "</tr>"
                    ); 
                    i++;
                }
                bor2=(jumlah2/(totalBed*jumlahHari))*100;
                htmlContent.append(                             
                    "<tr class='isi'>"+
                        "<td valign='middle' align='right' colspan='2'>Total :</td>"+
                        "<td valign='middle' align='center'>0</td>"+
                        "<td valign='middle' align='center'>"+mil_ad+"</td>"+
                        "<td valign='middle' align='center'>"+pns_ad+"</td>"+
                        "<td valign='middle' align='center'>"+kel_ad+"</td>"+
                        "<td valign='middle' align='center'>"+mil_lain+"</td>"+
                        "<td valign='middle' align='center'>"+pns_lain+"</td>"+
                        "<td valign='middle' align='center'>"+kel_lain+"</td>"+
                        "<td valign='middle' align='center'>"+dikma+"</td>"+
                        "<td valign='middle' align='center'>"+taruna+"</td>"+
                        "<td valign='middle' align='center'>"+bpjs+"</td>"+
                        "<td valign='middle' align='center'>"+umum+"</td>"+
                        "<td valign='middle' align='center'>"+jumlah1+"</td>"+
                        "<td valign='middle' align='center'>"+hari_mil_ad+"</td>"+
                        "<td valign='middle' align='center'>"+hari_pns_ad+"</td>"+
                        "<td valign='middle' align='center'>"+hari_kel_ad+"</td>"+
                        "<td valign='middle' align='center'>"+hari_mil_lain+"</td>"+
                        "<td valign='middle' align='center'>"+hari_pns_lain+"</td>"+
                        "<td valign='middle' align='center'>"+hari_kel_lain+"</td>"+
                        "<td valign='middle' align='center'>"+hari_dikma+"</td>"+
                        "<td valign='middle' align='center'>"+hari_taruna+"</td>"+
                        "<td valign='middle' align='center'>"+hari_bpjs+"</td>"+
                        "<td valign='middle' align='center'>"+hari_umum+"</td>"+
                        "<td valign='middle' align='center'>"+jumlah2+"</td>"+
                        "<td valign='middle' align='center'>"+pulang_sembuh+"</td>"+
                        "<td valign='middle' align='center'>"+kerumkit_tinggi+"</td>"+
                        "<td valign='middle' align='center'>"+pindah+"</td>"+
                        "<td valign='middle' align='center'>"+pulang_paksa+"</td>"+
                        "<td valign='middle' align='center'>"+hidup_sembuh+"</td>"+
                        "<td valign='middle' align='center'>"+belum_sembuh+"</td>"+
                        "<td valign='middle' align='center'>"+meninggal_k48+"</td>"+
                        "<td valign='middle' align='center'>"+meninggal_l48+"</td>"+
                        "<td valign='middle' align='center'>"+df.format(bor2)+"</td>"+
                    "</tr>"
                ); 
            } catch (Exception e) {
                System.out.println("laporan.YanmedRanap.prosesCari() : "+e);
            } finally{
                if(rs!=null){
                    rs.close();
                }
                if(ps!=null){
                    ps.close();
                }
            }
            
            LoadHTML.setText(
                    "<html>"+
                      "<table width='100%' border='0' align='center' cellpadding='3px' cellspacing='0' class='tbl_form'>"+
                       htmlContent.toString()+
                      "</table>"+
                    "</html>");
        } catch (Exception e) {
            System.out.println("laporan.DlgRL4A.prosesCari() 5 : "+e);
        } 
        this.setCursor(Cursor.getDefaultCursor());
        
    }
    
    public void isCek(){
        BtnPrint.setEnabled(akses.getbulanan_HAIs());
    }
    
}
