const alternarCarteira = () => {

  const botao = document.querySelector("#toggle-btn");

  botao.addEventListener('click', (e) => {
    const divcarteira = document.querySelector("#carteira");
    const calendario_sus = document.querySelector("#calendario-sus");
    divcarteira.classList.toggle("hide");
    calendario_sus.classList.toggle("hide");
  });
}
export{alternarCarteira};

