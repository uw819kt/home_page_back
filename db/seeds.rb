# Profile作成
Profile.create!(
  name: "Miya",
  description: "管理栄養士からITエンジニアへ転身。Next.js、Ruby on Railsを中心に学習中です。個人開発にも挑戦していきたいです。",
  github_url: "https://github.com/uw819kt",
)

# Skills作成
skills_data = [
  # backend
  { name: "Ruby", description: "基本は理解しています" },
  { name: "Ruby on Rails", description: "API開発に取り組み中" },
  { name: "PostgreSQL", description: "学習中…" },
  # frontend 
  { name: "React", description: "学習中…" },
  { name: "Next.js", description: "学習中…" },
  { name: "TypeScript", description: "学習中…" },
  { name: "TailwindCSS", description: "学習中…" },
  { name: "HTML/CSS", description: "基本は理解しています" },
  # Tools & Equipment
  { name: "Git/GitHub", description: "バージョン管理に使用" },
  { name: "VS Code", description: "メインエディタ" },
  { name: "Docker", description: "学習中…" },
  # Past Experience
  { name: "管理栄養士資格", description: "前職での専門スキル" },
]

skills_data.each do |skill_data|
  Skill.create!(skill_data)
end

# Projects作成
projects_data = [
  {
    title: "ポートフォリオサイト(このサイト)",
    description: "スチームパンク風の個人ポートフォリオサイト。Next.js + Ruby on Railsで構築。",
    tech_stack: "Next.js, TailwindCSS, Ruby on Rails, PostgreSQL",
    status: "開発中",
    github_url: "https://github.com/uw819kt/home_page_back"
  }
]    
projects_data.each do |project_data|
  Project.create!(project_data)
end