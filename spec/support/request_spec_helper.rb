module RequestSpecHelper
  # JSONファイルで返ってくる物をRubyのハッシュに変換してテストをしやすくする
  def json
    JSON.parse(response.body)
  end
end