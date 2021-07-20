import com.rodrigoabreu.bdd.cucumber.Entity.Livro;
import com.rodrigoabreu.bdd.cucumber.Entity.Topico;
import com.rodrigoabreu.bdd.cucumber.Service.ServicoBiblioteca;
import io.cucumber.java.en.*;
import org.junit.Assert;

import java.util.Optional;


public class MyStepdefs {

    private ServicoBiblioteca servicoBiblioteca;
    private  Livro livro;
    private Optional<Topico> topico;

    @Given("Que a minha biblioteca esta inicializada")
    public void queAMinhaBibliotecaEstaInicializada() {
        servicoBiblioteca = ServicoBiblioteca.obtemServico();
    }

    @When("Eu pesquiso o livro {string}")
    public void euPesquisoOLivro(String tituloLivro) {
        livro = servicoBiblioteca.pesquisaLivroPorTitulo(tituloLivro);
    }

    @Then("Eu encontro esse livro")
    public void euEncontroEsseLivro() {
        Assert.assertNotNull(livro);
    }

    @Then("Eu não encontro esse livro")
    public void euNãoEncontroEsseLivro() {
        Assert.assertNull(livro);
    }

    @When("Eu pesquiso o topico mais popular")
    public void euPesquisoOTopicoMaisPopular() {
        topico = servicoBiblioteca.topicoMaisPopular();
    }

    @Then("Eu encontro o topico {}")
    public void euEncontroOTopico(Topico topicoEncontrado) {
        Assert.assertEquals(topicoEncontrado, topico.get());
    }

    @And("Que o total de livros carregados e' {int}")
    public void queOTotalDeLivrosCarregadosE(int totalDeLivros) {
        Assert.assertEquals(totalDeLivros, servicoBiblioteca.contagemDosLivros());
    }

    @But("Eu não encontro o tópico {}")
    public void euNãoEncontroOTópicoSCIFI(Topico topico) {
        Assert.assertTrue(servicoBiblioteca.topicoMaisPopular().get() != topico);
    }
}
