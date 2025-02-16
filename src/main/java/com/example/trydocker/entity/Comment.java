package com.example.trydocker.entity;

import java.io.Serializable;

/**
 * (Comment)实体类
 *
 * @author makejava
 * @since 2025-02-16 17:00:27
 */
public class Comment implements Serializable {
    private static final long serialVersionUID = 131063587547568423L;
    /**
     * 评论id
     */
    private Integer id;
    /**
     * 评论内容
     */
    private String content;
    /**
     * 评论者
     */
    private String cAuthor;
    /**
     * 关联的图书
     */
    private Integer bookId;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getCAuthor() {
        return cAuthor;
    }

    public void setCAuthor(String cAuthor) {
        this.cAuthor = cAuthor;
    }

    public Integer getBookId() {
        return bookId;
    }

    public void setBookId(Integer bookId) {
        this.bookId = bookId;
    }

}

