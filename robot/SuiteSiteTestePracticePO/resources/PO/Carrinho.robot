*** Settings ***
Library    SeleniumLibrary
Library    String


*** Variable ***
${CARRINHO_TITLE}     Order - My Store
${CARRINHO_DELETE}    xpath=//*[@class="cart_quantity_delete"]
${CARRINHO_MSG}       xpath=//*[@id="center_column"]/p[@class="alert alert-warning"]

*** Keywords ***

Excluir o produto do carrinho
    Title Should Be    ${CARRINHO_TITLE}
    Click Element      ${CARRINHO_DELETE}

Conferir se o carrinho fica vazio
    Wait Until Element Is Visible    ${CARRINHO_MSG}
    Element Text Should Be           ${CARRINHO_MSG}    Your shopping cart is empty.
