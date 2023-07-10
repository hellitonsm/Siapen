# Siapen
Adaptação do Siapen-SPF do Google Source para Delphi 11

É necessário Instalar o Fast Report qualquer versão acima do 4 para visualizar relatórios.

Em caso de exception em uni-directional datasets, modifique o arquivo FrxEngine.pas da seguinte forma:

```pascal

{ avoid exception in uni-directional datasets }
      NextNeeded := False;
     { try
        Master.DataSet.Prior;
      except
        NextNeeded := False;
      end;
      }

```
Basicamente é deixar o NextNeeded como false, e comentar a linha do Try.
