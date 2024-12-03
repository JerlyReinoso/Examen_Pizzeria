class LogicaLogin {
  bool validarUsuario(String usuario) {
    return usuario.isNotEmpty && usuario == 'admin';
  }
}
