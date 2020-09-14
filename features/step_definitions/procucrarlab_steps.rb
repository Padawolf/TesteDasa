page_menu = Menu.new
page_marcas = Marcas.new

Dado('que esteja no site institucional da Dasa') do
  @url = Url.new
  @url.load
end
  
Quando('clicar em nossas marcas') do
  page_menu.btn_nossas_marcas.click
end

Quando('filtrar por localidade São Paulo') do
  page_marcas.btn_filtro.click
  page_marcas.slt_todas_regioes.click
  page_marcas.slt_regiao.click
end
  
Quando('deverá imprimir no console as marcas existentes em São Paulo') do
  page_marcas.list_marcas_sp.each do |marca|
    Kernel.puts marca[:alt]
  end
end
  
Quando('selecionar a marca Delboni Auriemo') do
  page_marcas.delboni.click
end
  
Entao('deverá exibir a página informativa do Delboni Auriemo') do
  expect(page).to have_content('Delboni Auriemo')
end

Quando('clicar no link do Delboni Auriemo') do
page_marcas.link_delboni.click

end

Então('deverá abrir a página da marca Delboni Auriemo') do
  page.switch_to_window(page.windows[1])
  expect(page.title).to eql "Delboni Auriemo | Laboratório de Exames e de Imagem"
end