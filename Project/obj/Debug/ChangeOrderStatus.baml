   M S B A M L   `   `   `  ����B  >Project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:ProjectProject  5   	       Project.ChangeOrderStatus   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:Project     5   	     � Title$  ChangeOrderStatus��5   	   $	��200��6#   $	��300��60   $	��200��5	   	   $	��300��6   $	��200��6(   $	��300��68    � WindowStartupLocation$ CenterScreen=�5
   	   ���#708090.��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   .+�5   
   �� $��Odaberi novi status:��6   $��0��5      $��10q�5      $��15(�5      $
��Bold"�5      $��Center=�5      �� 5   
   -   5         ��Name$ cbStatus��5      $��1��5       �� SelectedIndex$ 0��5      $��10q�5      
���  ��$��Center=�5      $	��200��5      $��15(�5       $��Medium"�5!      .@�5"      �� $��	Primljeno��6   �� 5#      $��Spremno��6   �� 5$      $��Poslano��6   5%      �� 5&   
   -   5        $��Primeni��5&      $��2��5(      $��10q�5)         ButtonStyle#��[  5*      
 � Tag$	 250��66   5+      5,      