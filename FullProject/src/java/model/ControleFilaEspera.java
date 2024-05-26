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
    private List<LocalDateTime> horariosEntrada;
    private List<LocalDateTime> horariosSaida;

    public ControleFilaEspera() {
        horariosEntrada = new ArrayList<>();
        horariosSaida = new ArrayList<>();
    }

    public void adicionarPessoaFila() {
        horariosEntrada.add(LocalDateTime.now());
    }

    public void removerPessoaFila() {
        horariosSaida.add(LocalDateTime.now());
    }

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

    public Duration obterTempoEsperaAtual() {
        if (horariosEntrada.isEmpty()) {
            return Duration.ZERO;
        }
        LocalDateTime ultimoEntrada = horariosEntrada.get(horariosEntrada.size() - 1);
        return Duration.between(ultimoEntrada, LocalDateTime.now());
    }

    public boolean filaVazia() {
        return horariosEntrada.isEmpty() || horariosSaida.size() >= horariosEntrada.size();
    }

    public List<LocalDateTime> getHorariosEntrada() {
        return horariosEntrada;
    }

    public List<LocalDateTime> getHorariosSaida() {
        return horariosSaida;
    }
}
