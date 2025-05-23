function Body = Geometry(Body,CSName,ApproximationScheme)
    
        
    switch CSName
           case "Rectangular"
                Body.Length.X = 1; % Body length
                Body.Length.Y = 0.5;
                Body.Length.Z = 0.5;

           case "Oval"
                Body.Length.X = 2;   % Body length
                Body.Length.Y = 0.5; % Oval diameter in y-axis
                Body.Length.Z = 0.5; % Oval diameter in z-axis

           case {"C", "Tendon",...
                 "Middle_cross_section1_1", "Middle_cross_section2_1", "Middle_cross_section3_1"}
                ApproximationScheme = "Poigen";
                disp("For chosen area the approximation scheme switched to Poigen")
                
                if (CSName == "C") || (CSName == "Tendon")
                   Body.Length.X = 1;
                elseif (CSName == "Middle_cross_section1_1") || (CSName == "Middle_cross_section2_1") || (CSName == "Middle_cross_section3_1")   
                   Body.Length.X = 0.07;             
                end                
                
        otherwise

               filepath = fullfile("CrossSections", CSName + ".m"); 
               if exist(filepath, 'file') == 2
                  ApproximationScheme = "Poigen";
                  disp("For chosen area the approximation scheme switched to Poigen") 
                  Body.Length.X = 2;
               else
                  error('****** Cross-section is not recognized ******');
               end  
    end    
    
    addpath('GaussPoints');  
    Body = GausPointsApprox(Body,CSName,ApproximationScheme);

    
    

    
    