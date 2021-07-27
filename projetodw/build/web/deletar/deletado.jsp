<%@page import="DAO.LivroDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Deletar livro</title>
    </head>
    <body>
        <%
            try {
                LivroDAO livroDAO = new LivroDAO();
                livroDAO.remover(Integer.parseInt(request.getParameter("id")));;
                out.println("<script>alert('Livro Deletado com sucesso!')</script>");
            } catch (Exception e) {
                out.println(e);
            }
        %>
        <h1>
            <a href="../index.html">Voltar</a>
            <a href="deletar.jsp">Deletar Novamente</a>
        </h1>
    </body>
</html>
