const db = require("../db/dbConfig.js")

const getAllComments = async (city_id) => {
    try {
        const allComments = await db.any(
            "SELECT * FROM comments WHERE city_id=$1",
            city_id
        )
        return allComments
    } catch (err) {
        return err
    }
}

const getComment = async (id) =>{
    try{
        const oneComment = await db.one ("SELECT * FROM comments WHERE id=$1", id)
        return oneComment
    } catch (error){
        return error;
    }
}

const newComment = async (comment) => {
    try {
        const newComment = await db.one(
            "INSERT INTO comments (commenter, title, content, city_id) VALUES($1, $2, $3, $4) RETURNING *",
            [
                comment.commenter,
                comment.title,
                comment.content,
                comment.city_id
            ]
        )
        return newComment;
    } catch (error){
        return error;
    }
}

const deleteComment = async (id) => {
    try {
        const deletedComment = await db.one(
            "DELETE FROM comments WHERE id = $1 RETURNING *",
            id
        )
        return deletedComment;
    } catch (error){
        return error;
    }
};

const updateComment = async (id, comment) => {
    try {
        const udpatedComment = await db.one(
            "UPDATE comments SET commenter=$1, title=$2, content=$3, city_id=$4 WHERE id=$5 RETURNING *",
            [
                comment.commenter,
                comment.title,
                comment.content,
                comment.city_id,
                id
            ]
        )
        return udpatedComment;
    } catch (error) {
        return comment;
    }
}

module.exports = {
    getAllComments,
    getComment,
    newComment,
    deleteComment,
    updateComment,
}

