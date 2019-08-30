#Arrays

#1
#1.1
arreglo = [1,2,3,9,1,4,5,2,3,6,6]
print arreglo[0]

#1.2
arreglo = [1,2,3,9,1,4,5,2,3,6,6]
print arreglo[10]

#1.3
#Con For
arreglo = [1,2,3,9,1,4,5,2,3,6,6]
for element in arreglo do
  print element
end
#Con each
arreglo = [1,2,3,9,1,4,5,2,3,6,6]
arreglo.each do |i|
  print i
end
#Con otro each
arreglo = [1,2,3,9,1,4,5,2,3,6,6]
arreglo.each {|i| print i}

#1.4
arreglo = [1,2,3,9,1,4,5,2,3,6,6]
arreglo.each_with_index do |value, index|
  puts "#{index+1}) #{value}"
end

#1.5
arreglo = [1,2,3,9,1,4,5,2,3,6,6]
arreglo.each_with_index do |value, index|
  if value%2==0
    puts "#{index+1}) #{value}"
  end
end

#2
#2.1
a=[1,2,3,9,1,4,5,2,3,6,6]
a.pop
print a

#2.2
a=[1,2,3,9,1,4,5,2,3,6,6]
a.shift
print a

#2.3 Eliminar el elemento que se encuentra en la posición media, si el arreglo tiene un número par de elementos entonces remover el que se encuentre en la mitad izquierda.
a = [1,2,3,9,1,4,5,2,3,6,6]
a.delete_at a.length/2#at elige uno
print a
#a = [1,2,3,9,1,4,5,2,3,6,6]
#a.delete_at a.length/2-1#at elige uno, si el arreglo es par hay que -1
#print a

#2.4
a = [1,2,3,9,1,4,5,2,3,6,6]
a.pop if a !=1
print a

#2.5  Utilizando un arreglo vacío auxiliar y operaciones de push and pop invertir el orden de los elementos en un arreglo.
a = [1,2,3,9,1,4,5,2,3,6,6]
aux=[]

11.times do
  aux << a.pop
end
print aux



#3
#3.1
a = [1,2,3,9,1,4,5,2,3,6,6]
a.delete_if {|a| a.even?}
print a

#3.2
a = [1,2,3,9,1,4,5,2,3,6,6]
suma = 0
a.each do |ele|
 suma += ele
end
puts suma

#3.3
a = [1,2,3,9,1,4,5,2,3,6,6]
suma = 0
a.each do |ele|
 suma += ele
end
puts suma / a.count.to_f

#3.4 Incrementar todos los elementos en 1 retornando un nuevo arreglo.
a = [1,2,3,9,1,4,5,2,3,6,6]
aux = []
suma = 0
a.each do |ele|
  suma = ele + 1
  aux << suma
end
print aux

#4
products = %w(Producto1 Producto2 Producto3 Producto4)
html = ''
products.each do |i|
html += "<div class='product'><p> #{i} </p>"
html +="</div>\n"
end
print html

<div class='product'><p> Producto1 </p></div>
<div class='product'><p> Producto2 </p></div>
<div class='product'><p> Producto3 </p></div>
<div class='product'><p> Producto4 </p></div>

#5

products = %w(Producto1 Producto2 Producto3 Producto4)
prices = %w(1000 2000 1500 950)
html = ''
products.each_with_index do |i, indice|
html += "<div class='product'><p> #{products[indice]} </p><p> #{prices[indice]} </p>"
html += "</div>\n"
end
print html


#6
#6.1
a= [1,2,3,9,12,31, "domingo"]
b= ["lunes", "martes", "miercoles", "jueves", "viernes", "sabado", "domingo"]

print a+b

#6.2
a= [1,2,3,9,12,31, "domingo"]
b= ["lunes", "martes", "miercoles", "jueves", "viernes", "sabado", "domingo"]

print a|b


#6.3
a= [1,2,3,9,12,31, "domingo"]
b= ["lunes", "martes", "miercoles", "jueves", "viernes", "sabado", "domingo"]

print a&b

#6.4

a= [1,2,3,9,12,31, "domingo"]
b= ["lunes", "martes", "miercoles", "jueves", "viernes", "sabado", "domingo"]

c=a.zip(b).flatten.compact
c=c.each_slice(2).to_a
print c
