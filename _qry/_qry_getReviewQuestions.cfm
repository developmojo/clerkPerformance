<cfquery datasource="clerkPerformTest" name="getReviewQuestions">	
SELECT [qID]
      ,[linkedFormID]
      ,[questionTitle]
      ,[questionDesc]
      ,[questionSubText]
      ,[questionOrder]
      ,[questionTypeID]
      ,[allowMultipleAnswers]
      ,[maAnswerChoices]
      ,[rsValue]
      ,[rsName]
      ,[rsDesc]
      ,[naMaxValue]
      ,[naMinValue]
      ,[gdScoreEachGoal]
      ,[gdWeightedScores]
      ,[rsForScoring]
      ,[gdMaxValue]
      ,[gdMinValue]
      ,[ncCalcType]
      ,[ncWhichQuestionsToAdd]
      ,[ncHideCalculation]
	  ,RF.reviewFormName
      ,RF.reviewformid
      ,RF.reviewFormUUID
	  ,RF.templateID
      ,QT.qtypeTitle
  FROM [clerkPerform].[dbo].[Questions] Q
  join reviewForms RF on q.linkedFormID = rf.reviewFormUUID
  join questionTypes QT on q.questionTypeID = QT.qTypeid



  </CFQUERY>


    <cfquery datasource="clerkPerformTest" name="getReviewForms">	
    
        SELECT 
            
            *
            
        FROM 
        [clerkPerform].[dbo].reviewForms RF
   
    </CFQUERY>
    
  