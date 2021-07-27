<%@page import="model.Livro"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.LivroDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Deletar Livro</title>
    </head>

    <body>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Nome do Livro</th>
                <th>Nome do Autor</th>
                <th>Ano de Edicao</th>
                <th>Excluir</th>
            </tr>
            <%
                try {
                    LivroDAO livroDAO = new LivroDAO();
                    ArrayList<Livro> listaDeLivros = livroDAO.listar("");

                    for (int i = 0; i < listaDeLivros.size(); i++) {
                        int id = listaDeLivros.get(i).getId();
                        out.println("<tr>");
                        out.println("<th>" + id + "</th>");
                        out.println("<th>" + listaDeLivros.get(i).getNomeLivro() + "</th>");
                        out.println("<th>" + listaDeLivros.get(i).getNomeAutor() + "</th>");
                        out.println("<th>" + listaDeLivros.get(i).getEdicao() + "</th>");
                        out.println("<th><a href='deletado.jsp?id=" + id + "'>Excluir</a></th>");
                        out.println("</tr>");
                    }
                } catch (Exception e) {
                    out.println(e);
                }
            %>
        </table>
        <h2>
            <a href="../index.html">Voltar</a>
        </h2>
    </body>

</html>