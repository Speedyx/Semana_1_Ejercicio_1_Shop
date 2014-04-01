class User < ActiveRecord::Base
    has_secure_password
    #attr_accessible :name, :email, :password, :password_confirmation

    #Expresiones regulares en:
    # http://rubular.com/

    #validates_presence_of :password, :on => :create
    validates_presence_of :password
    # Validar password
    # ^ => Empieza y tiene
    # ?=.*[a-zA-Z] => Busca algún caracter que sea letra
    # ?=.*[0-9] => Busca algún caracter que sea número
    # {8,} => 8 de largo o más sin tope
    validates_format_of :password, :with => /(?=.*[a-zA-Z])(?=.*[0-9]).{8,}/, :message => "8 characters at least including 1 number and 1 char."
    validates_presence_of :email
    validates_uniqueness_of :email
    #Validar email
    # [] => Especificación de rango
    # \A y \z => Inicio y fin de cadena
    # ^ y $ => Inicio y fin de línea
    # \s => Algún caracter en blanco
    # . => un carácter singular
    # /\A[^@\s] => Empieza la cadena y no puede haber arroba  y espacio antes de la arroba
    # @ => Y después de la arroba
    # ([^@\s]+\.) => No puede haber arroba  y espacio después  de la arroba, y luego va un punto
    # [^@\s]+\z/ => No puede haber arroba  y espacio después de la arroba, y luego va final de cadena
    validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/,:message => "It seems to be invalid."
    validates_presence_of :name
    validates_uniqueness_of :name

    def self.authenticate(email, password)
        user = find_by_email(email)
        if user && user.password == password
            user
        else
            nil
        end
    end

end
