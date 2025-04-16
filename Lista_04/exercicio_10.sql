SELECT nome_curso, ch FROM curso c
WHERE ch = 
(SELECT ch FROM curso c 
WHERE nome_curso = 'auto cad')
AND nome_curso <> 'auto cad';