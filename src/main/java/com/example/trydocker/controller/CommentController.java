package com.example.trydocker.controller;

import com.example.trydocker.entity.Comment;
import com.example.trydocker.service.CommentService;

import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Comment)表控制层
 *
 * @author makejava
 * @since 2025-02-16 17:00:25
 */
@RestController
@RequestMapping("comments")
public class CommentController {
    /**
     * 服务对象
     */
    @Resource
    private CommentService commentService;

    /**
     * 根据id删除
     * @param id
     */
    @DeleteMapping("/{id}")
    public void delete(@PathVariable("id") Integer id){
        commentService.deleteById(id);
    }

    /**
     * 根据id更新所有
     * @param comment
     * @param id
     */
    @PutMapping("/{id}")
    public void update(@RequestBody Comment comment,@PathVariable("id") Integer id){
        comment.setId(id);
        commentService.update(comment);
    }
    /**
     * 保存用户
     */
    @PostMapping
    public void save(@RequestBody Comment comment){
        commentService.insert(comment);
    }

    /**
     * 查询所有
     * @return 评论列表
     */
    @GetMapping
    public List<Comment> comments(){
        return commentService.queryAll();
    }

    /**
     * 查询单条数据
     */
    @GetMapping("/{id}")
    public Comment queryById(@PathVariable("id") Integer id) {
        return commentService.queryById(id);
    }





}

