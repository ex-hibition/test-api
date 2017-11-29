require 'spec_helper'

describe "plsqls_controller.rb" do

  it "SQL実行" do
    expect(plsql.select('select \'xxxxx\' from dual')).to eq([{:"'xxxxx'" => "xxxxx"}])
  end

  it "OUTパラメータを持つストアドプロシージャサンプル実行 : test_proc" do
    expect(plsql.test_proc('A1')).to eq({:result => "20171121"})
  end

  it "戻り値を持つストアドファンクションサンプル実行 : test_func" do
    expect(plsql.test_func('A1')).to eq('A1--20171121--20171031--')
  end

end


