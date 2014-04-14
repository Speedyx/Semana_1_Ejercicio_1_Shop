class User < ActiveRecord::Base
    has_secure_password
    #attr_accessible :name, :email, :password, :password_confirmation

    #Expresiones regulares en:
    # http://rubular.com/

    #validates_presence_of :password, :on => :create
    validates :password, :password_digest,  presence: true, on: :create
    # Validar password
    # ^ => Empieza y tiene
    # ?=.*[a-zA-Z] => Busca algún caracter que sea letra
    # ?=.*[0-9] => Busca algún caracter que sea número
    # {8,} => 8 de largo o más sin tope
    validates :password, length: { minimum: 8 }, format: {with: /(?=.*[a-zA-Z])(?=.*[0-9])/, message: '8 characters at least including 1 number and 1 char.'}
    validates :name, :surname, :email, presence: true
    validates :name, :email, uniqueness:true
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
    validates :email, format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: 'It seems to be invalid.'}
end
