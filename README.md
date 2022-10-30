# Inmana

<p align="center"><img src="https://www.vectorlogo.zone/logos/elixir-lang/elixir-lang-ar21.svg"/></p>

<br>

<p align="center" id="project">Inmana is an API to manage restaurant products that are about to expire, sending emails weekly to remind them.</p>
<br>

<h2 id="techs">
  🚀 Technologies
</h2>

- [Elixir](https://elixir-lang.org/)
- [Ecto](https://hexdocs.pm/ecto/Ecto.html)
- [Phoenix Framework](https://www.phoenixframework.org/)
- [Credo](https://github.com/rrrene/credo)
- [ExCoveralls](https://github.com/parroty/excoveralls)
- [Bamboo](https://github.com/thoughtbot/bamboo)

## Install Inmana

    --Open terminal--

    #Clone repo from github
    git clone https://github.com/joaopealves/Inmana.git

    #Create postgres in docker
    docker compose up --d

    #Entry in Inmana folder
    cd Inmana

    #Install deps
    mix deps.get

    #if your postgresql is installed correctly, type
    #Create Database and migrations
    mix ecto.setup

    #Open interactive terminal
    iex -S mix

    #Open Phoenix server
    mix phx.server

    #Exec test
    mix test

</br>

## References
- NextLevelWeek 5.0 @Rocketseat</h4>
