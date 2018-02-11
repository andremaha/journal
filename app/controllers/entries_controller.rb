class EntriesController < ApplicationController

  http_basic_authenticate_with name: 'andrey', password: 'secret96',
    except: [:index, :show]

  def index
    @entries = Entry.all
  end

  def show
    @entry = Entry.find params[:id]
  end

  def new
    @entry = Entry.new
  end

  def edit
    @entry = Entry.find params[:id]
  end

  def update
    @entry = Entry.find params[:id]

    if @entry.update entry_params
      redirect_to @entry
    else
      render 'edit'
    end
  end

  def create
    @entry = Entry.new entry_params

    if @entry.save entry_params
      redirect_to @entry
    else
      render 'new'
    end
  end

  def destroy
    @entry = Entry.find params[:id]

    @entry.destroy
    redirect_to entries_path
  end

  private
    def entry_params
      params.require(:entry).permit(:title, :subtitle, :text, :author)
    end
end
