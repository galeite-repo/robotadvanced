*** Settings ***
Library    SeleniumLibrary
Library    String

*** Variable ***
${HOME_URL}             http://automationpractice.com
${HOME_TITLE}           My Store
${HOME_TOPMENU}         xpath=//*[@id="block_top_menu"]/ul
${HOME_PRODUCT}         xpath=//*[@id="center_column"]//img[@alt="Faded Short Sleeve T-shirts"]
${HOME_BTN_ADDCART}     id=add_to_cart
${HOME_BTN_CHECKOUT}    xpath=//*[@id="layer_cart"]//a[@title="Proceed to checkout"]
${HOME_BTN_SEARCH}      name=submit_search
${HOME_FIELD_SEARCH}    name=search_query


*** Keywords ***
Acessar a pàgina home do site
    Go To                            ${HOME_URL}
    Wait Until Element Is Visible    ${HOME_TOPMENU}
    Title Should Be                  ${HOME_TITLE}

Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Input Text    ${HOME_FIELD_SEARCH}    ${PRODUTO}

Clicar no botão pesquisar
    Click Element    ${HOME_BTN_SEARCH}

Clicar no botão "Add to Cart" do produto
    Wait Until Element Is Visible    ${HOME_PRODUCT}
    Click Element                    ${HOME_PRODUCT}
    Wait Until Element Is Visible    ${HOME_BTN_ADDCART}
    Click Element                    ${HOME_BTN_ADDCART}

Clicar no botão "Proceed to checkout"
    Wait Until Element Is Visible    ${HOME_BTN_CHECKOUT}
    Click Element                    ${HOME_BTN_CHECKOUT}

Adicionar o produto "${PRODUTO}" no carrinho

    Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Clicar no botão pesquisar
    Clicar no botão "Add to Cart" do produto
    Clicar no botão "Proceed to checkout"

