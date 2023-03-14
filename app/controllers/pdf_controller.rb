class PdfController < ApplicationController
  def generate_and_sign
    # Generate the PDF using Wicked PDF
    pdf_data = WickedPdf.new.pdf_from_string(render_to_string('pdf/template.html.erb'))

    # Add an e-signature to the PDF using Prawn
    signature_data = Base64.decode64(params[:signature_data])
    signature_image = Prawn::Images::PNG.new(signature_data)

    pdf = CombinePDF.load(pdf_data)
    pdf.pages.each do |page|
      page << signature_image
    end

    signed_pdf_data = pdf.to_pdf

    # Send the signed PDF to the user
    send_data(signed_pdf_data, filename: 'signed.pdf', type: 'application/pdf', disposition: 'inline')
  end
end
