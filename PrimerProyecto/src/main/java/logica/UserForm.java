package logica;

public class UserForm {
    private String nombre;
    private String apellido;
    
    private String lenguaje;
    private String perfil; 
    private String [] intereses;
    
	public UserForm(String nombre, String apellido, String lenguaje, String perfil, String[] intereses) {
		super();
		this.nombre = nombre;
		this.apellido = apellido;
		this.lenguaje = lenguaje;
		this.perfil = perfil;
		this.intereses = intereses;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public String getLenguaje() {
		return lenguaje;
	}

	public void setLenguaje(String lenguaje) {
		this.lenguaje = lenguaje;
	}

	public String getPerfil() {
		return perfil;
	}

	public void setPerfil(String perfil) {
		this.perfil = perfil;
	}

	public String[] getIntereses() {
		return intereses;
	}

	public void setIntereses(String[] intereses) {
		this.intereses = intereses;
	}
	
	
    
    
}
