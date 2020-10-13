import React, {useState} from 'react';


export default function LikeButton()
{
    const [isLiked, setIsLiked] = useState(false);

    if (!isLiked){
        return (
            <i className="far fa-thumbs-up float-right" onClick={() => setIsLiked(!isLiked)}></i>
        );
    }
    else {
        return (
        <i className="far fa-thumbs-down float-right" onClick={() => setIsLiked(!isLiked)}></i>
        );
    }
}
