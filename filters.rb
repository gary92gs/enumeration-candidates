# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
  @candidates.each do |candidate|
    if candidate[:id] == id
      return candidate
    end
  end
  return nil
end

def experienced?(candidate)
  if candidate[:years_of_experience] >= 2
    return true
  end
  return false
end

def git_experienced?(candidate)
  if candidate[:github_points] >= 100
    return true
  end
  return false
end

def experienced_python_ruby?(candidate)
  candidate[:languages].each do |language|
    if language == 'Python' || language == 'Ruby'
      return true
    end
  end
  return false
end

def applied_recently?(candidate)
  days_passed = (Date.today - candidate[:date_applied]).to_i
  if days_passed <= 15
    return true
  end
  return false
end

def is_adult?(candidate)
  if candidate[:age] < 18
    return false
  end
  return true
end

def qualified_candidates(candidates)
  return candidates.select do |candidate|
    (experienced?(candidate) &&
    git_experienced?(candidate) &&
    experienced_python_ruby?(candidate) &&
    applied_recently?(candidate) &&
    is_adult?(candidate))
  end
end

def ordered_by_qualifications(candidates)
  qualified_candidates_arr = qualified_candidates(candidates)
  return qualified_candidates_arr.sort do | b, a |
    [a[:years_of_experience], a[:github_points]] <=> [b[:years_of_experience], b[:github_points]]
  end
end
  # More methods will go below