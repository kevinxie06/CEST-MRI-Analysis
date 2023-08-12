% CEST Application | Displays single slice
    
    function singleSliceDisplay(axes, image, climRange, colorMap, titleText)
        imagesc(axes, image);
        clim(axes, climRange);
        colorbar(axes, 'location', 'Eastoutside', 'FontSize', 18);
        title(axes, titleText);
        colormap(axes, colorMap);

    end





