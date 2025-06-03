import { Routes } from '@angular/router';
import { EstudianteComponent } from './estudiante/estudiante.component';
import { MateriasComponent } from './materias/materias.component';
import { ProgramaComponent } from './programa/programa.component';
import { UniversidadComponent } from './universidad/universidad.component';
import { UsuarioComponent } from './usuario/usuario.component';

export const routes: Routes = [
    /*{path:'', redirectTo: '',pathMatch:'full'},*/ 
    {path:'', redirectTo: 'student',pathMatch:'full'},
    {path:'', redirectTo: 'materias',pathMatch:'full'},
    {path:'', redirectTo: 'program',pathMatch:'full'},
    {path:'', redirectTo: 'university',pathMatch:'full'},
    {path:'', redirectTo: 'users',pathMatch:'full'},
    {path: 'student', component: EstudianteComponent, title: 'Estudiante'},
    {path: 'materias', component: MateriasComponent, title: 'Materias'},
    {path: 'program', component: ProgramaComponent, title: 'Programa'},
    {path: 'university', component: UniversidadComponent, title: 'Universidad'},
    {path: 'users', component: UsuarioComponent, title: 'Usuario'}

];
