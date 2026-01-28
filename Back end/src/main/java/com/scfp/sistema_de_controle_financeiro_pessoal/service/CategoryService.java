package com.scfp.sistema_de_controle_financeiro_pessoal.service;

import com.scfp.sistema_de_controle_financeiro_pessoal.entity.Category;
import com.scfp.sistema_de_controle_financeiro_pessoal.repository.CategoryRepository;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class CategoryService {

    private final CategoryRepository categoryRepository;

    public CategoryService(CategoryRepository categoryRepository){
        this.categoryRepository = categoryRepository;
    }

    public Category postCategory(Category category){
        return categoryRepository.save(category);
    }

    public Category getCategoryById(Integer id) {
        return categoryRepository.findById(id).orElse(null);
    }

    public List<Category> getCategory(Category category){
        return categoryRepository.findAll();
    }

    public Category putCategory(Category category){
        return categoryRepository.save(category);
    }

    public void deletCategory(Integer id){
        categoryRepository.deleteById(id);
    }
}
