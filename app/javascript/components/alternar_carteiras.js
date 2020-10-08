const alternarCarteira = () => {
  
  const botao = document.querySelector("#toggle-btn");
 
  botao.addEventListener('click', (e) => {
    e.preventDefault();
    const divcarteira = document.querySelector("#carteira");
    const calendario_sus = document.querySelector("#calendario-sus");
    divcarteira.classList.remove("hide");
    calendario_sus.classList.add("hide");
  });

  const botao2 = document.querySelector("#toggle-btn2");
  
  botao2.addEventListener('click', (e) => {
    e.preventDefault();
    const divcarteira = document.querySelector("#carteira");
    const calendario_sus = document.querySelector("#calendario-sus");
    divcarteira.classList.add("hide");
    calendario_sus.classList.remove("hide");
  });
}
export{alternarCarteira};


