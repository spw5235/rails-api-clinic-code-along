# frozen_string_literal: true

class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :destroy]

  def index
    @patients = Patient.all
    render json: @patients
  end

  def show
    @patient = Patient.find(params[:id])

    render json: @patient
  end

  def destroy
    @patient.destroy

    head :no_content
  end

  def set_patient
    @patient = Patient.find(params[:id])
  end

  private :set_patient
end
