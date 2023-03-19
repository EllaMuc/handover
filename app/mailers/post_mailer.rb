class PostMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.post_mailer.new_post.subject
  #
  def new_post
    post = Post.first
    @post = Post.first
    pdf = WickedPdf.new.pdf_from_string(
      render_to_string('template/pdf', layout: 'pdfs/layout_pdf.html'),
      footer: {
        content: render_to_stiring(
          'templates/footer',
          layout: 'pdfs/layout_pdf.html'
        )
      }
    )
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
