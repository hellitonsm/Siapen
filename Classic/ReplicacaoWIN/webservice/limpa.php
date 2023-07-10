<?php

  include 'config/funcoes.php';
  include 'config/cache.php';


  $usuario=$_POST['usuario'];
  $senha=$_POST['senha'];
  $primeiroidsincronismo=$_POST['primeiroidsincronismo'];
  $ultimoidsincronismo=$_POST['ultimoidsincronismo'];
  $identidade_banco_dados= ltrim(rtrim($_POST['identidade_banco_dados']));
  $tipo_sincronismo = ltrim(rtrim($_POST['tipo_sincronismo']));

  if (md5($usuario)==$validador)
  {
      if (md5($senha)==$confirmador)
      {
          if ($primeiroidsincronismo<>"")
          {
              if ($ultimoidsincronismo<>"")
              {
                  if ($identidade_banco_dados<>"")
                  {
                    if ($tipo_sincronismo=='blob')
                    {
                      $query = 'delete from sincronismo_blob s where s.idsincronismo_controle in '
                      . "(select t.idsincronismo_controle from sincronismo_controle t where t.usuario =  '".$identidade_banco_dados."') "
                      .' and s.idsincronismo_blob ='.$primeiroidsincronismo ;
                    }
                    else
                    {
                      $query = 'delete from sincronismo s where s.idsincronismo_controle in '
                      . "(select t.idsincronismo_controle from sincronismo_controle t where t.usuario =  '".$identidade_banco_dados."') "
                      .' and s.idsincronismo >='.$primeiroidsincronismo.' and s.idsincronismo <='.$ultimoidsincronismo;
                    }

                    monitorando_recebe($identidade_banco_dados.'-Limpando: '.$query);

                    $retorno = exeBD($query);

                    if ($retorno=="")
                    {
                       $retorno = '[OK CONCLUIDO]';
                       echo '[OK CONCLUIDO]';
                    }

                    monitorando_recebe($identidade_banco_dados.'-Resultado da Limpeza: '.$retorno);
                  }
              }
          }
      }
  }



?>
