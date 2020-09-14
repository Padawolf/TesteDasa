#language:pt
Funcionalidade: Localizar laboratorio delboni auriemo

    Como usuário(a) do grupo Dasa, desejo encontrar a unidade delboni em São Paulo

    Cenario: Encontrar laboratorio Delboni Auriemo
        Dado que esteja no site institucional da Dasa
        Quando clicar em nossas marcas
        E filtrar por localidade São Paulo
        Então deverá imprimir no console as marcas existentes em São Paulo
        Quando selecionar a marca Delboni Auriemo
        Entao deverá exibir a página informativa do Delboni Auriemo
        Quando clicar no link do Delboni Auriemo
        Então deverá abrir a página da marca Delboni Auriemo