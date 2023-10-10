package logica;

import java.util.ArrayList;
import java.util.List;
import persistencia.ControladoraPersistencia;

public class ControladoraLogica {
    
    ControladoraPersistencia controlPersis = new ControladoraPersistencia(); 
    
    public void crearUsuario (String nombreUsuario, String contrasenia, String rol){
        
        Usuario usu = new Usuario(nombreUsuario, contrasenia, rol);
        
        controlPersis.crearUsuario(usu);
    }

    public List<Usuario> getUsuarios() {
        return controlPersis.getUsuarios();
    }

    public void borrarUsuario(int id) {
        controlPersis.borrarUsuario(id);
    }

    public Usuario traerUsuario(int id) {
        return controlPersis.traerUsuario(id);
    }

    public void editarUsuario(Usuario usu) {
        controlPersis.editarUsuario(usu);
    }

    public boolean comprobarIngreso(String usuario, String contrasenia) {
        
        //Este método no es el más optimo, es solo de prueba. queda pendiente mejorarlo.
        boolean ingreso = false;
        
        List<Usuario> listaUsuarios = new ArrayList<Usuario>();
        listaUsuarios = controlPersis.getUsuarios();
        
        for(Usuario usu : listaUsuarios){
            if(usu.getNombre_usuario().equals(usuario) && usu.getContrasenia().equals(contrasenia)){
                ingreso = true;
            }
        }
        
        return ingreso;
    }
    
}
