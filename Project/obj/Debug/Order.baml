   M S B A M L   `   `   `  ����B  >Project, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:ProjectProject  5          Project.Order   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      'localclr-namespace:Project     5        N� Title$  Order��5	       N� 
Background
 ����� � DataContext 5
      ��  �� RelativeSource �� *Self+.��5      � $��10q�6    � ColumnDefinitions 5   
   �� 5      $��* �6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $
��Auto �6   .+�5   
   �� $��0��6   $��1��6"    �� Orientation$ Vertical=�62   .+�5      �� $��Kreiraj narudžbinu��6   $��25(�62   $��Center=�6@   $	��Top=�6]   $
��Bold"�5       �� Padding$ 10q�6   5      �� 5   
   $��1��6   $��1��6"   $ 
Horizontal=�62   .+�5      �� $��Odaberi proizvod:��6   $��Center=�61   $��	20,0,10,0q�6L   �� 5      -   5         ��Name$ comboBoxProizvodi��5      	 �� DisplayMemberPath$	 Naziv��62   $	��200��6L   �� 5       $��
Količina:��6   $��Center=�6)   $��	20,0,10,0q�6D   �� 5!      -   5        
 ��Name$
 textBoxKolicina��5!      $��50��6/   $��	10,0,10,0q�6:   $��20��6M   �� 5"      -   5        $��Dodaj proizvod��5"         ButtonStyle#��[  6.   
 � Tag$	 120��6S   6]   5#      �� 5$   
   -   5         ��Name$ listViewNarudzbine��5$   0   $��2��6   $��1��6    $
��0,10q�6L    �� View 5%      �� 5&      .P�5'      �� $��Kupac��6%    �� Width$	 100��6^    �� DisplayMemberBinding 64   �� *
imeKupca+6^   �� 5(      $��Proizvod ID��6%   $	 100��6f    6:   �� *
ProizvodID+6f   �� 5)      $��Ime proizvoda��6%   $	 150��6j    6<   �� *imeProizvoda+6j   �� 5*      $��	Količina��6%   $ 60��6a    67   �� *
Kolicina+6a   �� 5+      $
��Cena��6%   $	 100��6Y    63   �� *Cena+6Y   �� 5,      $��Ime prodavca��6%   $	 100��6h    6;   �� *imeProdavca+6h   5-      5/      �� 51   
   $��3��6   $��1��6"   $ 
Horizontal=�62   $��Right=�6K   $
��0,10q�6g   .+�52      �� -   5         ��Name$ btnPosaljiNarudz��52      $��Pošalji narudžbinu��6/   #��[  6L   $	 120��6q   6{   �� 53      -   5        $ btnOtkazNarudz��53      $��Otkaži narudžbinu��6-   #��[  6I   $	 120��6n   6x   54      55      56      