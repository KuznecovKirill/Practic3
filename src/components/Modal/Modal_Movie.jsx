import React, { Children } from 'react';
import { useState } from "react";
import "../../index.js";
import axios from "axios";
import Modal_Comments from './Modal_Comments.jsx';
function Modal_Movie({ active, setActive, props, arrComments, setComment}) {
    const [commentsActive, setCommentsActive] = useState(false);
    if (commentsActive == false) {

        return (
            <div className={active ? "modal-movie active" : "modal-movie"} onClick={() => setActive(false)}>
                <div className={active ? "modal-card active" : "modal-card"} onClick={(e) => e.stopPropagation()}>
                    <img class="modal-movie-backdrop" src={props.picture} alt="" />
                    <h1>
                        <span className="modal-movie-title">{props.movie_Name}, </span>
                        <span className="modal-movie-country">{props.country}</span>
                    </h1>
                    <ul className="modal-movie-info">
                        <div className="loader"></div>
                        <div className="modal-movie-category">Жанр: {props.genre}</div>
                        <div className="modal-movie-time">Продолжительность: {props.movie_Time} минут</div>
                        <div className="modal-movie-ratingAge">Возрастной рейтинг:</div>
                        <div className="modal-movie-rewiew">Описание: {props.description}</div>
                        {/* <a class="modal-movie-web" href={respData.webUrl}>${respData.webUrl}</a> */}
                    </ul>
                    <button type="button" className="modal-movie-button-comments" onClick={() => setCommentsActive(true)}>Отзывы</button>
                    <button type="button" className="modal-movie-button-close" onClick={() => setActive(false)}>Закрыть</button>
                </div>
            </div>
        );
    }
    else {
        return (<Modal_Comments active={commentsActive} setActive={setCommentsActive} fullExit={active} setFullActive={setActive} props={props} arrComments={arrComments} setComment={setComment} />)
    }

}


export default Modal_Movie;
//export default Modal_Movie;