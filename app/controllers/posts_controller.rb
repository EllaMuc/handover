class PostsController < ApplicationController
  def show
    @property = Property.find(params[:property_id])
    @rooms = @property.rooms
    @keys = @property.keys
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "file_name",
               formats: [:html],
               disposition: :inline,
               layout: "pdf"
      end
    end
    PostMailer.new_post.deliver_later
  end

end
  # def generate_pdf
  #   respond_to do |format|
  #     format.html
  #     format.pdf do
  #       render pdf: "file_name", template: "posts/show.html.erb"  # Excluding ".pdf" extension.
  #     end
  #   end
  # end

  # def generate_pdf
  #   respond_to do |format|
  #     format.pdf do
  #       @html = grab_html
  #       @pdf = WickedPdf.new.pdf_from_string(@html)
  #       send_data( @pdf, :filename => 'Test', type: 'application/pdf')
  #     end
  #   end
  # end

  # def grab_html
  #   ActionController::Base.new.render_to_string(template: "posts/show.html.erb",
  #                                               orientation: "protrait",
  #                                               page_size: "A4",
  #                                               background: true
  #                                             )
  # end
