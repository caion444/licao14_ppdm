# Lição 14 - Prática de Fixação: Módulos 01 e 02 (PPDM)

**Aluno:** Caio  
**Curso:** Técnico em Desenvolvimento de Sistemas  
**Unidade Curricular:** Programação para Dispositivos Móveis (PPDM)  

---

## PARTE 1: Respostas Conceituais (01 - Dispositivos Móveis)

### 1. Diferença de Arquiteturas: Nativo (Android/iOS) vs. Cross-Platform/Híbrido (Flutter)
- **Desenvolvimento Nativo:** Utiliza linguagens, ferramentas e SDKs específicos de cada sistema operacional (Kotlin/Java para Android e Swift/Objective-C para iOS). Exige a manutenção de dois códigos-fonte distintos, oferecendo integração direta com o hardware do dispositivo, porém com maior custo e tempo de desenvolvimento.
- **Desenvolvimento Cross-Platform / Híbrido (Flutter):** Permite escrever uma única base de código em Dart compilada de forma nativa (código de máquina ARM/x64) para Android, iOS, Web e Desktop. Ao contrário de frameworks híbridos baseados em WebView ou pontes JavaScript, o Flutter possui seu próprio motor de renderização (Skia/Impeller) que desenha todos os widgets diretamente na tela, entregando alta performance e fidelidade visual idêntica entre plataformas.

### 2. Ciclo de Vida e Widgets: `StatelessWidget` vs. `StatefulWidget`
- **`StatelessWidget`:** É um widget estático e imutável após sua criação. Ele não guarda estado interno que mude durante a interação do usuário; sua aparência depende apenas das configurações recebidas no construtor.
  - *Exemplo de uso:* Um cabeçalho informativo, um ícone decorativo ou uma tela estática de detalhes/sobre.
- **`StatefulWidget`:** É um widget dinâmico vinculado a um objeto `State` mutável, capaz de armazenar dados que mudam durante a execução do app e atualizar a interface em resposta a eventos.
  - *Exemplo de uso:* Um botão de curtir/favoritar que alterna o ícone e incrementa um contador ao ser clicado, ou uma tela com formulários e filtros dinâmicos.

### 3. Gerenciamento de Estado: O que acontece na tela ao chamar `setState()`?
Quando `setState()` é chamado dentro de um `StatefulWidget`:
1. O estado interno da classe `State` é atualizado conforme a lógica passada no callback.
2. O Flutter marca o elemento correspondente na árvore como *"dirty"* (desatualizado) e agenda uma nova renderização para o próximo frame.
3. O método `build()` daquele widget é reexecutado, reconstruindo a árvore de widgets com os novos valores e atualizando na tela apenas os elementos visuais que sofreram alteração, sem recarregar o aplicativo inteiro.

---

## PARTE 2: Prática Hands-on (02 - Criação de Interface)
Implementação baseada no tutorial oficial do Flutter (*Building Layouts & Adding Interactivity*), estruturada em componentes reutilizáveis (`lib/widgets/`):
- `TitleSection`: `Row` com `Expanded`, `Column` e `FavoriteWidget` (`StatefulWidget`).
- `ButtonSection`: Barra de ações com `Row` (`MainAxisAlignment.spaceEvenly`) e colunas de ícone + rótulo (`ButtonWithText`).
- `TextSection`: Seção descritiva com `Padding` e `Text` configurados para evitar estouro de tela (*Overflow*).
