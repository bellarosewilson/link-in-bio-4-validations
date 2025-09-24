class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all
    render template: "item_templates/list"
  end

  def new_item_form
    render template: "item_templates/new_item_form"
  end

  def create_new_item
    new_item = Item.new(
      link_url: params["query_link_url"],
      link_description: params["query_link_description"],
      thumbnail_url: params["query_thumbnail_url"]
    )

    if new_item.save
      redirect_to "/", notice: "Item created successfully."
    else
      redirect_to "/backdoor", alert: new_item.errors.full_messages.to_sentence
    end
  end
end
