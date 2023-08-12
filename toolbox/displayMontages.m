% Displays montage

function displayMontages(allMap, axes, displayRange, indexRange, colorMap, titleText, bound)

    montage(allMap,'Size', bound, 'DisplayRange', displayRange, 'Indices', indexRange, 'Parent', axes);
    colorbar(axes, 'location','Eastoutside','FontSize', 18);
    title(axes, titleText);
    colormap(axes, colorMap);

    
end
               


