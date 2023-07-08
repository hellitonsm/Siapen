<?php

  include 'config/funcoes.php';
  include 'config/cache.php';

  $usuario=$_POST['usuario'];
  $senha=$_POST['senha'];
  $identidade_banco_dados=ltrim(rtrim($_POST['identidade_banco_dados']));


  if (md5($usuario)==$validador)
  {
      if (md5($senha)==$confirmador)
      {

        $nome_arquivo = $_FILES['arquivo']['name'];

        $arquivo = $pasta_recebe . $nome_arquivo ;
        
        monitorando_envio($identidade_banco_dados.'-Upload = '.$arquivo);

        $de = $arquivo;
        $para = $pasta_recebe . 'falha_upload-'.date("y-m-d-H-i-s").$nome_arquivo;

        try
        {

            if (move_uploaded_file($_FILES['arquivo']['tmp_name'], $arquivo))
            {
               $resultado = envio_replicacao($arquivo,$identidade_banco_dados);
               if ($resultado='[OK CONCLUIDO]')
               {
                 $para = $pasta_recebe . 'recebido-'.date("y-m-d-H-i-s").$nome_arquivo;
               }
               else
               {
                 $para = $pasta_recebe . 'erro_execucao-'.date("y-m-d-H-i-s").$nome_arquivo;
               }
            }
            else
            {
               $resultado = 'FALHOU';
            }
        }
        catch (Exception $e)
        {
        }

        try
        {
          rename($de, $para);
        }
          catch (Exception $e)
        {
        }
        
        echo $resultado;

      }
  }



?>
