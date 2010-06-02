require 'test_helper'

class LeadsControllerTest < ActionController::TestCase
  context "index action" do
    should "render index template" do
      get :index
      assert_template 'index'
    end
  end
  
  context "show action" do
    should "render show template" do
      get :show, :id => Lead.first
      assert_template 'show'
    end
  end
  
  context "new action" do
    should "render new template" do
      get :new
      assert_template 'new'
    end
  end
  
  context "create action" do
    should "render new template when model is invalid" do
      Lead.any_instance.stubs(:valid?).returns(false)
      post :create
      assert_template 'new'
    end
    
    should "redirect when model is valid" do
      Lead.any_instance.stubs(:valid?).returns(true)
      post :create
      assert_redirected_to lead_url(assigns(:lead))
    end
  end
  
  context "edit action" do
    should "render edit template" do
      get :edit, :id => Lead.first
      assert_template 'edit'
    end
  end
  
  context "update action" do
    should "render edit template when model is invalid" do
      Lead.any_instance.stubs(:valid?).returns(false)
      put :update, :id => Lead.first
      assert_template 'edit'
    end
  
    should "redirect when model is valid" do
      Lead.any_instance.stubs(:valid?).returns(true)
      put :update, :id => Lead.first
      assert_redirected_to lead_url(assigns(:lead))
    end
  end
  
  context "destroy action" do
    should "destroy model and redirect to index action" do
      lead = Lead.first
      delete :destroy, :id => lead
      assert_redirected_to leads_url
      assert !Lead.exists?(lead.id)
    end
  end
end
