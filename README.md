# CMC-12-Exame
Estudo sobre técnicas de anti-windup

1) Back Calculation: instruções de uso do código

Basta compilar simulation1.m, que simula ambos os
sistemas PID + saturação e PID + saturação + back calculation
para comparação e possibilitar a análise da técnica em questão.

simulation1.m: organiza e compila os arquivos do projeto.

back_calculation.slx: diagrama de blocos discretizado para 
simular o sistema com o back calculation e sem o back calculation.

BackCalculation.m: a partir de um ganho, projeta o PID, cujas
constantes foram determinadas através do método de Ziegler-Nichols 
mais um ajuste fino baseado na simulação do sistema linear 
controlado, discretiza o ganho e estabelece os parâmetros do 
diagrama de blocos.