%Universidade Federal do Ceara - Campus Sobral
%Inteligencia Computacional - 2018.1
%Prof. Jarbas Joaci
%374874 - Francisco Igor Felicio Linhares
%Funcao que inicializa os valores

function [Pop, MelhorGlobal, Gt] = InicializaDados(nparticulas)

    %Estabelecendo o range de abrangencia de valores x e y
    RangeX = [0 20];
    RangeY = [0 20];

    %Inicializando os parametros
    Pop = zeros (nparticulas, 8);
    
    %O melhor global come�a com o pior valor poss�vel, no caso 0.
    MelhorGlobal = 0; 
    Gt = zeros(1,2);

    for i=1:nparticulas
        %Povoando o enxame
        Pop(i,1)= unifrnd(RangeX(1),RangeX(2));
        Pop(i,2)= unifrnd(RangeY(1),RangeY(2));
        
        %Calculando os valores iniciais
        Pop(i,5)= func(Pop(i,1),Pop(i,2));
    
        %Atribuindo os valores iniciais aos melhores valores
        Pop(i,6) = Pop(i,1);
        Pop(i,7) = Pop(i,2);
        Pop(i,8) = Pop(i,5);
        
        %Encontra o valor m�ximo da inicializa��o:
        if (Pop(i,5)>MelhorGlobal)
            MelhorGlobal = Pop(i,5); 
            Gt = [Pop(i,6) Pop(i,7)];
        end
    end
end