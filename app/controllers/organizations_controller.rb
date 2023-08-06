class OrganizationsController < ApplicationController
  def index
    @organizations = Organization.all
  end

  def show
    @organization = Organization.find(params[:id])
  end

  def new
    @organization = Organization.new
  end

  def create
    @organization = Organization.new(organization_params)
    if @organization.save
      flash[:success] = "Организация успешно создана."
      redirect_to organizations_path
    else
      flash[:danger] = "Ошибка при создании организации."
      render :new
    end
  end

  def edit
    @organization = Organization.find(params[:id])
  end

  def update
    @organization = Organization.find(params[:id])
    if @organization.update(organization_params)
      flash[:success] = "Организация успешно обновлена."
      redirect_to @organization
    else
      render :edit
    end
  end

  def destroy
    @organization = Organization.find(params[:id])
    @organization.destroy
    flash[:success] = 'Организация успешно удалена.'
    redirect_to organizations_path
  end

  private

  def organization_params
    params.require(:organization).permit(:name, :short_name, :inn, :kpp, :address, :phone)
  end
end
