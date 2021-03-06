bball_team = {
  forwards: {
    starting_fwd: 'Justise Winslow',
    backup_fwd: 'Harry Giles'
    },
    
  guards: {
    starting_g: 'Grayson Allen',
    backup_g: ['Frank Jackson', 'Luke Kennard']
    },
  point_guards: {
    starting_pg: 'Tyus Jones',
    backup_pg: {
        offense: 'Quinn Cook',
        defense: 'Matt Jones'
      }
    },
  centers: {
    starting_ctr: 'Shelden Williams',
    backup_ctr: 'Amile Jefferson'
  }
}

p bball_team[:point_guards][:backup_pg][:defense]
puts bball_team[:guards][:backup_g]
p bball_team[:forwards][:starting_fwd]