1. How would you go about calculating and explaining the value we provided with this
approach (either through cost savings or improved quality outcomes) to these three
employer customers?
The allocation works on the following. 
1. We never exceed the capacity for a doctor. i.e., not over-allocating 
2. Quality over cost. i.e., We only comprise on quality when we do not have availabilty of doctors with better quality ratings
3. We will pick the most cost-effective doctor while doing our best to maintain quality.

2. Based on this data, which types of new providers would be most beneficial to have
access to?
- We would befefit by seeking more doctors in 
zip - 334113504
who can attend to 
cpts {'29888': 8, '24538' '29806, '27130'}


3. Is provider-procedure volume a good proxy for clinical quality? Is there a better option
you could propose?
It is not necessarily accurate to assume that provider-procedure volume is a good proxy for clinical quality. While it is possible that providers who perform a high volume of procedures may have gained valuable experience and expertise in their area of practice, it is not a guarantee that they will consistently provide high quality care.

Additionally, using provider-procedure volume as a proxy for clinical quality may not provide a complete picture of the care being provided. The limited data available on adverse events may not fully capture the full range of potential issues that can arise in the course of treatment, and it is possible that some adverse events may not be easily measurable or may not be reported.

A better option for evaluating clinical quality may be to use a more comprehensive assessment approach that takes into account a range of factors, including patient outcomes, rating and need for followups and success of follow ups.


4. What other data might you ask for to be able to perform better on this task?
- It would be helpful to have access to additional data that can provide a more comprehensive view of the encounters, patients, and providers involved. This could include data on the procedures being performed, patient history and previous visits, and the background and experience of the doctors.

Additionally, it may be useful to have more detailed information about the encounters themselves, including information on the specific issues or concerns being addressed and the outcomes of the treatment. This could help to provide a clearer understanding of the care being provided and allow for more accurate evaluation of the quality of that care.


Next Steps
One potential next step for this task could be to use the Google OR Tool[1] to optimize the allocation of doctors based on cost to the employer and quality for the patient. This tool can help to identify the most cost-effective and high-quality options for allocating doctors based on the specific constraints and objectives of the task.

If more data and ratings for the doctors were available, it may also be possible to fine-tune the recommendations made through this process. This could involve analyzing the specific factors that contribute to high-quality care and using this information to better understand the relative strengths and weaknesses of different doctors.


Refereces:
## References

1. https://developers.google.com/optimization/assignment/assignment_example
2. https://towardsdatascience.com/assigning-fastest-pick-ups-to-uber-drivers-with-linear-programming-8f8bd3c44c9a

for patient_row in sort by num_of provider(start_with_lowest no of provider)
get all providers for patient
sort_all_providers_quaility and cost