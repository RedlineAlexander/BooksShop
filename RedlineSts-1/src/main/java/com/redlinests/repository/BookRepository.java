package com.redlinests.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.*;
import com.redlinests.entity.Book;
@Repository
public interface BookRepository extends CrudRepository<Book, Integer> {

}
