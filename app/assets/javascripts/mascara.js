$(document).ready(function(){
  $('#date').mask("00/00/0000", {placeholder: "__/__/____"});
  $('#cep').mask('00000-000', {placeholder: "CEP"});
  $('#numend').mask('00000', {placeholder: "Número"});
  $('#phoneFixo').mask('(00) 0000-0000', {placeholder: " Fixo"});
  $('#phoneCel').mask('(00) 00000-0000', {placeholder: " Celular"});
  $('#phoneTrab').mask('(00) 0000-0000', {placeholder: " Trabalho"});
  $('#cpf').mask('000.000.000-00', {placeholder: " CPF"}, {reverse: true});
  $('#cnpj').mask('00.000.000/0000-00', {placeholder: " CNPJ"},{reverse: true});
  $('#rg_emissor').mask('AAA/AA', {placeholder: " Emissão"}, {reverse: true});
  $('#money').mask('000.000.000.000.000,00', {reverse: true});
  $('.money2').mask("#.##0,00", {reverse: true});
  $('.percent').mask('##0,00%', {reverse: true});
});


