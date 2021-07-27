package DAO;

import model.Livro;
import java.sql.*;
import conexao.ConexaoMySQL;
import java.util.*;

/**
 *
 * @author Winicius
 */
public class LivroDAO {

    private Connection connection;
    ArrayList<Livro> listaDeLivros = new ArrayList<>();

    public LivroDAO() {
        connection = ConexaoMySQL.getConexaoMySQL();
    }

    public void inserir(Livro livro) {
        try {
            String sql = "insert into livro(nome, autor, edicao) value (?,?,?)";
            PreparedStatement stmt = connection.prepareStatement(sql);

            stmt.setString(1, livro.getNomeLivro());
            stmt.setString(2, livro.getNomeAutor());
            stmt.setInt(3, livro.getEdicao());
            stmt.execute();
            stmt.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public ArrayList<Livro> listar(String nomeAutor) {
        try {
            String sql = "select * from livro where autor like ?";
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setString(1, "%" + nomeAutor + "%");
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                Livro livro = new Livro();
                livro.setId(rs.getInt("id"));
                livro.setNomeLivro(rs.getString("nome"));
                livro.setNomeAutor(rs.getString("autor"));
                livro.setEdicao(rs.getInt("edicao"));
                listaDeLivros.add(livro);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return listaDeLivros;
    }

    public String remover(int id) {
        try {
            PreparedStatement stmt = connection.prepareStatement("delete from livro where id=?");
            stmt.setInt(1, id);
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
