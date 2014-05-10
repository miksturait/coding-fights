require 'spec_helper'

describe CodesController do

  # This should return the minimal set of attributes required to create a valid
  # Code. As you add validations to Code, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    { 'user' => 'MyString' }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CodesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe 'GET index' do
    it 'assigns all codes as @codes' do
      code = Code.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns :codes).to eq([code])
    end
  end

  describe 'GET show' do
    it 'assigns the requested code as @code' do
      code = Code.create! valid_attributes
      get :show, { id: code.to_param }, valid_session
      expect(controller.code).to eq(code)
    end
  end

  describe 'GET new' do
    it 'assigns a new code as @code' do
      get :new, {}, valid_session
      expect(controller.code).to be_a_new(Code)
    end
  end

  describe 'GET edit' do
    it 'assigns the requested code as @code' do
      code = Code.create! valid_attributes
      get :edit, { id: code.to_param }, valid_session
      expect(controller.code).to eq(code)
    end
  end

  describe 'POST create' do
    describe 'with valid params' do
      it 'creates a new Code' do
        expect do
          post :create, { code: valid_attributes }, valid_session
        end.to change(Code, :count).by(1)
      end

      it 'assigns a newly created code as @code' do
        post :create, { code: valid_attributes }, valid_session
        expect(controller.code).to be_a(Code)
        expect(controller.code).to be_persisted
      end

      it 'redirects to the created code' do
        post :create, { code: valid_attributes }, valid_session
        expect(response).to redirect_to(Code.last)
      end
    end
  end

  describe 'PUT update' do
    describe 'with valid params' do
      it 'updates the requested code' do
        code = Code.create! valid_attributes
        # Assuming there are no other codes in the database, this
        # specifies that the Code created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        expect_any_instance_of(Code).to receive(:update).with(valid_attributes)
        put :update, {
          id: code.to_param, code: valid_attributes
        }, valid_session
      end

      it 'assigns the requested code as @code' do
        code = Code.create! valid_attributes
        put :update, {
          id: code.to_param, code: valid_attributes
        }, valid_session
        expect(controller.code).to eq(code)
      end

      it 'redirects to the code' do
        code = Code.create! valid_attributes
        put :update, {
          id: code.to_param, code: valid_attributes
        }, valid_session
        expect(response).to redirect_to(code)
      end
    end

    describe 'with invalid params' do
      it 'assigns the code as @code' do
        code = Code.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(Code).to receive(:save).and_return(false)
        put :update, {
          id: code.to_param, code: valid_attributes
        }, valid_session
        expect(controller.code).to eq(code)
      end

      it "re-renders the 'edit' template" do
        code = Code.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(Code).to receive(:save).and_return(false)
        put :update, {
          id: code.to_param, code: valid_attributes
        }, valid_session
        expect(response).to render_template('edit')
      end
    end
  end

  describe 'DELETE destroy' do
    it 'destroys the requested code' do
      code = Code.create! valid_attributes
      expect do
        delete :destroy, { id: code.to_param }, valid_session
      end.to change(Code, :count).by(-1)
    end

    it 'redirects to the codes list' do
      code = Code.create! valid_attributes
      delete :destroy, { id: code.to_param }, valid_session
      expect(response).to redirect_to(codes_url)
    end
  end

end
