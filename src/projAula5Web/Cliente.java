package projAula5Web;

import java.util.ArrayList;
import java.util.List;

public class Cliente {

	private int id;
	private String nome;
	private String telefone;
	private String cidade;
	private String endereco;
	private String dataNasc;
	private int score;
	private static List<Cliente> lstCliente = new ArrayList<>();
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getTelefone() {
		return telefone;
	}
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	public String getCidade() {
		return cidade;
	}
	public void setCidade(String cidade) {
		this.cidade = cidade;
	}
	public String getEndereco() {
		return endereco;
	}
	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}
	public String getDataNasc() {
		return dataNasc;
	}
	public void setDataNasc(String dataNasc) {
		this.dataNasc = dataNasc;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public void add(Cliente veiculo) {
		lstCliente.add(veiculo);
	}
	
	public List<Cliente> getAll (){
		return lstCliente;
	}
	
	@Override
	public String toString() {
		return "Id: "+ this.id + " \nNome: " + this.nome + " Telefone: " + this.telefone + 
				" Cidade: " + this.cidade + " Endereço: " + this.endereco + " Data de nascimento: " +
				this.dataNasc + " Score: " + this.score + "\r\n";
	}
	
	
}
