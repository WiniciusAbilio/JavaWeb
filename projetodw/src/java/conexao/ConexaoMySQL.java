package conexao;

import java.sql.Connection;

import java.sql.DriverManager;

import java.sql.SQLException;

public class ConexaoMySQL {

    public ConexaoMySQL() {

    }

    public static java.sql.Connection getConexaoMySQL() {

        Connection connection = null;

        try {
            String driverName = "com.mysql.jdbc.Driver";

            Class.forName(driverName);

            String serverName = "localhost"; // caminho do servidor do BD

            String mydatabase = "livros"; // nome do banco de dados

            String url = "jdbc:mysql://" + serverName + "/" + mydatabase;

            String username = "root"; // nome de um usuario BD

            String password = "123456"; // senha de acesso

            connection = DriverManager.getConnection(url, username, password);

            return connection;

        } catch (ClassNotFoundException e) { // Driver nao encontrado

            System.out.println("O driver expecificado nao foi encontrado.");

            return null;

        } catch (SQLException e) {

            // N�o conseguindo se conectar ao banco
            System.out.println("Nao foi possivel conectar ao Banco de Dados.");

            return null;

        }

    }

}
