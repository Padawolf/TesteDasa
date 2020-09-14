class Marcas < SitePrism::Page
    element :btn_filtro, '#open-close'
    element :slt_todas_regioes, '#region'
    element :slt_regiao, :xpath, '//*[@id="region"]/option[2]'
    elements :list_marcas_sp, "div.marca--list#block-28 div.marca--list-wrap img.img-responsive"
    element :delboni, 'img[alt="Delboni Auriemo"]'
    element :link_delboni, 'a[href="http://www.delboniauriemo.com.br"]'
  end