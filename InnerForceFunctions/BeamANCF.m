function [K_loc,Fe] = BeamANCF(Body,k)
     
    sqrtEps = sqrt(eps);
    xloc = Body.xloc;
    ElementDofs = Body.ElementDofs;
    K_loc = zeros(ElementDofs,ElementDofs);  % initialization of local stiffness matrix
    Fe0 = K_loc(:,1);

    uk=Body.u(xloc(k,:));              
    qk0=Body.q0(xloc(k,:)); 

    MaterialName = Body.MaterialName;
    Dvec = Body.Dvec;
    Gint = Body.Gint;
    Nint = Body.Nint;
    ElementName = Body.ElementName;    
    switch Body.FiniteDiference

           case "Matlab"
                 h1 = 1e-8;
                 
                 Fibers = Body.Fibers;
                 detF0 = Body.detF0;
                 PosDofs = Body.PosDofs;
                 qk=Body.q(xloc(k,:));
                 phik=Body.phim(k,:)';    
                 Phik=Body.Phim(k,:)';                 
                 Fe=Fe_fun(MaterialName,Fe0,uk,qk,qk0,phik,Phik,Fibers,Dvec,ElementName,ElementDofs,PosDofs,Gint,Nint,detF0); 
               
                 Feh_all = zeros(ElementDofs, ElementDofs);

                 H = diag( max( [sqrtEps * abs(uk(:))'; sqrtEps * abs(qk(:))'; h1 * ones(1, ElementDofs)] ) );

                 for jj = 1:ElementDofs
                     ukh = uk - H(:,jj);
                     qkh = qk - H(:,jj);
                     Feh_all(:,jj) = Fe_fun(MaterialName,Fe0,ukh,qkh,qk0,phik,Phik,Fibers,Dvec,ElementName,ElementDofs,PosDofs,Gint,Nint,detF0);
                 end

                 K_loc = (Fe - Feh_all) ./ diag(H)';

           case "AceGen"
                DIM = Body.DIM;
                DofsAtNode = Body.DofsAtNode;
                qk0f=Body.q0f(xloc(k,:));
                % Reshaping to adjust for AceGen
                qk0f_DIM = reshape(qk0f, [DIM, DofsAtNode])';
                qk0_DIM = reshape(qk0, [DIM, DofsAtNode])';
                uk_DIM = reshape(uk, [DIM, DofsAtNode])';
                % Construct the function name
                function_name = 'ANCF'+ElementName+MaterialName;
                [~,~,~,~,K_loc,Fe,~,~] = feval(function_name,qk0f_DIM,qk0_DIM,uk_DIM,Dvec,K_loc,Fe0,Gint',Nint);
                % K_loc = K_loc;
                Fe = - Fe; % taking into account the difference between AceGen and Fe_fun          
    end           
