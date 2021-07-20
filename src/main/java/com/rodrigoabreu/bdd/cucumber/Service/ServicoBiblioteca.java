package com.rodrigoabreu.bdd.cucumber.Service;

import com.rodrigoabreu.bdd.cucumber.Entity.Livro;
import com.rodrigoabreu.bdd.cucumber.Service.Impl.ImplementacaoServicoDeBiblioteca;
import com.rodrigoabreu.bdd.cucumber.Entity.Topico;

import java.util.List;
import java.util.Map;
import java.util.Optional;

public interface ServicoBiblioteca {

    public static ServicoBiblioteca obtemServico() {
        return new ImplementacaoServicoDeBiblioteca(true);
    }

    public static ServicoBiblioteca obtemServico(boolean carregaBibioteca) {
        return new ImplementacaoServicoDeBiblioteca(carregaBibioteca);
    }

    Livro pesquisaLivroPorTitulo(String titulo);

    List<Livro> pesquisaLivrosDeComputacaoAgrupadosPorTitulo();

    Optional<Topico> topicoMaisPopular();

    List<String> pesquisaTitulosDosLivros();

    Map<Topico, List<Livro>> livrosAgrupadosPorTopico();

    Map<Topico, Long> contagemDosLivrosPorTopico();

    int contagemDosLivros();

    void adiciona(Livro livro);
}

