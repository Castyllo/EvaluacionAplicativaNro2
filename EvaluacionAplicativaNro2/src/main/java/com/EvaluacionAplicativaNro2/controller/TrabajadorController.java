/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.EvaluacionAplicativaNro2.controller;

import com.EvaluacionAplicativaNro2.model.Trabajador;
import com.EvaluacionAplicativaNro2.service.TrabajadorService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

/**
 *
 * @author casti
 */
@Controller
@RequestMapping("/trabajadores")
public class TrabajadorController {

    private final TrabajadorService service;

    public TrabajadorController(TrabajadorService service) {
        this.service = service;
    }

    @GetMapping
    public String listarTrabajadores(Model model) {
        model.addAttribute("trabajadores", service.listarTodos());
        return "trabajadores";
    }

    @GetMapping("/nuevo")
    public String mostrarFormularioCrear(Model model) {
        model.addAttribute("trabajador", new Trabajador());
        return "formulario";
    }

    @PostMapping
    public String guardarTrabajador(@ModelAttribute Trabajador trabajador) {
        service.guardar(trabajador);
        return "redirect:/trabajadores";
    }

    @GetMapping("/editar/{id}")
    public String mostrarFormularioEditar(@PathVariable Long id, Model model) {
        Trabajador trabajador = service.buscarPorId(id)
                .orElseThrow(() -> new IllegalArgumentException("ID inválido: " + id));
        model.addAttribute("trabajador", trabajador);
        return "formulario";
    }

    @GetMapping("/eliminar/{id}")
    public String eliminarTrabajador(@PathVariable Long id) {
        service.eliminar(id);
        return "redirect:/trabajadores";
    }
}
