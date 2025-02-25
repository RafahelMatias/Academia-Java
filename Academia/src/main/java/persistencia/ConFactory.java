package persistencia;

/**
 *
 * @author Rafah
 */

import java.sql.Connection; // conexão SQL para Java
import java.sql.DriverManager; // driver de conexão SQL para Java
import java.sql.SQLException; // classe para tratamento de exceções

public class ConFactory {
    public Connection getConnection() {
        try {
            return DriverManager.getConnection("jdbc:mysql://localhost/dbacademia", "root", "Rafa2002");
        } catch (SQLException excecao) {
            throw new RuntimeException(excecao);
        }
    }
}