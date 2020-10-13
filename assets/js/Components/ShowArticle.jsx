import React, { useState, useEffect } from 'react';
import {useParams} from 'react-router-dom'
import axios from 'axios';

export default function ShowArticle() {
    const [article, setArticle] = useState('');

    let { id } = useParams();
    
    useEffect(() => {
        const fetchData = async () => {
            const result = await axios.get(`http://127.0.0.1:8000/api/articles/${id}`);
            setArticle(result.data);
        };
        fetchData();
    }, []);

    const divStyle = {
        backgroundImage: 'url(' + article.image + ')',
        backgroundSize: "100%"
    };

    return (
        <div>
            <div className="jumbotron" style={divStyle}>
            </div>
            <div className="container my-5">
                <article className="">
                    <h1 className="px-5">{article.title}</h1>
                    <h5 className="px-5">{article.author}</h5>
                    <p className="px-5 pt-2">{article.content}</p>
                </article>

            </div>
        </div>
    );
}