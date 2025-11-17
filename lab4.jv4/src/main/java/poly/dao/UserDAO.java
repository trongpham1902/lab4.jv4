package poly.dao;


import java.util.List;

import poly.entity.User;

public interface UserDAO {
    User findById(String id);
    List<User> findAll();
    User create(User entity);
    void update(User entity);
    User deleteById(String id);
    User findByIdOrEmail(String idOrEmail);
}