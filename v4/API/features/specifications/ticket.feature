#language: pt

@ticket
Funcionalidade: Ticket
    Validar operações da API Ticket

    @get_ticket1
    Cenário: Validar GET API typeOfEstablishment codigo 200
        Dado uma requisição GET para o serviço ticket
        Quando o serviço typeOfEstablishment responder com status 200
        Então retorna uma lista de typeOfEstablishment

    @get_ticket2
    Cenário: Validar GET API products codigo 200
        Dado uma requisição GET para o serviço ticket
        Quando o serviço products responder com status 200
        Então retorna uma lista de products

    @get_ticket3
    Cenário: Validar GET API videos codigo 200
        Dado uma requisição GET para o serviço ticket
        Quando o serviço videos responder com status 200
        Então retorna uma lista de videos
