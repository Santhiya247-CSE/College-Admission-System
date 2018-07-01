class AdmissionController < ApplicationController
 http_basic_authenticate_with name:"Santhiya",password:"ruby"
  def Home
  end

  def StudentLogin
  end

  def AdminLogin
  end

  def About
  end

  def StudentLoginaction
  	 @a=Admission.new
    @a.name=params["name"]
    @a.age=params["age"]
    @a.gender=params["gender"]
    @a.dob=params["dob"]
    @a.address=params["address"]
    @a.qualification=params["qualification"]
    @a.board=params["board"]
    @a.state=params["state"]
    @a.pic=params["pic"]
    @a.coff=params["coff"]
    @a.clg=params["clg"]
    @a.dept=params["dept"]
    @a.cno=params["cno"]
    @a.mail=params["mail"]
    if @a.save
      @msg="Thank You!\nYour Form has been Submitted Successfully!!"
    else
      @msg="Failed"
      render "error"
    end
  end

  def AdminLoginaction
    name=params["name"]
    password=params["password"]
    if name=="santhiya" && password=="san" 
      render "AdminLoginaction"
    else
      render "Error1"
    end
  end
  def Enrollment
    #@enrollmentlist=Admission.all
    @enrollmentlist=Admission.all.paginate(page:params[:page],per_page:2)
  end
  def CollegeBasedFilter
   @a=Admission.all
   # render "CollegeBasedFilter"
   # @a.clg=Admission.find_by_clg(params["clg"])
    #if @a.clg==params["clg"]
     # render "CollegeBasedFilter"
    #else
     # render "error"
    #end
  end
 # def CollegeBased
  #  @a=Admission.all
  #end
  def CutoffBasedFilter
    @a=Admission.all
    #@a.coff=Admission.find_by_clg(params["coff"])
    #if @a.coff==params["coff"]
     # render "CutoffBasedFilter"
    #else
     # render "error"
    #end
  end
  def CutoffBased
  #  @a=Admission.all
  end
end
