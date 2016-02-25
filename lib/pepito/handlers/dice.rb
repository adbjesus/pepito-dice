module Pepito
  module Handlers
    class Dice < Handler
      class << self
        # Configs needed for Dice
        # @return [Array<Hash>]
        def configs
          [
            {
              name: 'SEED',
              required: false
            }
          ]
        end
      end

      attr_reader :rnd

      def initialize(robot, config)
        super(robot, config)
      
        @rnd = Random.new(@config['SEED'].to_i || Time.now.to_i)
      end

      def run
        chat_route(/^roll dice (?<number>[0-9]+)$/i, :roll_dice, command: true, help: "roll dice [number] -> roll a dice getting a result between 1 and [number]")
      end

      def roll_dice(_source, match_data)
        return [(@rnd.rand(match_data['number'].to_i) + 1).to_s]
      end
    end
  end
end
