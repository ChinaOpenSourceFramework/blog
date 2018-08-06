package com.opensource.blog.repository;

import com.opensource.blog.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {

    public User findByLoginName(String loginName);
}
