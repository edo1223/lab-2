  (define (problem build)
    (:domain build)
    (:objects

      p1 - person
      p2 - person
      p3 - person
      p4 - person
      p5 - person
      
      r10 - location
      r15 - location
      r20 - location
      r25 - location
      r30 - location
      r35 - location
      r40 - location
      r45 - location
      r50 - location

      pp1 - permissions
      pp2 - permissions
      pp3 - permissions
      pp4 - permissions
      pp5 - permissions

      c_source - container
      c_dest - container

      i_1 - item
      i_2 - item
      i_3 - item
      
      cat_items - category
      )

    (:init 

          (adjacent r10 r15)
          (adjacent r15 r10)
          (adjacent r15 r20)
          (adjacent r20 r15)

          (adjacent r20 r25)
          (adjacent r25 r20)
          (adjacent r25 r30)
          (adjacent r30 r25)

          (adjacent r30 r35)
          (adjacent r35 r30)
          (adjacent r35 r40)
          (adjacent r40 r35)

          (adjacent r40 r45)
          (adjacent r45 r40)
          (adjacent r45 r50)
          (adjacent r50 r45)

          (permission_to_take everyone cat_items)

          (permission_to_walk pp1 r10)
          (permission_to_walk pp1 r15)
          (permission_to_walk pp2 r15)
          (permission_to_walk pp2 r20)
          (permission_to_walk pp2 r25)
          (permission_to_walk pp3 r25)
          (permission_to_walk pp3 r30)
          (permission_to_walk pp3 r35)
          (permission_to_walk pp4 r35)
          (permission_to_walk pp4 r40)
          (permission_to_walk pp4 r45)
          (permission_to_walk pp5 r45)
          (permission_to_walk pp5 r50)

          (has_permissions p1 pp1)
          (has_permissions p1 everyone)
          (has_permissions p2 pp2)
          (has_permissions p2 everyone)
          (has_permissions p3 pp3)
          (has_permissions p3 everyone)
          (has_permissions p4 pp4)
          (has_permissions p4 everyone)
          (has_permissions p5 pp5)
          (has_permissions p5 everyone)

          (large_at r10 c_source)
          (large_at r50 c_dest)

          (at c_source i_1)
          (at c_source i_2)
          (at c_source i_3)

          (item_has_type i_1 cat_items)
          (item_has_type i_2 cat_items)
          (item_has_type i_3 cat_items)

          (large_at r10 p1)
          (large_at r20 p2)
          (large_at r30 p3)
          (large_at r40 p4)
          (large_at r50 p5)

          (person_hands_empty p1)
          (person_hands_empty p2)
          (person_hands_empty p3)
          (person_hands_empty p4)
          (person_hands_empty p5)

          )
    (:goal (and 
              (at c_dest i_1)
              (at c_dest i_2)
              (at c_dest i_3)

              (large_at r10 p1)
              (large_at r20 p2)
              (large_at r30 p3)
              (large_at r40 p4)
              (large_at r50 p5)
          
      )
  )
  )

