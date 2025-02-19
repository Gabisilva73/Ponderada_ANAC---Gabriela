pragma solidity ^0.4.0;

contract Anac {
    // Armazena idade
    uint private idadeAtual = 18;

    // Dono do contrato
    address private admin;

    // Tipos de passageiros
    enum Categoria { AdultoBR, MenorBR, Estrangeiro }

    // Estrutura para guardar info
    struct Registro {
        Categoria tipo;
        string docRequerido;
    }

    // Mapeia endereços para registros
    mapping(address => Registro) private listaPassageiros;

    // Evento de novo cadastro
    event NovoRegistro(address indexed passageiro, Categoria tipo);

    // Define o dono
    constructor() public {
        admin = msg.sender;
    }

    // Atualiza idade (apenas admin)
    function setIdade(uint novaIdade) public {
        require(msg.sender == admin, "Apenas o admin pode alterar.");
        idadeAtual = novaIdade;
    }

    // Retorna idade
    function getIdade() public view returns (uint) {
        return idadeAtual;
    }

    // Cadastra passageiro
    function adicionarPassageiro(address usuario, Categoria tipo) public {
        require(msg.sender == admin, "Apenas admin pode cadastrar.");

        string memory doc;
        if (tipo == Categoria.AdultoBR) {
            doc = "RG ou CNH";
        } else if (tipo == Categoria.MenorBR) {
            doc = "Certidao ou RG";
        } else {
            doc = "Passaporte";
        }

        listaPassageiros[usuario] = Registro(tipo, doc);
        emit NovoRegistro(usuario, tipo);
    }

    // Retorna dados do passageiro
    function obterPassageiro(address usuario) public view returns (Categoria, string memory) {
        require(listaPassageiros[usuario].tipo == Categoria.AdultoBR || 
                listaPassageiros[usuario].tipo == Categoria.MenorBR || 
                listaPassageiros[usuario].tipo == Categoria.Estrangeiro, 
                "Passageiro nao encontrado.");
        
        return (listaPassageiros[usuario].tipo, listaPassageiros[usuario].docRequerido);
    }
}
