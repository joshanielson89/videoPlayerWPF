   M S B A M L   `   `   `  ����I  EVideoPlayer_01, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:VideoPlayer_01VideoPlayer_01  5   	       VideoPlayer_01.Window1   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:VideoPlayer_01     5   	     � Icon$  dia3.ico��5       � Title$ Filters��5   	   $	��600��6   $	��413��6&   .��5	      �  � RowDefinitions 5
   
   �� 5      $��* �6   .+�5   
   ��  �� Orientation$ Vertical=�6   $��0��6,   .+�5      �� $ 
Horizontal=�6   .+�5      �� -   5        $��btnAddNewTime��5      $	��5,5q�6.   $��5q�6;   $	��100��6G   $
��Left=�6S   $��Center=�6n   .��6�   	Add Times6�   �� 5      -   5        $	��5,5q�5      $��5q�6&   $��75��62   $
��Left=�6=   $��Center=�6X   .��6�   Edit6�   5      �� 5      -   5        $��fTimes��5   $   $��1��6   ��5      �� 5       �� 
TargetType" ��6   .�5      ��  �� Property � �� �� Value$ Center=�6G   5       �� View 5      �� 5      .P�5      �� $��
Start Time��6P    �� Width$	 150��6d   	 �� DisplayMemberBinding	 6)   �� *Start+6r   �� 5      $��End Time��6N   $	 150��6`   	 6)   �� *End+6n   �� 5      $
��Type��6Q   $	 100��6_   	 6)   �� *Reason+6m   5      5      5       � 5$   
   -   5        
 �Name$
 InputBox��5$      $y�	Collapsed=�6!   .+�5%      � 
���   � J� Opacity$	 0.5Q�6&   �� 5&      $	��250��5'      
���  ��
���   �$��1q�5*      $��Center=�5+      $��Center=�5,      ._�5-      �� .+�5.      �� $��Center=�6   .��69   Format: HH:MM:SS6L   �� 5/      $ 
Horizontal=�6!   .+�50      �� $��5q�6$   $��Start Time:��6/   $
��Bold"�6B   $��Cambria)�6T   �� 51      -   5        $��InputTextBox��51   i   $	��150��6"   $��Center=�61   $��Center=�6N   6i   52      �� 53      $ 
Horizontal=�6!   .+�54      �� $��5,5,10,5q�6$   $��	End Time:��66   $
��Bold"�6G   $��Cambria)�6Y   �� 55      -   5        $��InputTextBox2��55   j   $	��150��6#   $��Center=�62   $��Center=�6O   6j   56      �� 57      $ 
Horizontal=�6!   $��Center=�6:   .+�58      �� -   5        $��
btnAddTime��58   !   $��5q�63   $	��Add��6>   ��6L   Z� 6b   �� 59      -   5        $��	btnCancel��59   !   $��5q�62   $��Cancel��6=   ��6N   Z� 6d   5:      5;      5<      5=      5>      5?      