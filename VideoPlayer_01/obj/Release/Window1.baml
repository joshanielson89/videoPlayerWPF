   M S B A M L   `   `   `  ���� I  EVideoPlayer_01, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:VideoPlayer_01VideoPlayer_01      VideoPlayer_01.Window1   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     .localclr-namespace:VideoPlayer_01       � Icon$  dia3.ico�� � Title$ Filters��$	��600��$	��413��.���  � RowDefinitions �� $��* �.+���  �� Orientation$ Vertical=�$��0��.+��� $ 
Horizontal=�.+��� -   $��btnAddNewTime��$	��5,5q�$��5q�$	��100��$
��Left=�$��Center=�.��	Add Times�� -   $	��5,5q�$��5q�$��75��$
��Left=�$��Center=�.��Edit�� -   $��fTimes��$��1������  �� 
TargetType" ��.���  �� Property � �� �� Value$ Center=� �� View �� .P��� $��
Start Time�� �� Width$	 150��	 �� DisplayMemberBinding	 �� *Start+�� $��End Time��$	 150��	 �� *End+�� $
��Type��$	 100��	 �� *Reason+� -   
 �Name$
 InputBox��$y�	Collapsed=�.+�� 
���   � J� Opacity$	 0.5Q��� $	��250��
���  ��
���   �$��1q�$��Center=�$��Center=�._��� .+��� $��Center=�.��Format: HH:MM:SS�� $ 
Horizontal=�.+��� $��5q�$��Start Time:��$
��Bold"�$��Cambria)��� -   $��InputTextBox��$	��150��$��Center=�$��Center=��� $ 
Horizontal=�.+��� $��5,5,10,5q�$��	End Time:��$
��Bold"�$��Cambria)��� -   $��InputTextBox2��$	��150��$��Center=�$��Center=��� $ 
Horizontal=�$��Center=�.+��� -   $��
btnAddTime��$��5q�$	��Add����Z� �� -   $��	btnCancel��$��5q�$��Cancel����Z� 