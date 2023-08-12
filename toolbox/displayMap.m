% Displays montage in the app

function displayMap(allMap, displayRange, indexRange, colorMap, titleText, bound)

    figure();
    set(gca,'Position',[0.05 0.05 0.9 0.9]);
    montage(allMap,'Size', bound, 'DisplayRange', displayRange, 'Indices', indexRange);
    colorbar('location','Eastoutside','FontSize', 18);
    title(titleText);
    set(gca,'dataAspectRatio', [1 1 1]);
    colormap(colorMap);

end
               


