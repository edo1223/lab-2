  (define (problem build)
    (:domain build)
    (:objects

      p_toggler - person
      pn - person
      pe - person
      pw - person

      r_workshop - location
      r_n - location
      r_nn - location
      r_nnn - location
      r_e - location
      r_ee - location
      r_eee - location
      r_w - location
      r_ww - location
      r_www - location
      r_s - location
      r_ss - location
      r_sss - location

      pp_toggle - permissions
      pp_n - permissions
      pp_e - permissions
      pp_w - permissions

      c_n - container
      c_e - container
      c_w - container
      c_s - container

      i_n - item
      i_e - item
      i_w - item
      
      cat_items - category
      cat_n - category
      cat_e - category
      cat_w - category
      )

    (:init 

      (adjacent r_workshop r_n)
      (adjacent r_workshop r_e)
      (adjacent r_workshop r_w)
      (adjacent r_workshop r_s)
      (adjacent r_n r_workshop)
      (adjacent r_e r_workshop)
      (adjacent r_w r_workshop)
      (adjacent r_s r_workshop)

      (adjacent r_n r_nn)
      (adjacent r_nn r_n)
      (adjacent r_nn r_nnn)
      (adjacent r_nnn r_nn)

      (adjacent r_e r_ee)
      (adjacent r_ee r_e)
      (adjacent r_ee r_eee)
      (adjacent r_eee r_ee)

      (adjacent r_w r_ww)
      (adjacent r_ww r_w)
      (adjacent r_ww r_www)
      (adjacent r_www r_ww)

      (adjacent r_s r_ss)
      (adjacent r_ss r_s)
      (adjacent r_ss r_sss)
      (adjacent r_sss r_ss)

      (item_has_type i_n cat_n)
      (item_has_type i_e cat_e)
      (item_has_type i_w cat_w)

      (permission_to_take pp_n cat_n)
      (permission_to_take pp_e cat_e)
      (permission_to_take pp_w cat_w)

      (permission_to_take pp_toggle cat_n)
      (permission_to_take pp_toggle cat_e)
      (permission_to_take pp_toggle cat_w)

      (is_toggleable i_n)
      (is_toggleable i_e)
      (is_toggleable i_w)
      (permission_to_toggle pp_toggle i_n)
      (permission_to_toggle pp_toggle i_e)
      (permission_to_toggle pp_toggle i_w)

      (permission_to_walk everyone r_workshop)

      (permission_to_walk pp_n r_n)
      (permission_to_walk pp_n r_nn)
      (permission_to_walk pp_n r_nnn)

      (permission_to_walk pp_e r_e)
      (permission_to_walk pp_e r_ee)
      (permission_to_walk pp_e r_eee)

      (permission_to_walk pp_w r_w)
      (permission_to_walk pp_w r_ww)
      (permission_to_walk pp_w r_www)

      (permission_to_walk everyone r_s)
      (permission_to_walk everyone r_ss)
      (permission_to_walk everyone r_sss)

      (has_permissions p_toggler pp_toggle)
      
      (has_permissions pn pp_n)
      (has_permissions pn everyone)
      (has_permissions pe pp_e)
      (has_permissions pe everyone)
      (has_permissions pw pp_w)
      (has_permissions pw everyone)

      (large_at r_nnn c_n)
      (large_at r_eee c_e)
      (large_at r_www c_w)
      (large_at r_sss c_s)

      (large_at r_nnn pn)
      (large_at r_eee pe)
      (large_at r_www pw)
      (large_at r_workshop p_toggler)

      (at c_n i_n)
      (at c_e i_e)
      (at c_w i_w)

      (person_hands_empty p_toggler)
      (person_hands_empty pn)
      (person_hands_empty pe)
      (person_hands_empty pw)

          )
    (:goal (and 
              (at c_s i_n)
              (at c_s i_e)
              (at c_s i_w)
              (toggled_on i_n)
              (toggled_on i_e)
              (toggled_on i_w)


      )
  )
  )

