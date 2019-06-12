server "porlier.fungo.ca", user: "web", roles: %w{app db web}
set :branch, 'final_version'

role :app, %w{web@porlier.fungo.ca}
role :web, %w{web@porlier.fungo.ca}
role :db,  %w{web@porlier.fungo.ca}