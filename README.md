# Agento.Umbrella

```
mix phx.new --live --umbrella agento
```

# VSCode Settings
The following allows one to enter snippets inside of double quotes in a template:

```
"editor.quickSuggestions": {
        "comments": false,
        "other": true,
        "strings": true
    }
```

The following will allow the **html.eex** and **html.leex** template files to be interpreted as **html** files in VSCode:
```
"emmet.includeLanguages": {
    "html-eex": "html",
    "html-leex": "html"
}
```

`File >> Preferences >> Settings`

Then search for the tag name, e.g. **editor.quickSuggestions**, and assign the appropriate values.

### Adding project specific snippets:

`File >> Preferences >> User Snippets`

New snippets file for 'my_project'...

`elixir.json`

Paste the snippets into the JSON file. If you already
have snippets in that file, you'll need to put all the snippets in one
top-level JavaScript object, so remove the outer braces in the code
below.

JSON doesn't allow comments, so you must remove any comment lines!

## Install Tailwind

https://dev.to/oliverandrich/learn-elixir-and-phoenix-add-tailwind-css-to-the-project-4fkf

```
cd apps/agento_web/assets/
npm uninstall sass-loader node-sass
npm install -D tailwindcss postcss-loader
npm install alpinejs
```

# Markdown

https://www.markdownguide.org/basic-syntax

# Phoenix: Ecto migrations cheatsheet

## Creating

    $ mix ecto.gen.migration update_posts_table
      creating priv/repo/migrations/20160602085927_update_posts_table.exs
      ···

    $ mix ecto.migrate
    $ mix ecto.rollback

Creates a migration (no models).

## Creating context

    $ mix phx.gen.context Images Album albums title:string subtitle:string privacy:string

## Migration functions

### Creating tables

    create table(:documents) do
      add :title, :string
      add :title, :string, size: 40
      add :title, :string, default: "Hello"
      add :title, :string, default: fragment("now()")
      add :title, :string, null: false
      add :body, :text
      add :age, :integer
      add :price, :float
      add :price, :decimal, precision: 10, scale: 2
      add :published_at, :utc_datetime
      add :group_id, references(:groups)
      add :object, :json
      add :is_active, :boolean, default: true, null: false

      timestamps  # inserted_at and updated_at
    end

    create_if_not_exists table(:documents) do: ... end

### Other operations

    alter table(:posts) do
      add :summary, :text
      modify :title, :text
      remove :views
    end

    rename table(:posts), :title, to: :summary
    rename table(:posts), to: table(:new_posts)
    drop table(:documents)
    drop_if_exists table(:documents)
    table(:documents)
    table(:weather, prefix: :north_america)

### Indices

    create index(:posts, [:slug], concurrently: true)
    create unique_index(:posts, [:slug])
    drop index(:posts, [:name])

### Execute SQL

    execute "UPDATE posts SET published_at = NULL"
    execute create: "posts", capped: true, size: 1024

## References
[Ecto.Migration](https://hexdocs.pm/ecto_sql/Ecto.Migration.html#content)
https://commons.wikimedia.org/wiki/Category:SVG_flags_of_languages
https://remixicon.com/
https://feathericons.com/
https://fontawesome.com/
https://ionicons.com/



```
rb@RB-HOME:~/elixir/elixir/agento_umbrella/apps/agento_web$ mix phx.gen.live Basedata.CountryContext Country countries alpha2:string alpha3:string numeric3:string name:string
* creating lib/agento_web/live/country_live/show.ex
* creating lib/agento_web/live/country_live/index.ex
* creating lib/agento_web/live/country_live/form_component.ex
* creating lib/agento_web/live/country_live/form_component.html.leex
* creating lib/agento_web/live/country_live/index.html.leex
* creating lib/agento_web/live/country_live/show.html.leex
* creating test/agento_web/live/country_live_test.exs
* creating lib/agento_web/live/modal_component.ex
* creating lib/agento_web/live/live_helpers.ex
* creating /home/rb/elixir/elixir/agento_umbrella/apps/agento/lib/agento/basedata/country_context/country.ex
* creating /home/rb/elixir/elixir/agento_umbrella/apps/agento/priv/repo/migrations/20200920153337_create_countries.exs
* creating /home/rb/elixir/elixir/agento_umbrella/apps/agento/lib/agento/basedata/country_context.ex
* injecting /home/rb/elixir/elixir/agento_umbrella/apps/agento/lib/agento/basedata/country_context.ex
* creating /home/rb/elixir/elixir/agento_umbrella/apps/agento/test/agento/basedata/country_context_test.exs
* injecting /home/rb/elixir/elixir/agento_umbrella/apps/agento/test/agento/basedata/country_context_test.exs
* injecting lib/agento_web.ex

Add the live routes to your browser scope in lib/agento_web/router.ex:

    live "/countries", CountryLive.Index, :index
    live "/countries/new", CountryLive.Index, :new
    live "/countries/:id/edit", CountryLive.Index, :edit

    live "/countries/:id", CountryLive.Show, :show
    live "/countries/:id/show/edit", CountryLive.Show, :edit


Remember to update your repository by running migrations:

    $ mix ecto.migrate
```

CommunicationType: TELP,TELB,MTEL,EML,FAXP,FAXB,EML2,EML3
AddressType: BUS, PRV

cd apps/agento_web/

mix phx.gen.live Basedata.CountryContext Country countries alpha2:string alpha3:string numeric3:integer name:string

mix phx.gen.live Basedata.CurrencyContext Currency currencies code:string name:string is_fund:boolean is_complimentary:boolean is_metal:boolean

mix phx.gen.live Basedata.AirportContext Airport airports country_id:references:countries region_name:string iata:string icao:string airport:string latitude:float longitude:float

mix phx.gen.live Basedata.LanguageContext Language languages code3:string bcode:string tcode:string code2:string language_name:string scope:string type:string macro_language_code:string macro_language_name:string is_child:boolean is_correspondance_language:boolean sort_order:integer is_correspondance_language_active:boolean is_visible:boolean

mix phx.gen.live Basedata.CommunicationTypeContext CommunicationTypeCode communication_type_codes code:string

mix phx.gen.live Basedata.AirlineContext Airline airlines id_nr:string name:string alias:string iata:string icao:string callsign:string country_name:string active:boolean

mix phx.gen.live Basedata.TravelCardTypeContext TravelCardType travelcardtypes name:string

mix phx.gen.live Basedata.IdentificationTypeCodeContext IdentificationTypeCode identificationtypecodes name:string

mix phx.gen.live Basedata.AddressTypeContext AddressType addresstypes code:string

mix phx.gen.live Basedata.RoleTypeContext RoleType roletypes code:string


mix phx.gen.live OrganisationContext Organisation organisations name:string abbreviation:string foundationdate:date begindate:datetime correspondancelanguage1_id:references:languages description:string enddate:datetime is_deleted:boolean popularname:string

mix phx.gen.live OrganisationNameTransContext OrganisationNameTrans organisation_name_trans name:string language:references:languages organisation_id:references:organisations

mix phx.gen.live IndividualContext Individual individuals lastname:string firstname:string gender:string native_language_code:string birthdate:date correspondancelanguage1_id:references:languages  dateofdeath:date displayname:string is_deleted:boolean nationalitycountrycode_id:references:countries

mix phx.gen.live AddressContext Address addresses street1:string street2:string city:string zipcode:string state:string pobox:string is_pobox:boolean country_id:references:countries begindate:datetime enddate:datetime active:boolean addresstype_id:references:addresstypes individual_id:references:individuals organisation_id:references:organisations 

mix phx.gen.live CommunicationContext Communication communications value:string typecode:string communication_type_code_id:references:communication_type_codes individual_id:references:individuals organisation_id:references:organisations 

mix phx.gen.live TravelPreferenceContext TravelPreference travelpreferences has_wheelchair:boolean homeairport_location:string labelname:string mealtype_code:string preferred_aircraft_seat_type_code:string individual_id:references:individuals

mix phx.gen.live FrequentFlyerCardContext FrequentFlyerCard frequentflyercards airline_name:string airline_iata_code:string frequent_flyer_number:string travelpreference_id:references:travelpreferences

mix phx.gen.live TravelCardContext TravelCard travelcards travelcardtype:references:travelcardtypes travelcardnumber:string expiration:datetime travelpreference_id:references:travelpreferences

mix phx.gen.live IdentificationContext Identifications identification country_of_issue_id:references:countries dateofissue:datetime document_country_code_id:references:countries document_number:string expirationdate:datetime identificationtypecode:string is_main_passport:boolean issuing_authority:string place_of_issue:string individual_id:references:individuals

mix phx.gen.live RoleContext Role roles individual_id:references:individuals organisation_id:references:organisations begindate:datetime enddate:datetime roletypecode_id:references:roletypes


