<?php

  include 'config/funcoes.php';
  include 'config/cache.php';

  $usuario=$_POST['usuario'];
  $senha=$_POST['senha'];
  $identidade_banco_dados=ltrim(rtrim($_POST['identidade_banco_dados']));
  $tipo_conexao=ltrim(rtrim($_POST['tipo_conexao']));


  if (md5($usuario)==$validador)
  {

      if (md5($senha)==$confirmador)
      {

        if ($tipo_conexao=='envio')
        {

            //criar o blob na memoria
            $dbh = retornaBD($identidade_banco_dados);
              //contrução da sql
            $sql = 'update '.$_POST['tabela'].' set '.$_POST['campo'].' = (?) where '.$_POST['nome_pk'].' = '.$_POST['valor_pk'];
              //executa no banco de dados
            $sth = ibase_query($dbh,$sql,ltrim(rtrim($_POST['arquivo_blob'])));
            $retorno = '[OK CONCLUIDO]';
            $erro_destino = ibase_errmsg();
            if ($erro_destino<>'')
            {
               $retorno = 'Falhou: '.$erro_destino;
               monitorando_envio($user_firebird.'-Erro = '.$erro_destino.' ($erro_destino = ibase_errmsg();)');
            }
            echo $retorno;
            
         }
         else
         {

           $arquivo_recebe=$pasta_recebe.$_POST['arquivo_recebe'];

           
           $dborigem = retornaBD();

           //monta o sql que retorna os possiveis campos com blobs
           $query_sincronismo = 'SELECT FIRST 1 S.IDSINCRONISMO_BLOB, S.TABELA, S.CAMPO, S.NOME_PK, S.VALOR_PK ';
           $query_sincronismo = $query_sincronismo.' FROM SINCRONISMO_BLOB S, SINCRONISMO_CONTROLE T ';
           $query_sincronismo = $query_sincronismo." WHERE S.IDSINCRONISMO_CONTROLE=T.IDSINCRONISMO_CONTROLE AND T.USUARIO = '".$identidade_banco_dados."' ";
           $query_sincronismo = $query_sincronismo.' ORDER BY S.IDSINCRONISMO_BLOB ';

           //abre a tabela de script local
           $trans_1 = ibase_trans(IBASE_COMMITTED|IBASE_REC_VERSION|IBASE_NOWAIT,$dborigem);
           $result_sincronismo=ibase_query($trans_1,$query_sincronismo);

           $retorno = 'VAZIO';
           $soma_registros = 0;
           //envia script por script para o destino
           while ($reg_sincronismo=ibase_fetch_row($result_sincronismo))
           {

               //monta o sql que retorna o blob propriamente dito.
               $sql_blob = 'SELECT '.$reg_sincronismo[2].' FROM '.$reg_sincronismo[1].
                 ' WHERE '.$reg_sincronismo[2].' IS NOT NULL AND '.$reg_sincronismo[3].' = '.$reg_sincronismo[4];
               
               $result_sql_blob=ibase_query($trans_1,$sql_blob);
               $reg_sql_blob=ibase_fetch_row($result_sql_blob);

               //pega as informações do blob
               $blob_data = ibase_blob_info($reg_sql_blob[0]);
               //abre o blob em handle
               $blob_hndl = ibase_blob_open($reg_sql_blob[0]);
               //transforma o hande em string
               $valor_blob=ibase_blob_get($blob_hndl, $blob_data[0]);

               //
               $script = '|'.$reg_sincronismo[0].
                         '|'.$reg_sincronismo[1].
                         '|'.$reg_sincronismo[2].
                         '|'.$reg_sincronismo[3].
                         '|'.$reg_sincronismo[4].'|';
               
               $handle  = fopen($arquivo_recebe,"a+");
               $lixo    = fwrite($handle,$script.chr(13).chr(10));
               $lixo    = fwrite($handle,$valor_blob);
               fclose($handle);

           }

           if (file_exists($arquivo_recebe))
           {
             chmod($arquivo_recebe,0666); // Libera o acesso para leitura do arquivo gerado
             monitorando_recebe($identidade_banco_dados.'-Arquivo orientação pronto: '.$arquivo_recebe);
             $retorno = '[OK CONCLUIDO]';
           }

           ibase_close($dborigem);

           monitorando_recebe($identidade_banco_dados.'-Resultado blob: '.$retorno);

           if ($retorno == '[OK CONCLUIDO]')
           {
             //echo $retorno;
             echo $valor_blob;
           }

       }

    }
}

?>
