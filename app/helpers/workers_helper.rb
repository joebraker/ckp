module WorkersHelper
  ABBR_DEGREE = {
    'кандидат' => 'канд.',
    'доктор' => 'д-р' }

  FACULTY_NAME = {
    'физический' => 'физический факультет',
    'химический' => 'химический факультет',
    'биологический' => 'биологический факультет',
    'наук о материалах' => 'факультет наук о материалах' }

  def humanize(str)
    FACULTY_NAME[str]
  end

  def short(str)
    ABBR_DEGREE[str]
  end
end
