# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
3.times do |topic|
    Topic.create!(
        title: "Topic #{topic}"
    )
end

10.times do |blog|
    Blog.create!(
        title: "Tiele #{blog}",
        body: "Body #{blog}",
        topic_id: Topic.last.id
    )
end

puts "blogs created"

5.times do |skill|
    Skill.create!(
        title: "Skill #{skill}",
        percent_utilized: skill
    )
end

puts "skills created"

8.times do |portfolio|
    Portfolio.create!(
        title: "Portfolio title #{portfolio}",
        subtitle: "Ruby on Rails",
        body: "観光庁は２月１９日、１月の訪日外国人旅行者数を発表、翌２０日の各紙朝刊に詳報が掲載された。各紙が注目しているのは中国の春節期間（１月２４日～２月２日）における中国人訪日客の減少で、昨年と比較して約２割減少したという。それは例の新型コロナウイルスによる影響のためであるが、２月以降さらに客数が減ることが心配されている。
        　しかし、本当に心配しなければならないのは全く逆のことである。１月全体だと中国人訪日客数は昨年より２２・６％増加し、９２万４８００人であった。各紙は、この１月全体の訪日客数に少しも脅威を感じていないようだが、この数字こそ、わが国の新型コロナウイルスの拡散と、直接関係する数字といえよう。",
        main_image: "https://via.placeholder.com/700x300",
        thumb_image: "https://via.placeholder.com/350x150"
    )
end

1.times do |portfolio|
    Portfolio.create!(
        title: "Portfolio title #{portfolio}",
        subtitle: "Django",
        body: "武漢が封鎖されたのは１月２３日であるから、感染者はそれ以前に大量に日本に入国していたのだ。そのため、日本でも感染者が出現し、観光バス運転手の感染や屋形船での集団感染がおこった。いずれも原因は、今から約２カ月も前の１月上～中旬、武漢の観光客との接触だろう。
        　しかし武漢からの入国者、１万８千人という数字は、ほとんど注目されなかった。この間、日本では主にチャーター便やクルーズ船を問題にしていたが、市中感染は確実に進行していただろう。現在イタリア、フランス、アメリカでも感染者が増えているが、感染源は春節時期の中国人観光客である疑いが強い。",
        main_image: "https://via.placeholder.com/700x300",
        thumb_image: "https://via.placeholder.com/350x150"
    )
end
