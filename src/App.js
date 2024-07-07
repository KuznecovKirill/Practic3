import axios from "axios";
import React, { useState } from "react";
import Movies from "./components/Movies.jsx";
import { DropDown } from "./components/DropDown.js";
// import { BrowserRouter as Router, Routes, Route, Link, BrowserRouter } from 'react-router-dom';
function App() {
  let [arrMovie, setTodo] = React.useState([
  ]);
  React.useEffect(() => {
    let data = axios.get('http://localhost:8000');
    data.then(res => {
      setTodo(res.data.movies);
    })
  }, [])
  var drop = document.getElementById("drop");
  return (
    <>
      {/* <BrowserRouter>
        <div>
          <nav>
            <Link to='/'>Home</Link>
          </nav>
          <Routes>
            <Route path="/" />
          </Routes>
        </div>

      </BrowserRouter> */}
      <header class="container">
        <div class="header-content">
          <a href="http://localhost:3001" class="header_logo" id="home">Gold Cinema</a>
          <DropDown></DropDown>
          <form id="search">
            <input type="text" class="header_search" placeholder="Найти..." />
          </form>
        </div>
      </header>
      <div className="container">
        <div className="movies">
          {
            arrMovie.map(result => {
              return <Movies id={result.ID_Movie}
                movie_Name={result.Movie_Name}
                country={result.Country}
                genre={result.Genre}
                movie_Time={result.Movie_Time}
                description={result.Description}
                picture={result.Picture}
                rating={result.Rating}
              />
            })
          }

        </div>
      </div>

    </>

  );
}
function Comments(propsComments) {
  return (<div className="comment" >
    <span className="comment_user">Пользователь: {propsComments.user}. </span>
    <span className="comment_rating">Оценка: {propsComments.rating} </span>
    <span className="comment_comment">Комментарии: {propsComments.comm} </span>
  </div>
  );

}
export { Comments };
export default App;

