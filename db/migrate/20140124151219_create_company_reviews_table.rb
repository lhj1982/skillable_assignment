class CreateCompanyReviewsTable < ActiveRecord::Migration
  def change
    create_table :company_reviews do |t|
      t.string :company_reviews
      t.integer :company_id
      t.integer :user_id
      t.integer :clarity_of_role, :default => 0
      t.integer :trust_responsibilities, :default => 0
      t.integer :autonomy_flexibility, :default => 0
      t.integer :guidance_feedback, :default => 0
      t.integer :creativity_innovation, :default => 0
      t.integer :equality_fairness, :default => 0
      t.integer :consistency_transparency, :default => 0
      t.integer :career_growth, :default => 0
      t.integer :compensation_benefits, :default => 0
      t.integer :recongnition_reward, :default => 0
      t.integer :learning_improvement, :default => 0
      t.integer :cooperation_efficiency, :default => 0
      t.integer :workplace, :default => 0
      t.integer :atmosphere_relationship, :default => 0
      t.integer :trust_leadship, :default => 0
      t.integer :workload_balance, :default => 0
      t.integer :relationship_with_supervisor, :default => 0
      t.integer :stimulating_job, :default => 0
      t.integer :voice_own_option, :default => 0
      t.integer :sense_belonging, :default => 0
      t.integer :culture_diversity, :default => 0
    end
  end
end
