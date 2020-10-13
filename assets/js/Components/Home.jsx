import React from 'react';
import {Switch, Route, Link, Redirect} from 'react-router-dom';
import ShowAllArticles from './ShowAllArticles';
import ShowArticle from './ShowArticle';
import Articles from './Articles';


export default function Home()
{
    return (
        <div>
            <nav className="navbar navbar-expand-lg navbar-dark bg-dark">
                <Link className="navbar-brand" to="/">Blog</Link>
            <ul className="navbar-nav mr-auto">
                <li className="nav-item">
                    <Link className="nav-link" to="/">Home</Link>
                </li>
            </ul>
        </nav>
        <Switch>
            <Redirect exact from="/" to="/showallarticles" />
            <Route path="/showallarticles" component={ShowAllArticles} />
            <Route path="/showarticle/:id" component={ShowArticle} name="show_article" />
        </Switch>
        </div>
    );
}
