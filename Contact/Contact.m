function [Kc,Fc,Gap] = Contact(Body1,Body2,ContactType,ContactVariable,ContactRegType)

    if ContactType == "None"
       Fc = zeros(Body1.TotalDofs + Body2.TotalDofs,1);
       Kc = zeros(length(Fc));
       Gap = NaN;
    else        
       %% TODO: add boxing to identify the necessity of the contact, for now we always consider its existence
       sqrtEps = sqrt(eps);
       h1 = 10^(-8);
       
       TotalDofs1 = Body1.TotalDofs;
       TotalDofs2 = Body2.TotalDofs;
       TotalDofs = TotalDofs1 + TotalDofs2;
        

       % Initialize the global contact forces
       Kc = zeros(TotalDofs,TotalDofs);
       [Fc,Gap] = ContactForce(Body1,Body2,ContactVariable,ContactType);
            
       % variation of the variables
       I_vec=zeros(TotalDofs,1);

       % Backup original coordinates
       q1_backup = Body1.q;
       q2_backup = Body2.q;

         
       for ii = 1:TotalDofs
            
           I_vec(ii)=1;

           % this split is to distribute coord. between bodies 
           if ii <= TotalDofs1
               h = max(sqrtEps * abs(q1_backup(ii)) , h1); 

               Body1.q = q1_backup - h*I_vec(1:TotalDofs1); 
               [Fch, ~] = ContactForce(Body1,Body2,ContactVariable, ContactType); % force due to variation            
               
               Body1.q = q1_backup + h*I_vec(1:TotalDofs1); 
               [Fch2, ~] = ContactForce(Body1,Body2,ContactVariable, ContactType); % force due to variation                       
               
               
           else   
               h = max(sqrtEps * abs(q2_backup(ii-TotalDofs1)) , h1); 
               
               Body2.q = q2_backup - h*I_vec(1+TotalDofs1:TotalDofs);        
               [Fch, ~] = ContactForce(Body1,Body2,ContactVariable, ContactType); % force due to variation            
                            
               Body2.q = q2_backup + h*I_vec(1+TotalDofs1:TotalDofs);    
               [Fch2, ~] = ContactForce(Body1,Body2,ContactVariable, ContactType); % force due to variation                                 
               
               
           end
          
           Kc(:,ii) = (Fch2 - Fch) / (2*h);
           I_vec(ii)=0;                      
       end
       Body1.q = q1_backup; % restore
       Body2.q = q2_backup; % restore
       [~,Kc] = Regularization(Kc,Fc,ContactRegType,false);
    end      

    