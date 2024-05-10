# Uttley_Adaptable_Model
Herein, the model and solver script used to predict the outcome of the generic model and the in silico experiments is described.

**Model Script**
The first script is termed the “Model script” which describes the model framework. This script included the assignment of fixed parameter values (section 1) and each metabolite as a number (for example y(1), y(2), etc) (section 2). Every uncertain parameter was assigned as a global value (section 3). The parameters and metabolites were then connected via rate laws (section 4), and the rate laws were then connected via ODEs for each metabolite (section 5).


**Solver Script**
The “Solver script” described the log-normal distributions of uncertain parameters and solves the ODEs. To begin the script, the number of model variants were defined (section 1). For each uncertain parameter, a parameter distribution was generated based upon the defined µ and σ (section 3). For parameters which were thermodynamically connected, multivariate distributions were created (section 4). From these distributions, parameter values were randomly selected to generate unique parameter sets for every model variant (section 5). In the latter half of the “Solver script”, the event parameters are assigned a value and a time at which it changes, and the initial concentration of every metabolite is set (section 6). 
The ODEs are then solved using MATLABs inbuilt stiff ordinary differential equation solver, ode15 (section 5). The result of these models was then defined as failed if the numerical values cannot be calculated by the solver, as abnormal if the concentration of certain metabolites went below zero, and normal if not (section 6). The choice of metabolite is user defined and for the purposes of this model was arbitrarily set as PGE2. The models which were classified as normal were then analysed.
