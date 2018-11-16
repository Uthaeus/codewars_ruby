# You will be provided with an object(staff) containing the staff names as keys, and the department they work in as values


def boredom(staff)
    scores = { 'accounts' => 1, 'finance' => 2, 'canteen' => 10, 'regulation' => 3, 'trading' => 6, 'change' => 6, 'IS' => 8, 'retail' => 5, 'cleaning' => 4, 'pissing about' => 25 }
    boredom_score = 0

    staff.each do |k, v|
        boredom_score += scores[v]
    end

    boredom_score >= 100 ? 'party time!!' : boredom_score > 80 ? 'i can handle this' : 'kill me now'
end



p boredom({tim: 'change', jim: 'accounts',
    randy: 'canteen', sandy: 'change', andy: 'change', katie: 'IS',
    laura: 'change', saajid: 'IS', alex: 'trading', john: 'accounts',
    mr: 'finance' }) #, 'kill me now'

p boredom({ tim: 'accounts', jim: 'accounts',
    randy: 'pissing about', sandy: 'finance', andy: 'change',
    katie: 'IS', laura: 'IS', saajid: 'canteen', alex: 'pissing about',
    john: 'retail', mr: 'pissing about' }) #, 'party time!!'