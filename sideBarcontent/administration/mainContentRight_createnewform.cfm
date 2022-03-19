<!---MOVING TO HEADER 3/17/2022 
    
    <cfinclude template="../../_qry/_qry_GetReviewQuestions.cfm">

--->

<!---<CFIF ISDEFINED("GetReviewQuestions.recordCount") and GetReviewQuestions.recordCount GT 0>--->
    

    
    <CFIF ISDEFINED("form.submit") and form.submit EQ "updateForm">

        <CFINCLUDE template="../../_qry/_qry_updateReviewForm.cfm">

    <CFELSEIF ISDEFINED("form.submit") and form.submit EQ "submitForm">

        <CFINCLUDE template="../../_qry/_qry_addReviewForm.cfm">

    <CFELSE> 

    </CFIF>

        <CFIF ISDEFINED("form.submit") and form.submit EQ "submitQuestion">

           

                <!---<CFQUERY name="questionCheck" datasource="clerkPerformTest">

                select * from clerkperform.dbo.questions 


                </CfQUERY>--->

                <CFINCLUDE template="../../_qry/_qry_addReviewQuestions.cfm">

                <!---<cfif isdefined("questioncheck.recordCount") and questioncheck.recordCount EQ 0>

                    <!---DO AN insert INTO REVIEWFORMS AND QUESTIONS---><BR>

                    <CFINCLUDE template="../../_qry/_qry_addReviewForm.cfm">


                <CFELSE>

                    DO AN UPDATE<bR>
                    #form.questionTypeID#<Br>
                    #form.questionDesc#<Br>
                    #form.questionSubText#<Br>
                    #session.userUUID#

                </CFIF>--->


            


        </CFIF>



        <DIV CLASS="buttonContainer">
            
            <input type="button" class="btn btn-primary btn-sm" onclick="hideQuestions();" value="X">
            <!--- <DIV class="closeButton">X</DIV>--->

        <hr>What Type of question
        </DIV>

        <DIV>

            <form class="creatreviewForm" action="?action=createnewform" method="post">
                <div class="form-row">
                        <div class="form-group col-md-10">
                    
                            <select onChange="myFunction(this.options[this.selectedIndex].value)" id="selectQuestionDropDown" class="form-control" name="questionTypeID">
                                <option selected></option>
                                <option value="1">Long Answer</option>
                                <option value="2">Multiple Line Answer</option>
                                <option value="3">Numeric Option</option>
                                <option value="4">Date</option>
                                <option value="5">Multiple Choice</option>
                                <option value="6">Instructions</option>
                                <option value="7">Rating Scale</option>
                                <option value="8">Goal Discusion</option>
                                <option value="9">Goal Creation</option>
                                <option value="10">Numeric Calculation</option>
                            </Select>
                    
                    <!--- <p align="right"><input type="button" class="btn btn-primary btn-sm" onclick="showQuestions();" value="ADD QUESTION"></p>
                    <hr> 
                    <p align="right"><button type="submit" class="btn btn-success btn-sm">Save Form</button></p>--->
                    
                    <!---<select id="inputState" class="form-control">
                        <option selected>OPTIONS...</option>
                        <option>PREVIEW AS PDF</option>
                        <option>PREVIEW</option>
                        <option>SAVE FORM</option>
                        <option>REMOVE FORM 
                        
                
                        </option>
                    </Select>--->

                        <div id="Q1Check">

                            <label for="question1">What is your question?</label>
                            
                            <textarea class="form-control" id="question1" placeholder="" name="questionDesc"></textarea>
                            <Br>
                            <label for="question1b">Question subtext</label>
                            <textarea class="form-control" id="question2" placeholder="" name="questionSubText"></textarea>

                        </div>

                        <div id="Q2Check">
                            <label for="question2">What is your question?</label>
                            
                            <textarea class="form-control" id="question3" placeholder="" name="questionDesc"></textarea>
                            <Br>
                            <label for="question2b">Question subtext</label>
                            <textarea class="form-control" id="question4" placeholder="" name="questionSubText"></textarea>
                        </div>
                            <div ID="Q3Check" class="form-group col-md-6">
                                <label for="question3">What is your question?</label>
                            
                                <textarea class="form-control" id="question5" placeholder="" name="questionDesc"></textarea>
                                <Br>
                                <label for="question3a">Question subtext</label>
                                <textarea class="form-control" id="question6" placeholder="" name="questionSubText"></textarea>
                                <hr>
                                <br>
                                <p>Options</p>
                                <label for="question3b">Maximum value</label>
                                <input type="text" class="form-control" id="question7" placeholder="">
                                <label for="question3c">Minimum value</label>
                                <input type="text" class="form-control" id="question8" placeholder="">
                            </div>

                            <div id="Q4Check">
                                <label for="question4a">What is your question?</label>
                            
                                <textarea class="form-control" id="question9" placeholder="" name="questionDesc"></textarea>
                                <Br>
                                <label for="question4b">Question subtext</label>
                                <textarea class="form-control" id="question10" placeholder="" name="questionSubText"></textarea>
                            </div>

                            <div ID="Q5Check">
                                <label for="question5a">What is your question?</label>
                            
                                <textarea class="form-control" id="question11" placeholder="" name="questionDesc"></textarea>
                                <Br>
                                <label for="question5b">Question subtext</label>
                                <textarea class="form-control" id="question12" placeholder="" name="questionSubText"></textarea>
                                <hr>
                                <br>
                                <p>Options</p>
                                <input type="checkbox" id="q5checkbox">Allow selection of multiple answers
                                <p></p>
                                <label for="question5c">Answer choices</label>
                                <input type="text" class="form-control" id="question13" placeholder="">
                            </div>

                            <div id="Q6Check">
                                <label for="question6a">What is your question?</label>
                            
                                <textarea class="form-control" id="question14" placeholder="" name="questionDesc"></textarea>
                                <Br>
                                <label for="question6b">Question subtext</label>
                                <textarea class="form-control" id="question15" placeholder="" name="questionSubText"></textarea>
                            </div>

                            
                            <div ID="Q7Check">
                                <label for="question7a">What is your question?</label>
                            
                                <textarea class="form-control" id="question16" placeholder="" name="questionDesc"></textarea>
                                <Br>
                                <label for="question7b">Question subtext</label>
                                <textarea class="form-control" id="question17" placeholder="" name="questionSubText"></textarea>
                                <hr>
                                <br>
                                <p>Options</p>
                                <label for="question7c">VALUE</label>
                                <input type="text" class="form-control" id="question18" placeholder="">
                                <label for="question7d">NAME</label>
                                <input type="text" class="form-control" id="question19" placeholder="">
                                <label for="question7e">DESCRIPTION</label>
                                <input type="text" class="form-control" id="question20" placeholder="">
                            </div>

                            <div ID="Q8Check">
                                <label for="question8a">What is your question?</label>
                            
                                <textarea class="form-control" id="question21" placeholder="" name="questionDesc"></textarea>
                                <Br>
                                <label for="question8b">Question subtext</label>
                                <textarea class="form-control" id="question22" placeholder="" name="questionSubText"></textarea>
                                <hr>
                                <br>
                                <p>Options</p>
                                <input type="checkbox" id="q8checkbox1">Score Each Goal
                                <p></p>
                                <input type="checkbox" id="q8checkbox2">Use Rating Scale for Scoring
                            </div>

                            
                            <div id="Q9Check">
                                <label for="question9a">What is your question?</label>
                            
                                <textarea class="form-control" id="question23" placeholder="" name="questionDesc"></textarea>
                                <Br>
                                <label for="question9b">Question subtext</label>
                                <textarea class="form-control" id="question24" placeholder="" name="questionSubText"></textarea>
                            </div>

                            <div ID="Q10Check">
                                <label for="question10a">What is your question?</label>
                            
                                <textarea class="form-control" id="question25" placeholder="" name="questionDesc"></textarea>
                                <Br>
                                <label for="question10b">Question subtext</label>
                                <textarea class="form-control" id="question26" placeholder="" name="questionSubText"></textarea>
                                <hr>
                                <br>
                                <p>Options</p>
                                <label for="question10c">What type of calculation</label>
                                <select class="form-control" id="question27" placeholder="">
                                    <option>Sum</option>
                                    <option>Average</option>
                                </select>
                                <p></p>
                                <label for="question10d">Choose which questions to add to your calculation</label>
                                <input type="text" class="form-control" id="question28" placeholder="">
                                <p></p>
                                
                                <input type="checkbox" id="q10checkbox" placeholder="">Hide calculation on review form for all users
                            </div>

                        
                            <button type="submit" name="submit" value="submitQuestion" class="btn btn-success btn-sm">Save Question</button>
                        

                    </div>
                    
                    
                </div>
                    
                </form>

        </DIV>

