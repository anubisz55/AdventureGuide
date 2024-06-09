/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package model;  

import java.time.Duration;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class ControleFilaEspera {
    private List<LocalDateTime> horariosEntrada; // Lista para armazenar os horários de entrada na fila
    private List<LocalDateTime> horariosSaida; // Lista para armazenar os horários de saída da fila

    // Construtor da classe
    public ControleFilaEspera() {
        horariosEntrada = new ArrayList<>(); // Inicializa a lista de horários de entrada
        horariosSaida = new ArrayList<>(); // Inicializa a lista de horários de saída
    }

    // Método para adicionar uma pessoa à fila
    public void adicionarPessoaFila() {
        horariosEntrada.add(LocalDateTime.now()); // Adiciona o horário atual à lista de entrada
    }

    // Método para remover uma pessoa da fila
    public void removerPessoaFila() {
        horariosSaida.add(LocalDateTime.now()); // Adiciona o horário atual à lista de saída
    }

    // Método para calcular o tempo médio de espera na fila
    public Duration calcularTempoMedioEspera() {
        int tamanhoFila = horariosSaida.size(); // Obtém o tamanho da fila (número de pessoas que saíram)
        if (tamanhoFila == 0) { // Se a fila estiver vazia, retorna zero
            return Duration.ZERO;
        }

        long totalEspera = 0;
        // Percorre a lista de horários de entrada e saída para calcular o tempo de espera de cada pessoa
        for (int i = 0; i < tamanhoFila; i++) {
            LocalDateTime entrada = horariosEntrada.get(i); // Obtém o horário de entrada da pessoa
            LocalDateTime saida = horariosSaida.get(i); // Obtém o horário de saída da pessoa
            totalEspera += Duration.between(entrada, saida).getSeconds(); // Calcula o tempo de espera em segundos
        }

        return Duration.ofSeconds(totalEspera / tamanhoFila); // Retorna a média do tempo de espera em segundos
    }

    // Método para obter o tempo de espera atual da última pessoa na fila
    public Duration obterTempoEsperaAtual() {
        if (horariosEntrada.isEmpty()) { // Se a fila estiver vazia, retorna zero
            return Duration.ZERO;
        }
        LocalDateTime ultimoEntrada = horariosEntrada.get(horariosEntrada.size() - 1); // Obtém o último horário de entrada
        return Duration.between(ultimoEntrada, LocalDateTime.now()); // Calcula o tempo de espera desde o último horário até o momento atual
    }

    // Método para verificar se a fila está vazia
    public boolean filaVazia() {
        return horariosEntrada.isEmpty() || horariosSaida.size() >= horariosEntrada.size(); // Verifica se a lista de saída é maior ou igual à lista de entrada
    }

    // Métodos getter para obter as listas de horários de entrada e saída
    public List<LocalDateTime> getHorariosEntrada() {
        return horariosEntrada;
    }

    public List<LocalDateTime> getHorariosSaida() {
        return horariosSaida;
    }
}
