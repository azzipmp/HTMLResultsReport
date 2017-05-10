require 'Win32OLE'
   class WebReporter
   
		PASS = "PASS"
    PASSED ="PASSED"
		FAIL = "FAIL"
    FAILED="FAILED"
		ERROR = 3
   COLOR_PASS="GREEN"
   COLOR_FAIL="RED"
   COLOR_INFO="BLUE" 
            
def initialize()
    @slLog = ""
  end
  def ReportEvent(testcaseName,status,text)
      
     @slLog = @slLog + "<LI>"           
		 @slLog = @slLog +  "<FONT " ;
     @slLog = @slLog + " FACE = "  + "\"" +  "Arial"+ "\""
     @slLog = @slLog + " COLOR = "   + "\""
      if (status.upcase.strip == PASS) or (status.upcase.strip == PASSED) then
          color = COLOR_PASS
          size=2            
      elsif (status.upcase.strip ==FAIL) or (status.upcase.strip == FAILED) then
          color = COLOR_FAIL
           size = 3
      else
          color = COLOR_INFO
          size =2
      end
      @slLog = @slLog + color  + "\"" +" SIZE = "   
      text   = "TESTCASE NAME : "+ testcaseName+", STATUS : "+status +", MESSAGE : "+text
      @slLog = @slLog + size.to_s() + ">"  + text
      @slLog = @slLog + "</FONT>"
			@slLog = @slLog + "<br>"  + "\n"
      @slLog = @slLog + "</LI>"  + "\n"
  end       
            
 def Save(path)
       file = File.new(path, File::CREAT|File::RDWR)
       file.write(@slLog )
       file.close()
 end
 end

        
