class CompanyReview < ActiveRecord::Base
    attr_accessible :company_id, :user_id, :clarity_of_role, :trust_responsibilities, :autonomy_flexibility, :guidance_feedback, :creativity_innovation, :equality_fairness, :consistency_transparency, :career_growth, :compensation_benefits, :recongnition_reward, :learning_improvement, :cooperation_efficiency, :workplace, :atmosphere_relationship, :trust_leadship, :workload_balance, :relationship_with_supervisor, :stimulating_job, :voice_own_option, :sense_belonging, :culture_diversity


    belongs_to :company
    belongs_to :user

    id = nil
    after_save {id = self.id}
end
