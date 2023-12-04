Desafio Técnico 1

Descrição:
- Implementar uma função que receba um número inteiro positivo e retorne o somatório de todos os valores
inteiros divisíveis por 3 ou 5 que sejam inferiores ao número passado.


É necessário ter instalado em sua máquina os seguintes programas para rodar e testar:
    -Android Studio
    -Visual studio code (instale 2 extençoes no seu Visual studio code, "Flutter" e "Dart")
    -Instale o Flutter e o Dart, Baixe e instale o Flutter do site oficial: https://docs.flutter.dev/get-started/install
Certifique-se de adicionar o caminho do Flutter ao seu sistema (por exemplo, adicionando ao PATH no caso do Windows.  ex:C:\flutter). certifique-se que esta tudo ok usando comando no seu terminal "flutter doctor" e ele ira mostrar se está tudo certo para rodar a aplicação.


Depois do ambiente de desenvolvimento preparado, siga os passos abaixo para rodar e testar o projeto:
    
    - Crie uma pasta e dentro dela abra o terminal e clone o projeto com o 
    comando "git clone https://github.com/cesarsouzad/Flutter_escribo_teste.git".
    - Navegue até o diretório do projeto e execute o comando flutter pub get para instalar as dependências do projeto. "cd teste_escribo/escribo" e "flutter pub get".
    - Abra o Android Studio e crie um Virtual Device, Acesse o AVD Manager:
        No menu superior, clique em "Tools" (Ferramentas).
        Selecione "AVD Manager" (Gerenciador de AVD).
        Na janela do AVD Manager, clique em "Create Virtual Device" (Criar Dispositivo Virtual).
        Escolha um hardware de emulador (por exemplo, Pixel 4) e clique em "Next" (Avançar).
        Escolha a versão do sistema operacional que você deseja usar no seu emulador e clique em "Next".
        Selecione uma imagem do sistema Android existente ou clique em "Download" para baixar uma nova imagem. Clique em "Next" quando terminar.
        Configure quaisquer opções adicionais, como orientação da tela, escala do emulador, etc. Clique em "Finish" quando terminar.

    - Volte ao Visual studio code abra  a pasta do projeto clonado.
    - Procure no canto inferior direito "No Device" procure o emulador que você criou e clique.
    - Se nao tiver utilize a opção Create Android emulador.
    - Clique na pasta escribo
    - Clique na pasta lib e abra o arquivo main.dart
    - Depois de aberto o emulador e acessado as pastas acima, pressione (Ctrl+Shift+D) e clique no botão Run and Debug ou F5.

    Para testar o app basta digitar qualquer numero inteiro e o resultado saira automatico.