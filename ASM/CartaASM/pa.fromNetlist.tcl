
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name CartaASM -dir "C:/Users/ANDRES/Desktop/CartaASM/planAhead_run_2" -part xc7a100tcsg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/ANDRES/Desktop/CartaASM/PRINCIPAL.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/ANDRES/Desktop/CartaASM} }
set_property target_constrs_file "Nexys4DDR_Master.ucf" [current_fileset -constrset]
add_files [list {Nexys4DDR_Master.ucf}] -fileset [get_property constrset [current_run]]
link_design
