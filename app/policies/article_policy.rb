class ArticlePolicy < ApplicationPolicy

	def index?
		true
	end

	def show?
		true
	end

	def new?
		user.present?
	end

	def create?
		user.present?
	end

	def edit?
		is_creator?
	end

	def update?
		is_creator?
	end

	def destroy?
		is_creator?
	end

	def is_creator?
		user.present? && record.user_id === user.id
	end
end