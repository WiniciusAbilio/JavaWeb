<%@page import="java.util.ArrayList"%>
<%@page import="model.Livro"%>
<%@page import="DAO.LivroDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Livros</title>
    </head>
    <body>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Nome do Livro</th>
                <th>Nome do Autor</th>
                <th>Ano de Edicao</th>
            </tr>
            <%
                try {
                    LivroDAO livroDAO = new LivroDAO();
                    ArrayList<Livro> listaDeLivros = livroDAO.listar(request.getParameter("nome_autor"));

                    for (int i = 0; i < listaDeLivros.size(); i++) {
                        out.println("<tr>");
                        out.println("<th>" + listaDeLivros.get(i).getId() + "</th>");
                        out.println("<th>" + listaDeLivros.get(i).getNomeLivro() + "</th>");
                        out.println("<th>" + listaDeLivros.get(i).getNomeAutor() + "</th>");
                        out.println("<th>" + listaDeLivros.get(i).getEdicao() + "</th>");
                        out.println("</tr>");
                    }
                } catch (Exception e) {
                    out.println(e);
                }
            %>
        </table>
        <h2>
            <a href="../index.html">Voltar</a>
            <a href="listar.jsp">Listar Novamente</a>
        </h2>
    </body>
</html>
