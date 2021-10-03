package sample;

import utilitiesPac.ConnectionProvider;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.*;
public class Paiement {
    private String Mode_paiement;
    private double montant;
    private int numero_chambre;

    public Paiement(String mode_paiement, double montant, int ID_client) {
        this.Mode_paiement = mode_paiement;
        this.montant = montant;
        this.numero_chambre = ID_client;
    }

    public void ajouter_paiement() {
        Connection conne = null;
         PreparedStatement prs1 = null;
        Statement s = null;
        int ID_client = 0;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try {

            conne = ConnectionProvider.getCon();

            s = conne.createStatement();
            ResultSet R = s.executeQuery("SELECT customers_id FROM customers ORDER BY customers_id DESC LIMIT 1;");
            while (R.next()) {
                ID_client = R.getInt(1);
            }

            prs1 = conne.prepareStatement("INSERT INTO payments (totalAmount, method, customers_id) VALUES (" + this.montant + ",'" + this.Mode_paiement + "',"+ID_client+");");
            prs1.executeUpdate();

            s.close();
            R.close();
            prs1.close();
            conne.close();


        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
