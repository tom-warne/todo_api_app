module ShouldaMatchersExtensions
  def ought
    expect { subject }
  end
end
