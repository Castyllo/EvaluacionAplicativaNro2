/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.EvaluacionAplicativaNro2.model.repository;

import com.EvaluacionAplicativaNro2.model.Trabajador;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author casti
 */
@Repository
public interface TrabajadorRepository extends JpaRepository<Trabajador, Long> {

}
