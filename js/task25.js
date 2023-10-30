function extractStringFromWDDX(wddxData) {
    var match = wddxData.match(/<string>(.*?)<\/string>/);
    if (match && match.length > 1) {
        return match[1]; 
    } else {
        return null; 
    }
}

