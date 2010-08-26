/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/*
 * Bookie.java
 *
 * Created on May 20, 2010, 1:45:42 PM
 */

package bookie;

/**
 *
 * @author enebo
 */
public class Bookie extends javax.swing.JFrame {

    /** Creates new form Bookie */
    public Bookie() {
        initComponents();
    }

    /** This method is called from within the constructor to
     * initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is
     * always regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jSplitPane1 = new javax.swing.JSplitPane();
        jScrollPane1 = new javax.swing.JScrollPane();
        chapters = new javax.swing.JList();
        jScrollPane2 = new javax.swing.JScrollPane();
        tabs = new javax.swing.JTabbedPane();
        jScrollPane3 = new javax.swing.JScrollPane();
        edit = new javax.swing.JTextPane();
        jScrollPane4 = new javax.swing.JScrollPane();
        preview = new javax.swing.JEditorPane();
        add_chapter = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        chapters.setModel(new javax.swing.DefaultListModel());
        chapters.setSelectionMode(javax.swing.ListSelectionModel.SINGLE_SELECTION);
        jScrollPane1.setViewportView(chapters);

        jSplitPane1.setLeftComponent(jScrollPane1);

        edit.setAutoscrolls(false);
        jScrollPane3.setViewportView(edit);

        tabs.addTab("edit", jScrollPane3);

        preview.setDocument(preview.getEditorKit().createDefaultDocument());
        preview.setEditorKit(new javax.swing.text.html.HTMLEditorKit());
        jScrollPane4.setViewportView(preview);

        tabs.addTab("preview", jScrollPane4);

        jScrollPane2.setViewportView(tabs);

        jSplitPane1.setRightComponent(jScrollPane2);

        add_chapter.setText("Add Chapter");

        org.jdesktop.layout.GroupLayout layout = new org.jdesktop.layout.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(layout.createSequentialGroup()
                .add(add_chapter)
                .addContainerGap())
            .add(org.jdesktop.layout.GroupLayout.TRAILING, jSplitPane1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 527, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(org.jdesktop.layout.GroupLayout.LEADING)
            .add(org.jdesktop.layout.GroupLayout.TRAILING, layout.createSequentialGroup()
                .add(jSplitPane1, org.jdesktop.layout.GroupLayout.DEFAULT_SIZE, 282, Short.MAX_VALUE)
                .addPreferredGap(org.jdesktop.layout.LayoutStyle.UNRELATED)
                .add(add_chapter))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    /**
    * @param args the command line arguments
    */
    public static void main(String args[]) {
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Bookie().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton add_chapter;
    public javax.swing.JList chapters;
    private javax.swing.JTextPane edit;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JScrollPane jScrollPane3;
    private javax.swing.JScrollPane jScrollPane4;
    private javax.swing.JSplitPane jSplitPane1;
    private javax.swing.JEditorPane preview;
    public javax.swing.JTabbedPane tabs;
    // End of variables declaration//GEN-END:variables

}
