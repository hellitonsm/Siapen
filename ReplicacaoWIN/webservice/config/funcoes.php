<?PHP
include "cache.php";
header("Content-Type: text/html; charset=iso-8859-1");

setlocale (LC_ALL, 'ptb');


function trataTexto($str){
	$teste = utf8_decode($str);
	$teste = str_replace("'","",$teste);
	$teste = str_replace("\"","",$teste);
	//$teste = addslashes($str);
	$teste = strip_tags($teste);
	$teste = trim($teste);
	$teste = strtoupper($teste);
	return $teste;
}

function reais($valor){
	//return $valor;
	//$valor = str_replace(".","",$valor);
	//$valor = str_replace(",",".",$valor);
	return number_format($valor, 2 ,"," , ".");
}

function arredonda($valor){
	return number_format($valor, 2 ,"." , "");
}


function exeBD($query){
global $host, $username, $password ;

	$con = ibase_connect($host, $username, $password) or die("0;<center><img src='img/error.jpg'><br>Banco de dados indisponível.</center>");
	$ar = ibase_query($con,$query);
    $erro_destino = ibase_errmsg();
	ibase_close($con);
    return $erro_destino;
    
}

function retornaBD($user_firebird = ''){
global $host;

    $username = $user_firebird;
    $password = $user_firebird;
    
	if ($user_firebird=='')
	{
        $username = "SINCRONIZADOR";
        $password = "albatroz";
	}

    $con = ibase_connect($host, $username, $password) or die("0;<center><img src='img/error.jpg'><br>Banco de dados indisponível.</center>");

    return $con;
}

function estados($s)
{
?>
	<select id='fUf' name='fUf' class='itext'>
	<option value='SP' <?if($s == "SP") echo("selected");?>>São Paulo</option>
	<option value='RJ' <?if($s == "RJ") echo("selected");?>>Rio de Janeiro</option>
	<option value='MG' <?if($s == "MG") echo("selected");?>>Minas Gerais</option>
	<option value='PR' <?if($s == "PR") echo("selected");?>>Paraná</option>
	<option value='SC' <?if($s == "SC") echo("selected");?>>Santa Catarina</option>
	<option value='RJ' <?if($s == "RS") echo("selected");?>>Rio Grande do Sul</option>
	<option value='MS' <?if($s == "MS") echo("selected");?>>Mato Grosso do Sul</option>
	<option value='MT' <?if($s == "MT") echo("selected");?>>Mato Grosso</option>
	</select>
<?
}

function validaCPF($cpf)
{
    $cpf = str_pad( ereg_replace('[^0-9]', '', $cpf), 11, '0', STR_PAD_LEFT);

    if (strlen($cpf) != 11 || $cpf == '00000000000' || $cpf == '99999999999') {
        return false;
    } else {
        for ($t = 9; $t < 11; $t++) {
            for ($d = 0, $c = 0; $c < $t; $c++) {
                $d += $cpf{$c} * (($t + 1) - $c);
            }

            $d = ((10 * $d) % 11) % 10;

            if ($cpf{$c} != $d) {
                return false;
            }
        }

        return true;
    }
}

function validaCNPJ($cnpj) {
   
      if (strlen($cnpj) <> 14)
         return false;

      $soma = 0;
      
      $soma += ($cnpj[0] * 5);
      $soma += ($cnpj[1] * 4);
      $soma += ($cnpj[2] * 3);
      $soma += ($cnpj[3] * 2);
      $soma += ($cnpj[4] * 9);
      $soma += ($cnpj[5] * 8);
      $soma += ($cnpj[6] * 7);
      $soma += ($cnpj[7] * 6);
      $soma += ($cnpj[8] * 5);
      $soma += ($cnpj[9] * 4);
      $soma += ($cnpj[10] * 3);
      $soma += ($cnpj[11] * 2);

      $d1 = $soma % 11;
      $d1 = $d1 < 2 ? 0 : 11 - $d1;

      $soma = 0;
      $soma += ($cnpj[0] * 6);
      $soma += ($cnpj[1] * 5);
      $soma += ($cnpj[2] * 4);
      $soma += ($cnpj[3] * 3);
      $soma += ($cnpj[4] * 2);
      $soma += ($cnpj[5] * 9);
      $soma += ($cnpj[6] * 8);
      $soma += ($cnpj[7] * 7);
      $soma += ($cnpj[8] * 6);
      $soma += ($cnpj[9] * 5);
      $soma += ($cnpj[10] * 4);
      $soma += ($cnpj[11] * 3);
      $soma += ($cnpj[12] * 2);
      
      
      $d2 = $soma % 11;
      $d2 = $d2 < 2 ? 0 : 11 - $d2;
      
      if ($cnpj[12] == $d1 && $cnpj[13] == $d2) {
         return true;
      }
      else {
         return false;
      }
   }
   
function convExtenso($valor = 0, $maiusculas = false) {

$singular = array("centavo", "real", "mil", "milhão", "bilhão", "trilhão", "quatrilhão"); 
$plural = array("centavos", "reais", "mil", "milhões", "bilhões", "trilhões", 
"quatrilhões"); 

$c = array("", "cem", "duzentos", "trezentos", "quatrocentos", 
"quinhentos", "seiscentos", "setecentos", "oitocentos", "novecentos"); 
$d = array("", "dez", "vinte", "trinta", "quarenta", "cinquenta", 
"sessenta", "setenta", "oitenta", "noventa"); 
$d10 = array("dez", "onze", "doze", "treze", "quatorze", "quinze", 
"dezesseis", "dezesete", "dezoito", "dezenove"); 
$u = array("", "um", "dois", "três", "quatro", "cinco", "seis", 
"sete", "oito", "nove"); 

$z = 0; 
$rt = "";

$valor = number_format($valor, 2, ".", "."); 
$inteiro = explode(".", $valor); 
for($i=0;$i<count($inteiro);$i++) 
for($ii=strlen($inteiro[$i]);$ii<3;$ii++) 
$inteiro[$i] = "0".$inteiro[$i]; 

$fim = count($inteiro) - ($inteiro[count($inteiro)-1] > 0 ? 1 : 2); 
for ($i=0;$i<count($inteiro);$i++) { 
$valor = $inteiro[$i]; 
$rc = (($valor > 100) && ($valor < 200)) ? "cento" : $c[$valor[0]]; 
$rd = ($valor[1] < 2) ? "" : $d[$valor[1]]; 
$ru = ($valor > 0) ? (($valor[1] == 1) ? $d10[$valor[2]] : $u[$valor[2]]) : ""; 

$r = $rc.(($rc && ($rd || $ru)) ? " e " : "").$rd.(($rd && 
$ru) ? " e " : "").$ru; 
$t = count($inteiro)-1-$i; 
$r .= $r ? " ".($valor > 1 ? $plural[$t] : $singular[$t]) : ""; 
if ($valor == "000")$z++; elseif ($z > 0) $z--; 
if (($t==1) && ($z>0) && ($inteiro[0] > 0)) $r .= (($z>1) ? " de " : "").$plural[$t]; 
if ($r) $rt = $rt . ((($i > 0) && ($i <= $fim) && 
($inteiro[0] > 0) && ($z < 1)) ? ( ($i < $fim) ? ", " : " e ") : " ") . $r; 
} 

if(!$maiusculas){ 
return($rt ? $rt : "zero"); 
} else { 

if ($rt) $rt=ereg_replace(" E "," e ",ucwords($rt));
return (($rt) ? ($rt) : "Zero"); 
} 

} 

function extenso($valor)
{
$dim = convExtenso($valor);
$dim = ereg_replace(" E "," e ",ucwords($dim));
$valor = number_format($valor, 2, ",", ".");

return $dim;
}

function monitorando_recebe($texto_log)
{
   $filetxt = date("y-m-d").'monitorando_recebe.log';
   $handle  = fopen($filetxt,"a+");
   $data = date("d/m/Y - H:i:s") ;
   $lixo    = fwrite($handle,$data.' - '.$texto_log.chr(13));
   fclose($handle);
   chmod($filetxt,0666); // Libera o acesso para leitura do arquivo gerado
}

function monitorando_envio($texto_log)
{
   $filetxt = date("y-m-d").'monitorando_envio.log';
   $handle  = fopen($filetxt,"a+");
   $data = date("d/m/Y - H:i:s") ;
   $lixo    = fwrite($handle,$data.' - '.$texto_log.chr(13));
   fclose($handle);
   chmod($filetxt,0666); // Libera o acesso para leitura do arquivo gerado
}

function inicio_script($script)
{
    $str1 = trim(substr($script,0,7));
    
    monitorando_envio('COmeço da Linha='.$str1);

    $retorno = 'N';
    if ($str1=='INSERT')
    {
      $retorno = 'S';
    }
    if ($str1=='UPDATE')
    {
      $retorno = 'S';
    }
    if ($str1=='DELETE')
    {
      $retorno = 'S';
    }

    return $retorno;

}




function envio_replicacao($nome_arquivo, $user_firebird)
{
   /*
   testo aqui se o banco de dados de destino
   está abrindo se for erro vai para o except
   */
  //abre o banco de destino
  $dbdestino = retornaBD($user_firebird);
  
  monitorando_envio($user_firebird.'-Abrindo arquivo:'.$nome_arquivo);
  $arquivo  = fopen($nome_arquivo,"r");
  if(!$arquivo)
  {
    $retorno = 'Não foi possível abrir o arquivo';
    monitorando_envio($user_firebird.'-Não foi possível abrir o arquivo:'.$nome_arquivo);
  }
  else
  {
      monitorando_envio($user_firebird.'-Entrando no loop arquivo:'.$nome_arquivo);
      $num = 0 ;
      $proximo = '';
       //enquanto não for o final do arquivo execute
      while (!feof($arquivo))
      {
           /*
           faço a leitura linha por linha do arquivo
           */
            $linha = fgets($arquivo); // SCRIPT

            $script = '' ;

            if (inicio_script($linha)=='S')
            {
              $script = $proximo ;
              $proximo = $linha ;
            }
            else
            {
              $proximo = $proximo.$linha ;
            }
            
            if (ltrim(rtrim($script))<>"")
            {
                $num = $num + 1;
                monitorando_envio($user_firebird.'-Linha: ('.$num.') ');

                monitorando_envio($user_firebird.'-Script para executar:'.$script);

                try
                {
                   /****executa no destino****/
                   //inicia transacao no destino
                   monitorando_envio($user_firebird.'-Abrindo a transação!');
                   $trans_destino = ibase_trans(IBASE_COMMITTED|IBASE_REC_VERSION|IBASE_NOWAIT,$dbdestino);
                   //executa no destino
                   monitorando_envio($user_firebird.'-Executando no banco de dados!');
                   $result_destino = ibase_query($trans_destino,$script);
                   //grava mensagem de erro
                   $erro_destino = ibase_errmsg();
                   if ($erro_destino<>'')
                   {
                       monitorando_envio($user_firebird.'-Erro = '.$erro_destino.' ($erro_destino = ibase_errmsg();)');
                   }
                   //finaliza no destino
                   ibase_commit($trans_destino);
                   monitorando_envio($user_firebird.'-Finalizando transação; ibase_commit($trans_destino);');

                }
                  catch (Exception $e)
                {
                }
            }
      }

      $script = $proximo ;

      if (ltrim(rtrim($script))<>"")
      {

        $num = $num + 1;

        monitorando_envio($user_firebird.'-Linha: ('.$num.') ');

        monitorando_envio($user_firebird.'-Script para executar:'.$script);

        try
        {
           /****executa no destino****/
           //inicia transacao no destino
           monitorando_envio($user_firebird.'-Abrindo a transação!');
           $trans_destino = ibase_trans(IBASE_COMMITTED|IBASE_REC_VERSION|IBASE_NOWAIT,$dbdestino);
           //executa no destino
           monitorando_envio($user_firebird.'-Executando no banco de dados!');
           $result_destino = ibase_query($trans_destino,$script);
           //grava mensagem de erro
           $erro_destino = ibase_errmsg();
           if ($erro_destino<>'')
           {
               monitorando_envio($user_firebird.'-Erro = '.$erro_destino.' ($erro_destino = ibase_errmsg();)');
           }
           //finaliza no destino
           ibase_commit($trans_destino);
           monitorando_envio($user_firebird.'-Finalizando transação; ibase_commit($trans_destino);');

        }
          catch (Exception $e)
        {
        }
      }

      $retorno = '[OK CONCLUIDO]';

  }

  fclose($arquivo);
  ibase_close($dbdestino);

  monitorando_envio($user_firebird.'-Retorno = '.$retorno);
  return $retorno;
  
}

function recebe_replicacao($nome_arquivo, $identidade_banco_dados)
{

   $dborigem = retornaBD();

   $query_sincronismo = 'SELECT ';
   $query_sincronismo = $query_sincronismo.' S.IDSINCRONISMO, S.SCRIPT ';
   $query_sincronismo = $query_sincronismo.' FROM SINCRONISMO S, SINCRONISMO_CONTROLE T ';
   $query_sincronismo = $query_sincronismo." WHERE S.IDSINCRONISMO_CONTROLE=T.IDSINCRONISMO_CONTROLE AND T.USUARIO = '".$identidade_banco_dados."' ";
   $query_sincronismo = $query_sincronismo.' ORDER BY 1';

   monitorando_recebe($identidade_banco_dados.'-Selecionando registros:'.$query_sincronismo);

   //abre a tabela de script local
   $trans_1 = ibase_trans(IBASE_COMMITTED|IBASE_REC_VERSION|IBASE_NOWAIT,$dborigem);
   $result_sincronismo=ibase_query($trans_1,$query_sincronismo);

   $retorno = 'VAZIO';
   $soma_registros = 0;
   //envia script por script para o destino
   while ($reg_sincronismo=ibase_fetch_row($result_sincronismo))
   {

       $soma_registros = $soma_registros + 1 ;
       $script = '|'.$reg_sincronismo[0].'|'.$reg_sincronismo[1].'|'; //script
       $handle  = fopen($nome_arquivo,"a+");
       $lixo    = fwrite($handle,$script.chr(13).chr(10));

       fclose($handle);
       $retorno = '[OK CONCLUIDO]';


   }
   
   if (file_exists($nome_arquivo))
   {
     chmod($nome_arquivo,0666); // Libera o acesso para leitura do arquivo gerado
     monitorando_recebe($identidade_banco_dados.'-Arquivo pronto: '.$nome_arquivo.' com total de '.$soma_registros.' registros.');
   }
   
   ibase_close($dborigem);

   monitorando_recebe($identidade_banco_dados.'-Resultado: '.$retorno);

   return $retorno;

}



?>
