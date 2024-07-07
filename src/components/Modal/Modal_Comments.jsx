import React, { Component } from 'react'
import { useState } from "react";
import axios from 'axios';
import "../../index.js";
import { Comments } from '../../App.js';
const CommentForm = (id_Movie, setComment) => {
    
    const [data, setData] = useState({ name: "", rating: "", comment: "", id: id_Movie });
    const [response, setResponse] = useState("");

    const handleChange = (event) => {
        setData({ ...data, [event.target.name]: event.target.value });
    };

    const handleSubmit = (event) => {
        event.preventDefault();
        console.log(data);
        axios
            .post("http://localhost:8000", { data })
            .then((response) => {
                setResponse(response.data);
            })
            .catch((error) => {
                console.log(error);
            });
        setData({ name: "", rating: "", comment: "", id: id_Movie });
    };
    return (
        <div>
            <form onSubmit={handleSubmit}>
                <div>
                    <label htmlFor="name">Имя:</label>
                    <input
                        type="text"
                        name="name"
                        value={data.name}
                        onChange={handleChange}
                        required
                    />
                </div>
                <div>
                    <label htmlFor="rating">Оценка:</label>
                    <input
                        type="number"
                        name="rating"
                        value={data.rating}
                        onChange={handleChange}
                        required
                    />
                </div>
                <div>
                    <label htmlFor="comment">Комментарий:</label>
                    <textarea
                        name="comment"
                        value={data.comment}
                        onChange={handleChange}
                        required
                    ></textarea>
                </div>
                <button type="submit" >Отправить</button>
            </form>
            {response && (
                <div>
                    Данные успешно отправлены: {response.name} ({response.rating}) {response.comment}
                </div>
            )}

        </div>
    );
};


function Modal_Comments({ active, setActive, fullExit, setFullActive, props, arrComments, setComment }) {
    React.useEffect(() => {
        let data = axios.get('http://localhost:8000');
        data.then(res => {
            setComment(res.data.comments);
        })
    }, [])
    console.log(arrComments);
    return (
        <div className={fullExit ? "modal-movie active" : "modal-movie"} onClick={() => setFullActive(false)}>
            <div className={active ? "modal-card active" : "modal-card"} onClick={(e) => e.stopPropagation()}>
                <img className="modal-movie-backdrop" src={props.picture} alt="" />
                <h1>
                    <span className="modal-movie-title">{props.movie_Name}, </span>
                    <span class="modal-movie-country">{props.country}</span>
                </h1>
                <ul className="modal-movie-info">
                    <div className={active ? "movie_comments-card active" : "movie_comments-card"}>
                        {
                            arrComments.map(res => {
                                if (res.ID_Movie == props.id)
                                    return <Comments id={res.ID_Comment} rating={res.Rating_User} user={res.User} comm={res.Comment_Text} />
                            })
                        }
                        {console.log(props.id)}
                    </div>
                </ul>
                
                <CommentForm id_Movie={props.id} setComment={setComment}></CommentForm>
                <button type="button" className="modal-movie-button-comments" onClick={() => setActive(false)}>Назад</button>
            </div>
        </div>
    );
}

export default Modal_Comments;

