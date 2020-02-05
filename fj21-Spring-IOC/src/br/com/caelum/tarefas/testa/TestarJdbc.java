package br.com.caelum.tarefas.testa;

import java.sql.Connection;
import java.sql.SQLException;

import br.com.caelum.tarefas.ConnectionFactory;

public class TestarJdbc {

	public static void main(String[] args) throws SQLException {
		Connection connection = new ConnectionFactory().getConnection();
		System.out.println("Conexão aberta!");
		connection.close();
	}

}
