# Let's build a matchmaking system that helps discover jobs for developers based on a number of factors.


def match(candidate, job)
    raise if !candidate['min_salary'] || !job['max_salary']
    needed = candidate['min_salary'] - candidate['min_salary'] * 0.1
    job['max_salary'] >= needed 
end



candidate1 = { 'min_salary'=>120000 }
candidate2 = { 'min_salary'=>190000 }
job1 = { 'max_salary'=>130000 }
job2 = { 'max_salary'=>80000 }
job3 = { 'max_salary'=>171000 }

p match(candidate1, job1) #, true