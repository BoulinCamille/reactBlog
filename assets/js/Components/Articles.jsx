import React, {useState, useEffect} from 'react';
import {Link} from 'react-router-dom';
import axios from 'axios';
import LikeButton from './LikeButton';


export default function Articles()
{
    const [articles, setArticles] = useState([]);

    useEffect(() => {
        const fetchData = async () => {
            const result = await axios.get(`http://127.0.0.1:8000/api/articles/`);
            setArticles(result.data);
        };
        fetchData();
    }, []);

    const divStyle = { width: "18rem" };
    const urlParam = "/showarticle";

    return (
        <div className="container">
            <div className="row">
                {articles.map(article =>    
                                        <div key={article.id} className="card col-4" style={divStyle}>
                                            <img className="card-img-top" src={article.image} alt="Card image cap" /><span>{article.author}</span>
                                            <div className="card-body">
                                                <h5 className="card-title">{article.title}</h5>
                                                <p className="card-text">{article.content}</p>
                                                <Link to={{pathname: `/showarticle/${article.id}`, query: {urlParam}}} className="btn btn-primary">Show More</Link>
                                                <LikeButton />  
                                            </div>
                                        </div>)}
            </div>
        </div>
            
    );
}