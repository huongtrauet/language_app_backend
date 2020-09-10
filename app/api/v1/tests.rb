class Tests < BaseV1
  resource :tests do
    desc "Return all Tests"
    get "/" do
      Test.all
    end

    desc "Return a Test"
    params do
      requires :id, type: String, desc: "ID of the Test"
    end
    get ":id" do
      return send_response(GetTests, Test.where(id: param_test).first)
    end
  end
end
