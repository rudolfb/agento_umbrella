defmodule AgentoWeb.CountryLiveTest do
  use AgentoWeb.ConnCase

  import Phoenix.LiveViewTest

  alias Agento.Basedata.CountryContext

  @create_attrs %{alpha2: "some alpha2", alpha3: "some alpha3", name: "some name", numeric3: "some numeric3"}
  @update_attrs %{alpha2: "some updated alpha2", alpha3: "some updated alpha3", name: "some updated name", numeric3: "some updated numeric3"}
  @invalid_attrs %{alpha2: nil, alpha3: nil, name: nil, numeric3: nil}

  defp fixture(:country) do
    {:ok, country} = CountryContext.create_country(@create_attrs)
    country
  end

  defp create_country(_) do
    country = fixture(:country)
    %{country: country}
  end

  describe "Index" do
    setup [:create_country]

    test "lists all countries", %{conn: conn, country: country} do
      {:ok, _index_live, html} = live(conn, Routes.country_index_path(conn, :index))

      assert html =~ "Listing Countries"
      assert html =~ country.alpha2
    end

    test "saves new country", %{conn: conn} do
      {:ok, index_live, _html} = live(conn, Routes.country_index_path(conn, :index))

      assert index_live |> element("a", "New Country") |> render_click() =~
               "New Country"

      assert_patch(index_live, Routes.country_index_path(conn, :new))

      assert index_live
             |> form("#country-form", country: @invalid_attrs)
             |> render_change() =~ "can&apos;t be blank"

      {:ok, _, html} =
        index_live
        |> form("#country-form", country: @create_attrs)
        |> render_submit()
        |> follow_redirect(conn, Routes.country_index_path(conn, :index))

      assert html =~ "Country created successfully"
      assert html =~ "some alpha2"
    end

    test "updates country in listing", %{conn: conn, country: country} do
      {:ok, index_live, _html} = live(conn, Routes.country_index_path(conn, :index))

      assert index_live |> element("#country-#{country.id} a", "Edit") |> render_click() =~
               "Edit Country"

      assert_patch(index_live, Routes.country_index_path(conn, :edit, country))

      assert index_live
             |> form("#country-form", country: @invalid_attrs)
             |> render_change() =~ "can&apos;t be blank"

      {:ok, _, html} =
        index_live
        |> form("#country-form", country: @update_attrs)
        |> render_submit()
        |> follow_redirect(conn, Routes.country_index_path(conn, :index))

      assert html =~ "Country updated successfully"
      assert html =~ "some updated alpha2"
    end

    test "deletes country in listing", %{conn: conn, country: country} do
      {:ok, index_live, _html} = live(conn, Routes.country_index_path(conn, :index))

      assert index_live |> element("#country-#{country.id} a", "Delete") |> render_click()
      refute has_element?(index_live, "#country-#{country.id}")
    end
  end

  describe "Show" do
    setup [:create_country]

    test "displays country", %{conn: conn, country: country} do
      {:ok, _show_live, html} = live(conn, Routes.country_show_path(conn, :show, country))

      assert html =~ "Show Country"
      assert html =~ country.alpha2
    end

    test "updates country within modal", %{conn: conn, country: country} do
      {:ok, show_live, _html} = live(conn, Routes.country_show_path(conn, :show, country))

      assert show_live |> element("a", "Edit") |> render_click() =~
               "Edit Country"

      assert_patch(show_live, Routes.country_show_path(conn, :edit, country))

      assert show_live
             |> form("#country-form", country: @invalid_attrs)
             |> render_change() =~ "can&apos;t be blank"

      {:ok, _, html} =
        show_live
        |> form("#country-form", country: @update_attrs)
        |> render_submit()
        |> follow_redirect(conn, Routes.country_show_path(conn, :show, country))

      assert html =~ "Country updated successfully"
      assert html =~ "some updated alpha2"
    end
  end
end
