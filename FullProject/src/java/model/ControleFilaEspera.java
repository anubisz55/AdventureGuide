/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
import java.time.LocalDateTime;
import java.time.Duration;
import java.util.ArrayList;
import java.util.List;

public class ControleFilaEspera {
    private List<LocalDateTime> horariosEntrada;
    private List<LocalDateTime> horariosSaida;

    public ControleFilaEspera() {
        horariosEntrada = new ArrayList<>();
        horariosSaida = new ArrayList<>();
    }

    // Método para adicionar uma pessoa à fila, registrando o horário de entrada
    public void adicionarPessoaFila() {
        horariosEntrada.add(LocalDateTime.now());
    }

    // Método para remover uma pessoa da fila, registrando o horário de saída
    public void removerPessoaFila() {
        horariosSaida.add(LocalDateTime.now());
    }

    // Método para calcular o tempo médio de espera na fila
    public Duration calcularTempoMedioEspera() {
        int tamanhoFila = horariosSaida.size();
        if (tamanhoFila == 0) {
            return Duration.ZERO;
        }

        long totalEspera = 0;
        for (int i = 0; i < tamanhoFila; i++) {
            LocalDateTime entrada = horariosEntrada.get(i);
            LocalDateTime saida = horariosSaida.get(i);
            totalEspera += Duration.between(entrada, saida).getSeconds();
        }

        return Duration.ofSeconds(totalEspera / tamanhoFila);
    }

    // Método para obter o tempo de espera atual na fila
    public Duration obterTempoEsperaAtual() {
        if (horariosEntrada.isEmpty()) {
            return Duration.ZERO;
        }
        LocalDateTime ultimoEntrada = horariosEntrada.get(horariosEntrada.size() - 1);
        return Duration.between(ultimoEntrada, LocalDateTime.now());
    }

    // Método para verificar se há pessoas na fila
    public boolean filaVazia() {
        return horariosEntrada.isEmpty() || horariosSaida.size() >= horariosEntrada.size();
    }
}