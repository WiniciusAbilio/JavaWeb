<%@page import="DAO.LivroDAO"%>
<%@page import="model.Livro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro livro</title>
    </head>
    <body>
        <%  try {
                String nome_livro = request.getParameter("nome_livro");
                String nome_autor = request.getParameter("nome_autor");
                int ano = Integer.parseInt(request.getParameter("ano"));

                Livro livro = new Livro();
                livro.setNomeLivro(nome_livro);
                livro.setNomeAutor(nome_autor);
                livro.setEdicao(ano);

                LivroDAO livroDAO = new LivroDAO();
                livroDAO.inserir(livro);
                out.println("<script>alert('Livro Cadastrado com sucesso!')</script>");
            } catch (Exception e) {
                out.println(e);
            }
        %>
        <h2>
            <a href="../index.html">Voltar</a>  
            <a href="inserir.jsp">Cadastrar Novamente</a>
        </h2>
    </body>
</html>
