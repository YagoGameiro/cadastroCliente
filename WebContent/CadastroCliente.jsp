<%@page import="projAula5Web.Cliente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.io.FileWriter"%>
    <%@page import="java.io.PrintWriter"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="CadastroCliente.jsp" method="post">
	
	<div class="col-12 col-md-8">
	
		<div class="form-group">
		    <label for="inputId">Id</label><br>
		    <input type="text" class="form-control" id="inputId" name="id">
		</div>
		<div class="form-group">
		    <label for="inputNome">Nome</label><br>
		    <input type="text" class="form-control" id="inputNome" name="nome">
		</div>
		<div class="form-group">
		    <label for="inputTelefone">Telefone</label><br>
		    <input type="text" class="form-control" id="inputTelefone" name="telefone">
		</div>
		<div class="form-group">
		    <label for="inputCidade">Cidade</label><br>
		    <input type="text" class="form-control" id="inputCidade" name="cidade">
		</div>
		<div class="form-group">
		    <label for="inputEndereco">Endereço</label><br>
		    <input type="text" class="form-control" id="inputEndereco" name="endereco">
		</div>
		<div class="form-group">
		    <label for="inputDataNasc">Data de Nascascimento</label><br>
		    <input type="text" class="form-control" id="inputDataNasc" name="dataNasc">
		</div>
		<div class="form-group">
		    <label for="inputScore">Score</label><br>
		    <input type="text" class="form-control" id="inputScore" name="score">
		</div>
	
		<input type="submit" class="btn btn-primary" value="Enviar" />
	</div>
	</form>
	
<%
String id = "";
String nome = "";
String telefone = "";
String cidade = "";
String endereco = "";
String dataNasc = "";
String score = "";
	
Cliente cliente = new Cliente();

if (request.getParameter("id") != null){
	id = request.getParameter("id");
	cliente.setId(Integer.parseInt(id));
}
	
if (request.getParameter("nome") != null){
	nome = request.getParameter("nome");
	cliente.setNome(nome);
}
	
if (request.getParameter("telefone") != null){
	telefone = request.getParameter("telefone");
	cliente.setTelefone(telefone);
}
	
if (request.getParameter("cidade") != null){
	cidade = request.getParameter("cidade");
	cliente.setCidade(cidade);
}

if (request.getParameter("endereco") != null){
	endereco = request.getParameter("endereco");
	cliente.setEndereco(endereco);
}

if (request.getParameter("dataNasc") != null){
	dataNasc = request.getParameter("dataNasc");
	cliente.setDataNasc(dataNasc);
}

if (request.getParameter("score") != null){
	score = request.getParameter("score");
	cliente.setScore(Integer.parseInt(score));
}
	
if (!cliente.equals(null) && cliente.getNome() != null){
	cliente.add(cliente);
}

FileWriter arq = new FileWriter("C:/Users/logatti.FIAR/Desktop/CadastroCliente.txt");
PrintWriter gravarArq = new PrintWriter(arq);
gravarArq.printf(cliente.getAll().toString());
arq.close();
%>

<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Nome</th>
      <th scope="col">Telefone</th>
      <th scope="col">Cidade</th>
      <th scope="col">Endereco</th>
      <th scope="col">Score</th>
    </tr>
  </thead>
  <tbody>

<%for (Cliente c : cliente.getAll()){%>
    <tr>
      <th scope="row"><%=c.getId() %></th>
      <td><%=c.getNome() %></td>
      <td><%=c.getTelefone() %></td>
      <td><%=c.getCidade() %></td>
      <td><%=c.getEndereco() %></td>
      <td><%=c.getDataNasc() %></td>
      <td><%=c.getScore() %></td>
    </tr>	
<%} %>
  </tbody>
</table>


</body>
</html>