   M S B A M L   `   `   `  ����B  >Project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:ProjectProject  5   	       Project.Login   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:Project     5   	     � Title$  Login��5   	   $	��400��6   $	��300��6$   $	��400��5	   	   $	��300��6   $	��400��6(   $	��300��68    � WindowStartupLocation$ CenterScreen=�5
   	   .��5      �� $	��300��6   $	��400��5      
������� �� CornerRadius$ 6��5       J� Effect 5   
   3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 15Q�6      	Direction$	 -90Q�6/      RenderingBias$ Quality=�6@      ShadowDepth$ 2Q�6Y      Color$
 Gray��6j   ._�5   
   �� 	 �� Orientation$	 Vertical=�6   $��20q�6,   .+�5      �� $��
Prijavi se��6   $��25(�6*   $��Center=�68   $	��Top=�6U   $
��Bold"�6m   
 �� Padding$
 10q�6   � 5      $��Center=�6    � RowDefinitions 5      �� 5      $��* �6$   �� 5      $��* �6$   �� 5      $��* �6$   �� 5      $��* �6$   .+�5      �� $��Korisničko ime��6   $��0��62   $
��0,15q�6?   $
��Left=�6M   �� 5      -   5         ��Name$ 
tbUsername��5   7   $��1��6   $��1��6*   $	��0,5q�6K   $	��255��6Y   $��0,0,0,1q�6e   $
��Left=�6   �� 5      $��Lozinka��6   $��2��6+   $
��0,15q�68   $
��Left=�6F   G� 5      -   5         G�Name$ 
tbPassword��5   9   $��3��6   $	��0,5q�6+   $	��255��6M   $��0,0,0,1q�6Y   $
��Left=�6s   5      �� 5       -   5         ��Name$ LoginBtn��5       $��
Prijavi se��6>   $
��0,25q�6S   $��35��6a      ButtonStyle#��[  6m   
 � Tag$	 250��6�   5!      5"      5#      