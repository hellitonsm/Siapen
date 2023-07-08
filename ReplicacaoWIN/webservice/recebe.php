<?php

  include 'config/funcoes.php';
  include 'config/cache.php';

  $usuario=$_POST['usuario'];
  $senha=$_POST['senha'];
  $arquivo_recebe=$_POST['arquivo_recebe'];
  $identidade_banco_dados= ltrim(rtrim($_POST['identidade_banco_dados']));

  if (md5($usuario)==$validador)
  {
      if (md5($senha)==$confirmador)
      {
          if ($arquivo_recebe<>"")
          {
              if ($identidade_banco_dados<>"")
              {

                $nome_arquivo = $pasta_recebe.$arquivo_recebe;

                $resultado = recebe_replicacao($nome_arquivo,$identidade_banco_dados);

                echo $resultado;


              }
          }
      }
  }



?>
