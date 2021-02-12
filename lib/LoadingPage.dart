\documentclass{article}
\usepackage{amsmath}
\usepackage{graphicx}
\usepackage[legalpaper, landscape, margin=1in]{geometry}


\begin{document}
	\tableofcontents
	\newpage
	\section{Problem}
	We have a system consisting of two cylinders.\\
	Each cylinder has a certain restoring force when displaced. This is represent by the spring embedded in the cylinders but the restoring force is not Hookean they have a weird potential given in the next section.\\
	The two cylinders are coupled by a Hookean spring whose potential energy is that of an ordinary spring.\\
	There is also damping in the system.\\
	
	\begin{figure}[!h]
		\includegraphics[scale=0.1]{Diag.png}
	\end{figure}

	\newpage
	\section{Energy Function}
	When $ z<L_m $
	\begin{equation}
		E_I = E_0 + \frac{Nkz^2}{2} - \frac{Nkz^3}{3L} - \frac{Nkd^3}{L}\arctan(\frac{z}{d}) - Nkd^2(\sec(\arctan(z/d)) -1)  +\frac{pNkd^2}{2L}(	L-z)+ \frac{c}{d^6} 
	\end{equation}

	When $ z>L_m $
	\begin{equation}
		E_{II} = E^{'}_0 - \frac{Nkz^3}{3L} + \frac{c}{d^6} + \frac{pNkd^2}{2}\frac{L-z}{L}
	\end{equation}
	`
	\[ 	\textrm{N is between 6 and 12 and takes on integer values.} \]
	\[ K = 0.3 \textrm{ to } 0.4 N/m \]
	\[ p \approx N^{-0.32} \]
	\[ Lm \approx 1.5 \AA \]
	\[L \approx 6 \AA \]
	\[ L_2 \approx 3 \textrm{ to } 6 \AA \]	
	\[ d \approx 3.4 \AA \]	
	
	\section{Oscillation for Small disturbances}
	Let the nanotubes be displaced by amounts $ z_1,z2 $ such that $ z_1,z_2<<L_m $. In this scenario the interaction energy id given by Equation 1.
	\[ T_1 = \frac{1}{2}m_1\dot{z_1}^2 \]
	\[ T_2 = \frac{1}{2}m_2\dot{z_2}^2 \]	 
	\[ U_1 = E_0 + \frac{Nkz_{1}^2}{2} - \frac{Nkz_1^3}{3L} - \frac{Nkd^3}{L}\arctan(\frac{z_1}{d}) - Nkd^2(\sec(\arctan(z/d)) -1) +\frac{pNkd^2}{2L}(L-z_1)+ \frac{c}{d^6} \]
	\[ U_2 = E_0 + \frac{Nkz_{2}^2}{2}   - \frac{Nkz_2^3}{3L} - \frac{Nkd^3}{L}\arctan(\frac{z_2}{d}) - Nkd^2(\sec(\arctan(z/d)) -1) +\frac{pNkd^2}{2L}(	L-z_2) + \frac{c}{d^6} \]
	\[ \textrm{Coupling Energy } = U_{12} = \frac{1}{2}k\Biggr(\sqrt{(z_2-z_1)^2 + L_{2}^2} - L_2 \Biggr)^2 \]
	The Lagrangian is given by,
	\[ \mathcal{L} = T_1 + T_2 - (U_1 + U_2 + U_{12})\]
	 
	\[
	 	\mathcal{L} = \frac{1}{2}m_1\dot{z_1}^2 +  \frac{1}{2}m_2\dot{z_2}^2 - \frac{1}{2}k\Biggr(\sqrt{(z_2-z_1)^2 + L_{2}^2} - L_2 \Biggr)^2 - 2E_0 - \frac{Nk}{2}(z_1^2 + z_2^2) + \frac{Nk}{3L}(z_1^3 + z_2^3)  \\+ \frac{Nkd^3}{L}(\arctan(\frac{z_{1}}{d}) + \arctan(\frac{z_{2}}{d})) +  Nkd^2(\sec(\arctan(z_1/d) + \sec(\arctan(z_2/d)) -2 )
	 	-\frac{pNkd^2}{2L}(2L-z_1-z_2) - \frac{2c}{d^6} 
	 \]
 	
 	\[ 
 	\frac{\partial \mathcal{L}}{\partial z_1} = -\frac{k( \sqrt{(z_2 -  z_1)^2 + L_2^2} - L_2 )(z_1 - z_2)}{\sqrt{(z_2 -z_1)^2 + L_2^2}} -Nkz_1 + \frac{Nkz_1^2}{L} - \frac{Nkd^4}{L}\frac{1}{d^2 + z_1^2} + \frac{Nkd^3}{d^2 + z_1^2}\frac{\sin(\arctan(z_1/d)-1))}{\cos^2(\arctan(z_1/d)-1))} + \frac{pNkd^2}{2L}
 	 \]
 	 
 	 \[ 
 	 \frac{\partial \mathcal{L}}{\partial z_2} = -\frac{k( \sqrt{(z_2 -  z_1)^2 + L_2^2} - L_2 )(z_2 - z_1)}{\sqrt{(z_2 -z_1)^2 + L_2^2}} -Nkz_2 + \frac{Nkz_2^2}{L} - \frac{Nkd^4}{L}\frac{1}{d^2 + z_2^2} + \frac{Nkd^3}{d^2 + z_2^2}\frac{\sin(\arctan(z_2/d)-1))}{\cos^2(\arctan(z_2/d)-1))} + \frac{pNkd^2}{2L}
 	 \]
 	 
 	 \[ 
 	  \frac{d}{dt}\frac{\partial \mathcal{L}}{\partial \dot{z_1}} = m_1\ddot{z_1}
 	  \]
	  \[ 
	  \frac{d}{dt}\frac{\partial \mathcal{L}}{\partial \dot{z_2}} = m_2\ddot{z_2}
	 \]
	 Now applying Euler-Lagrange Equations and taking damping as $ D = \frac{1}{2}\eta \dot{z}^2 $
	 \[ 
	  	\frac{d}{dt}\frac{\partial \mathcal{L}}{\partial \dot{z}} -  \frac{\partial \mathcal{L}}{\partial z_1} + \frac{\partial D}{\partial z } = 0
	 \]
	 
	 \begin{equation}
	 	m_1\ddot{z_1} + \eta\dot{z_1} = -\frac{k( \sqrt{(z_2 -  z_1)^2 + L_2^2} - L_2 )(z_1 - z_2)}{\sqrt{(z_2 -z_1)^2 + L_2^2}} -Nkz_1 + \frac{Nkz_1^2}{L} - \frac{Nkd^4}{L}\frac{1}{d^2 + z_1^2} + \frac{Nkd^3}{d^2 + z_1^2}\frac{\sin(\arctan(z_1/d)-1))}{\cos^2(\arctan(z_1/d)-1))} + \frac{pNkd^2}{2L}
	 \end{equation}
 	
 	\begin{equation}
 		m_2\ddot{z_2} + \eta\dot{z_2} = -\frac{k( \sqrt{(z_2 -  z_1)^2 + L_2^2} - L_2 )(z_2 - z_1)}{\sqrt{(z_2 -z_1)^2 + L_2^2}} -Nkz_1 + \frac{Nkz_2^2}{L} - \frac{Nkd^4}{L}\frac{1}{d^2 + z_2^2} + \frac{Nkd^3}{d^2 + z_2^2}\frac{\sin(\arctan(z_2/d)-1))}{\cos^2(\arctan(z_2/d)-1))} + \frac{pNkd^2}{2L}
 	\end{equation}
	 
	 

For stationary points putting $ \dot{z_1} = \dot{z_2} = \ddot{z_1} = \ddot{z_2} = 0 $.
We get,
\[ 
-\frac{k( \sqrt{(z_2 -  z_1)^2 + L_2^2} - L_2 )(z_1 - z_2)}{\sqrt{(z_2 -z_1)^2 + L_2^2}} -Nkz_1 + \frac{Nkz_1^2}{L} - \frac{Nkd^4}{L}\frac{1}{d^2 + z_1^2} + \frac{Nkd^3}{d^2 + z_1^2}\frac{\sin(\arctan(z_1/d)-1))}{\cos^2(\arctan(z_1/d)-1))} + \frac{pNkd^2}{2L} = 0
 \]
\[ -\frac{k( \sqrt{(z_2 -  z_1)^2 + L_2^2} - L_2 )(z_2 - z_1)}{\sqrt{(z_2 -z_1)^2 + L_2^2}} -Nkz_1 + \frac{Nkz_2^2}{L} - \frac{Nkd^4}{L}\frac{1}{d^2 + z_2^2} + \frac{Nkd^3}{d^2 + z_2^2}\frac{\sin(\arctan(z_2/d)-1))}{\cos^2(\arctan(z_2/d)-1))} + \frac{pNkd^2}{2L} = 0 \]

  
  \section{Larger Oscillations}
  Now the Potential energy due to the non Hookean spring will be different depending on where the displacements are of the respective masses. When their displacements are $ z<L_m $, the energy is given by $ E_I $ other wise given by $ E_II $. For sake of simplicity we can assume that during the oscillation of the block due to large initial displacements $ z_0>>L_m $, the time is spends in the region where $ z<L_m $ is negligible thus is neglected, but this assumption is not valid for long as after a while due to damping the oscillation amplitude will decrease and come into the range $ z<L_m $, thus this approximation holds when there is large initial displacement and the time under which system is evaluated is close to when oscillation began.
  
   Calculation as done previously,
   \[
   T_1 = \frac{1}{2}m_1\dot{z_1}^2
   \]
   \[ 
   T_2 = \frac{1}{2}m_2\dot{z_2}^2
   \]
   \[ 
   U_1 =  E^{'}_0 - \frac{Nkz_{1}^3}{3L} + \frac{c}{d^6} + \frac{pNkd^2}{2}\frac{L-z_{1}}{L}
   \]
   \[ 
   U_2 =  E^{'}_0 - \frac{Nkz_{2}^3}{3L} + \frac{c}{d^6} + \frac{pNkd^2}{2}\frac{L-z_{2}}{L}
   \]
   \[
   \textrm{Coupling Energy } = U_{12} = \frac{1}{2}k\Biggr(\sqrt{(z_2-z_1)^2 + L_{2}^2} - L_2 \Biggr)^2
   \]
   The Lagrangian is given by,
   \[ 
   \mathcal{L} = T_1 + T_2 - (U_1 + U_2 + U_{12})
   \]
  \[ 
  \mathcal{L} = \frac{1}{2}m_1\dot{z_1}^2 + \frac{1}{2}m_2\dot{z_2}^2 - \frac{1}{2}k\Biggr(\sqrt{(z_2-z_1)^2 + L_{2}^2} - L_2 \Biggr)^2 - 2E^{'}_0 +  \frac{Nk}{3L}(z_{1}^3 + z_{2}^3) -2\frac{c}{d^6} - \frac{pNkd^2}{2L}(2L - z_1 -z_2 )
  \]
  \[ 
  \frac{\partial \mathcal{L}}{\partial z_1} = -\frac{k( \sqrt{(z_2 -  z_1)^2 + L_2^2} - L_2 )(z_1 - z_2)}{\sqrt{(z_2 -z_1)^2 + L_2^2}} + \frac{Nk}{L}z_1^2 + \frac{pNkd^2}{2L}
  \]
  \[ 
  \frac{\partial \mathcal{L}}{\partial z_2} = -\frac{k( \sqrt{(z_2 -  z_1)^2 + L_2^2} - L_2 )(z_2 - z_1)}{\sqrt{(z_2 -z_1)^2 + L_2^2}}+ \frac{Nk}{L}z_2^2 + \frac{pNkd^2}{2L}
  \]
  \[ 
  \frac{d}{dt}\frac{\partial \mathcal{L}}{\partial \dot{z_1}} = m_1\ddot{z_1}
  \]
  \[ 
  \frac{d}{dt}\frac{\partial \mathcal{L}}{\partial \dot{z_2}} = m_2\ddot{z_2}
  \]
  
   Now applying Euler-Lagrange Equations and taking damping as $ D = \frac{1}{2}\eta \dot{z}^2 $
  \[ 
  \frac{d}{dt}\frac{\partial \mathcal{L}}{\partial \dot{z}} -  \frac{\partial \mathcal{L}}{\partial z_1} + \frac{\partial D}{\partial z } = 0
  \]
  
   \begin{equation}
  	m_1\ddot{z_1} + \eta\dot{z_1}  +\frac{k( \sqrt{(z_2 -  z_1)^2 + L_2^2} - L_2 )(z_1 - z_2)}{\sqrt{(z_2 -z_1)^2 + L_2^2}}  - \frac{Nk}{L}z_1^2 - \frac{pNkd^2}{2L} = 0
  \end{equation}
  
  \begin{equation}
  	m_2\ddot{z_2} + \eta\dot{z_2}  +\frac{k( \sqrt{(z_2 -  z_1)^2 + L_2^2} - L_2 )(z_2 - z_1)}{\sqrt{(z_2 -z_1)^2 + L_2^2}}  - \frac{Nk}{L}z_2^2 - \frac{pNkd^2}{2L} = 0
  \end{equation}

	For stationary points putting $ \dot{z_1} = \dot{z_2} = \ddot{z_1} = \ddot{z_2} = 0 $.
	We get,
	\[ 
	\frac{k( \sqrt{(z_2 -  z_1)^2 + L_2^2} - L_2 )(z_2 - z_1)}{\sqrt{(z_2 -z_1)^2 + L_2^2}}  - \frac{Nk}{L}z_1^2 - \frac{pNkd^2}{2L} = 0
	 \]
	 \[ 
	 \frac{k( \sqrt{(z_2 -  z_1)^2 + L_2^2} - L_2 )(z_2 - z_1)}{\sqrt{(z_2 -z_1)^2 + L_2^2}}  - \frac{Nk}{L}z_2^2 - \frac{pNkd^2}{2L} = 0
	  \]
	  
	  Adding both equations we get,
	  \[ 
	  \frac{Nk}{L}(z_1^2 + z_2^2) + \frac{pNkd^2}{L} =0
	   \]
	   \[ 
	   \implies z_1^2 + z_2^2 = -pd^2
	    \]
	    Thus no real solutions for $ z_1,z_2 $ can exist.
  
  	
\end{document}

