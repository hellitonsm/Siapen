CREATE OR ALTER trigger condenacao_interno_bi0 for condenacao_interno
active before insert position 0
AS
begin
  NEW.idcondenacao_interno = GEN_ID(idcondenacao_interno,1);
end
