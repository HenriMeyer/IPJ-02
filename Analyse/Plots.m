opts = detectImportOptions('Data.txt', 'Delimiter', '\t');
opts.DataLines = 2;  % Daten starten in Zeile 2
opts.VariableNames = {'Index', 'Einnahmen', 'Kosten', 'Gewinn'};
opts.VariableTypes = {'double','double','double','double'};

T = readtable('Data.txt', opts);

index = T.Index;
einnahmen = T.Einnahmen;
kosten = T.Kosten;
gewinn = T.Gewinn;

figure;
plot(index, einnahmen, 'r', 'DisplayName', 'Einnahmen'); hold on;
plot(index, kosten, '-b', 'DisplayName', 'Kosten');
plot(index, gewinn, '-g', 'DisplayName', 'Gewinn');
hold off;

xlabel('Index');
ylabel('Wert');
title('Einnahmen, Kosten und Gewinn über Index');
legend('Location', 'best');
grid on;
