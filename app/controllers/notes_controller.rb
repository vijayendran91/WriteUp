class NotesController<ApplicationController
    
    def show
        @note=Note.find(params[:id])
    end

    def create
        @note=Note.new(note_params)
        @note.save
        if @note.save
            redirect_to note_path(@note.url)
        else
            redirect_to new_note_path(@note)
        end
    end
    
    def new
        @note=Note.new
    end
    
    private def note_params
        params.require(:note).permit(:url,:note)
    end
end