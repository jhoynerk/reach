Feature: Working on our Outreach program


    Scenario: Display a Potential Lead on the Dashboard
        Given there is a builtWith import with domain "softwarecriollo.com"
        And I go to the dashboard
        Then I should see "softwarecriollo.com"

    Scenario: Finds the contact of a potential leads
        Given there is a builtWith import with domain "softwarecriollo.com"
        And I go to the dashboard
        And I fill out the contact information
        When I go to the dashboard
        Then there with be only 1 potential client
        Then I should see "Contact Ivan. There are no more leads here"

    Scenario: Display how many contacts we have found this month

##
# Un archivo CSV file con mucha data. data/sample_built_with.csv
# Lo importamos con el CSV Importer y creamos PotentialClients
#
# Una persona de research entra al app TODO: Devise
# - Le mostramos un BuiltWith
# - - refresh the borwser to get a new leads
# - - Llenar el formulario con nombre, apellido, email, title -> send
# - - - al enviar el formulario crea un PotentialClient
# - TODO: Mostrar en el dashboard la cantidad de PotentialClient a user has


# TODO: Conectar todo este con Devise 


# TODO: Admin Panel con estadisticas
# Necesitamos ver cuantos PotentialClients cada persona esta generando por Semana  y Mes.

# Poder exporter los PotentialClients a un CSV


# Futuro:
# Import CSV en el admin | Poder ver que el import esta fino antes de hacerlo.
# TODO: Verificar authenticity_token? Maybe not



