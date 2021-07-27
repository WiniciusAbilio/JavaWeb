<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro Livro</title>
    </head>

    <body>
        <form action="cadastro.jsp" method="POST">
            <label for="nome_livro">Nome do livro: </label> 
            <input type="text" name="nome_livro" placeholder="Nome do livro"><br> <br>
            <label for="nome_autor">Nome do autor: </label> 
            <input type="text" name="nome_autor" placeholder="Nome do autor"><br> <br>
            <label for="ano">Ano de edicao: </label> 
            <input type="number" name="ano" placeholder="Ano de edicao"><br> <br>
            <input type="submit" value="Cadastrar">
        </form>
        <h2><a href="../index.html">Voltar</a></h2>
    </body>
</html>