# Teste Flutter

Projeto Flutter para teste solicitado.

## Perguntas e Respostas do teste

### 1. O que é Flutter?

Flutter é um framework de desenvolvimento de aplicativos móveis criado pela Google. Ele é usado para construir aplicativos nativos para iOS, Android, web e desktop a partir de um único código base. Usa a linguagem de programação Dart e possui um conjunto de widgets personalizáveis ​​para criar interfaces de usuário atraentes e dinâmicas. Oferece um conjunto de ferramentas integradas para desenvolvimento, como o Hot Reload, que permite que os desenvolvedores vejam as mudanças em tempo real enquanto trabalham no código, tornando o processo de desenvolvimento mais rápido e eficiente.


### 2. Quais são as principais diferenças entre Flutter e outros frameworks de desenvolvimento mobile?

Desempenho:Usa um compilador próprio que compila o código em código nativo para a plataforma desejada, proporcionando um desempenho mais rápido e suave do que outros frameworks que usam abordagens como interpretadores de código.

Interface de usuário personalizável: Oferece um conjunto de widgets personalizáveis que podem ser usados para criar interfaces de usuário altamente personalizadas, proporcionando maior controle sobre a aparência e a funcionalidade dos aplicativos.

Desenvolvimento rápido: Oferece uma ferramenta chamada Hot Reload, que permite que os desenvolvedores vejam as mudanças em tempo real enquanto trabalham no código, reduzindo o tempo de desenvolvimento e tornando o processo de desenvolvimento mais eficiente.

Compatibilidade multiplataforma: O Flutter permite que os desenvolvedores criem aplicativos para iOS, Android, web e desktop a partir de um único código base, o que significa que é possível economizar tempo e dinheiro no desenvolvimento de aplicativos para várias plataformas.

Linguagem de programação: Usa a linguagem de programação Dart, que foi desenvolvida pela Google e oferece recursos como tipagem estática e garbage collection, o que pode tornar o desenvolvimento mais fácil e seguro.

### 3. O que é um Widget em Flutter?

Widget é um elemento básico de interface do usuário (UI) que pode ser usado para construir a estrutura visual de um aplicativo. Um Widget pode representar qualquer coisa, desde um botão simples até uma lista complexa ou uma tela inteira.

Os Widgets são construídos com base em outros Widgets menores e podem ser organizados hierarquicamente em uma árvore de Widgets, conhecida como Widget Tree, que representa a estrutura visual de um aplicativo.

### 4. O que é o setState() em Flutter?
O setState() é um método importante em Flutter que é usado para atualizar a interface do usuário quando ocorre uma mudança de estado em um Widget Stateful.

Quando um Widget Stateful tem um estado interno que muda (como o texto de um campo de entrada que é digitado pelo usuário), é necessário atualizar a interface do usuário para exibir a nova informação. É aí que entra o setState().

O setState() é chamado sempre que há uma mudança de estado no Widget e informa ao Flutter que a interface do usuário precisa ser atualizada. Dentro do setState(), é possível atualizar as propriedades do Widget que mudaram, como a cor do texto ou o valor de um campo de entrada.

O setState() também pode ser usado para chamar métodos assíncronos e atualizar a interface do usuário quando a operação for concluída.

### 5. O que é um StatelessWidget e um StatefulWidget em Flutter?

Os Widgets Stateless são Widgets que não têm estado e não mudam ao longo do tempo. Eles são construídos apenas uma vez e exibem as informações fornecidas a eles.

Já os Widgets Stateful têm estado interno e podem ser atualizados ao longo do tempo em resposta a interações do usuário ou eventos externos. Eles são reconstruídos sempre que o estado interno muda.
