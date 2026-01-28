package com.scfp.sistema_de_controle_financeiro_pessoal.controller;

import com.scfp.sistema_de_controle_financeiro_pessoal.entity.Category;
import com.scfp.sistema_de_controle_financeiro_pessoal.service.CategoryService;
import jakarta.validation.Valid;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/categorias")
public class CategoryController {

    private  final CategoryService categoryService;

    public CategoryController(CategoryService categoryService){
        this.categoryService = categoryService;
    }

    @GetMapping
    public ResponseEntity getCategories(){
        return ResponseEntity.ok(this.categoryService.getCategory(null));
    }

    @GetMapping("/{id}")
    public ResponseEntity<Category> findById(@PathVariable Integer id) {
        Category category = this.categoryService.getCategoryById(id);
        return ResponseEntity.ok(category);
    }

    @PostMapping
    public ResponseEntity postCategories(@RequestBody @Valid Category category){
        this.categoryService.postCategory(category);
        return ResponseEntity.ok().build();
    }

    @PutMapping("/{id}")
    public ResponseEntity putCategories(@PathVariable Integer id,  @RequestBody @Valid Category category){
        category.setId(id);
        this.categoryService.putCategory(category);
        return ResponseEntity.ok().build();
    }

    @DeleteMapping("/{id}")
    public ResponseEntity deleteCategories(@PathVariable Integer id){
        this.categoryService.deletCategory(id);
        return ResponseEntity.ok().build();
    }
}
