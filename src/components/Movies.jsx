import React from 'react';
import axios from "axios";
import getColorAverageMovie from '../Movie_Script';
import { useState } from "react";
import Modal_Movie from './Modal/Modal_Movie';
function Movies(props) {
    let [arrComments, setComment] = React.useState([]);
    const [modalActive, setModalActive] = useState(false);
    React.useEffect(() => {
        let data = axios.get('http://localhost:8000');
        data.then(res => {
            setComment(res.data.comments);
        })
    }, [])
    
    return (
        <>
            <div className="movie" key={props.id} >
                <div className="movie_cover-inner" onClick={() => setModalActive(true)}>
                    <img src={props.picture} className="movie_cover" alt={props.movie_Name} />
                    <div className="movie_cover-darkened"></div>
                </div>

                <div class="movie_info">
                    <div className="movie_title">{props.movie_Name}</div>
                    <div className="movie_category">{props.genre}</div>
                    <div className={`movie_average movie_average-${getColorAverageMovie(props)}`}>{props.rating}</div>
                    {/* <div className={commentsActive ? "movie_comments active" : "movie_comments"}>

                        <Router>
                            <nav>
                                <Link to={`/${props.id}`} className={commentsActive ? "link_comments active" : "link_comments"} onClick={() => {
                                    if (commentsActive == false)
                                        setCommentsActive(true);
                                    else
                                        setCommentsActive(false);
                                }}>Комментарии <br></br></Link>
                            </nav>
                            <Routes>
                                <Route path="/:id" element=
                                    {
                                        <div className={commentsActive ? "movie_comments-card active" : "movie_comments-card"}>
                                            {
                                                arrComments.map(res => {
                                                    if (res.ID_Movie == props.id)
                                                        return <Comments id={res.ID_Comment} rating={res.Rating_User} user={res.User} comm={res.Comment_Text}/>
                                                })
                                            }
                                        </div>
                                    }
                                />

                            </Routes>
                        </Router>

                    </div> */}
                </div>

            </div>
            <Modal_Movie active={modalActive} setActive={setModalActive} props={props} arrComments={arrComments} setComment={setComment} />

        </>
    )
}

export default Movies;