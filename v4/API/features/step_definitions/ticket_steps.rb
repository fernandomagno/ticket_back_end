  Dado('uma requisição GET para o serviço ticket') do
    @response_ticket = service.get_ticket
  end

  Quando('o serviço typeOfEstablishment responder com status {int}') do |status_code|
    expect(@response_ticket.code).to eq status_code
  end

  Então('retorna uma lista de typeOfEstablishment') do
    expect(@response_ticket.message).not_to be_empty
    expect(@response_ticket.code).to eq(200) 
    puts "Lista de Restaurantes: #{@title1 = @response_ticket.parsed_response["typeOfEstablishment"][0]["key"]}"
    puts "Lista de Restaurantes: #{@title2 = @response_ticket.parsed_response["typeOfEstablishment"][1]["key"]}"
    puts "Lista de Restaurantes: #{@title3 = @response_ticket.parsed_response["typeOfEstablishment"][2]["key"]}"
    puts "Lista de Restaurantes: #{@title4 = @response_ticket.parsed_response["typeOfEstablishment"][3]["key"]}"
    puts "Lista de Restaurantes: #{@title5 = @response_ticket.parsed_response["typeOfEstablishment"][4]["key"]}"
    puts "Lista de Restaurantes: #{@title6 = @response_ticket.parsed_response["typeOfEstablishment"][5]["key"]}"
    puts "Lista de Restaurantes: #{@title7 = @response_ticket.parsed_response["typeOfEstablishment"][6]["key"]}"
    puts "Lista de Restaurantes: #{@title8 = @response_ticket.parsed_response["typeOfEstablishment"][7]["key"]}"
    puts "Lista de Restaurantes: #{@title9 = @response_ticket.parsed_response["typeOfEstablishment"][8]["key"]}"
    puts "Lista de Restaurantes: #{@title10 = @response_ticket.parsed_response["typeOfEstablishment"][9]["key"]}"
    expect(@title1).to eq("REFEICAO|PIZZARIA")
    expect(@title2).to eq("REFEICAO|CHURRASC")
    expect(@title3).to eq("REFEICAO|RESTAURANT")
    expect(@title4).to eq("REFEICAO|LANCHONETE")
    expect(@title5).to eq("REFEICAO|BAR")
    expect(@title6).to eq("REFEICAO|OUTROS")
    expect(@title7).to eq("REFEICAO|FASTFOOD")
    expect(@title8).to eq("REFEICAO|PADARIA")
    expect(@title9).to eq("ALIMENT|MERCADO")
    expect(@title10).to eq("ALIMENT|ACOUGUE")
  end

  Quando('o serviço products responder com status {int}') do |status_code|
    expect(@response_ticket.code).to eq status_code
  end

  Então('retorna uma lista de products') do
    expect(@response_ticket.message).not_to be_empty
    expect(@response_ticket.code).to eq(200) 
    puts "Lista de Produtos: #{@products1 = @response_ticket.parsed_response["products"][0]["nome"]}"
    puts "Lista de Produtos: #{@products2 = @response_ticket.parsed_response["products"][1]["nome"]}"
    puts "Lista de Produtos: #{@products3 = @response_ticket.parsed_response["products"][2]["nome"]}"
    puts "Lista de Produtos: #{@products4 = @response_ticket.parsed_response["products"][3]["nome"]}"
    puts "Lista de Produtos: #{@products5 = @response_ticket.parsed_response["products"][4]["nome"]}"
    puts "Lista de Produtos: #{@products6 = @response_ticket.parsed_response["products"][5]["nome"]}"
    puts "Lista de Produtos: #{@products7 = @response_ticket.parsed_response["products"][6]["nome"]}"
    puts "Lista de Produtos: #{@products8 = @response_ticket.parsed_response["products"][7]["nome"]}"
    puts "Lista de Produtos: #{@products9 = @response_ticket.parsed_response["products"][8]["nome"]}"
    puts "Lista de Produtos: #{@products10 = @response_ticket.parsed_response["products"][9]["nome"]}"
    expect(@products1).to eq("Multi - Boas Festas")
    expect(@products2).to eq("VR Transporte")
    expect(@products3).to eq("Compras")
    expect(@products4).to eq("Multi - Alimentação")
    expect(@products5).to eq("Nutrição")
    expect(@products6).to eq(" Essencial ")
    expect(@products7).to eq("Corporativo - Anual")
    expect(@products8).to eq("VR Saude")
    expect(@products9).to eq("Cesta")
    expect(@products10).to eq("VR Multibenefícios Plus")
  end

  Quando('o serviço videos responder com status {int}') do |status_code|
    expect(@response_ticket.code).to eq status_code
  end
    
  Então('retorna uma lista de videos') do
    expect(@response_ticket.message).not_to be_empty
    expect(@response_ticket.code).to eq(200) 
    puts "Lista de Videos: #{@video1 = @response_ticket.parsed_response["videos"][0]["label"]}"
    puts "Lista de Videos: #{@video2 = @response_ticket.parsed_response["videos"][1]["label"]}"
    puts "Lista de Videos: #{@video3 = @response_ticket.parsed_response["videos"][2]["label"]}"
    puts "Lista de Videos: #{@video4 = @response_ticket.parsed_response["videos"][3]["label"]}"
    puts "Lista de Videos: #{@video5 = @response_ticket.parsed_response["videos"][4]["label"]}"
    puts "Lista de Videos: #{@video6 = @response_ticket.parsed_response["videos"][5]["label"]}"
    puts "Lista de Videos: #{@video7 = @response_ticket.parsed_response["videos"][6]["label"]}"
    puts "Lista de Videos: #{@video8 = @response_ticket.parsed_response["videos"][7]["label"]}"
    puts "Lista de Videos: #{@video9 = @response_ticket.parsed_response["videos"][8]["label"]}"
    puts "Lista de Videos: #{@video10 = @response_ticket.parsed_response["videos"][9]["label"]}"
    expect(@video1).to eq("VIDEO_INFORME_DE_RENDIMENTOS")
    expect(@video2).to eq("VIDEO_HOME_BENEFICIARIO")
    expect(@video3).to eq("VIDEO_HOME_EC")
    expect(@video4).to eq("VIDEO_REEMBOLSO")
    expect(@video5).to eq("VIDEO_DASHBOARD")
    expect(@video6).to eq("VIDEO_DASHBOARD_RH")
    expect(@video7).to eq("VIDEO_HOME_PRODUTO")
    expect(@video8).to eq("VIDEO_GUIA_VR")
    expect(@video9).to eq("VIDEO_VENDAS")
    expect(@video10).to eq("VIDEO_HOME_RH")
  end