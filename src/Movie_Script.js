// const key = "607d2f52-1483-497b-8513-58368d0ed7bf";
// const API_URL_TOP_POPULAR_MOVIES = "https://kinopoiskapiunofficial.tech/api/v2.2/films/collections?type=TOP_POPULAR_MOVIES&page=1";
// const API_URL_KEYWORD_SEARCH = "https://kinopoiskapiunofficial.tech/api/v2.1/films/search-by-keyword?keyword=";
// const API_URL_MOVIE_DETAIL = "https://kinopoiskapiunofficial.tech/api/v2.2/films/";
function getColorAverageMovie(element) {
    var colorAverage = "";
    if (element.rating >= 7.5) {
        colorAverage = "green";
    }
    else if ((element.rating < 7.5 && element.rating >= 5)) {
        colorAverage = "orange";
    }
    else if ((element.rating < 5 && element.rating > 0)) {
        colorAverage = "red";
    }
    else {
        colorAverage = "none";
    }
    return colorAverage;
}

export default getColorAverageMovie;