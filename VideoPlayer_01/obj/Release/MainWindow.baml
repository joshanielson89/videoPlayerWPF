   M S B A M L   `   `   `  ����   VideoPlayer_01    VideoPlayer_01.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml       � Title$$  Heavenly Mic Drop Video Player��$	��400��$	��600�� � Icon$ microphone.ico�� � 	Resources  !  SliderThumb.Static.Foreground �� Color $  SliderThumb.MouseOver.Background   SliderThumb.MouseOver.Border " SliderThumb.Pressed.Background  SliderThumb.Pressed.Border # SliderThumb.Disabled.Background  SliderThumb.Disabled.Border ! SliderThumb.Static.Background  SliderThumb.Static.Border 	 SliderThumbHorizontalTop �� 
TargetType � UseLayoutRounding F�Name �� Stretch J� SnapsToDevicePixels	 �� Triggers
 P� Property P� Value �� 
TargetName �� Value �� Property 
 SliderThumbHorizontalBottom  SliderThumb.Track.Border   SliderThumb.Track.Background  RepeatButtonTransparent �� 
TargetType   SliderThumbHorizontalDefault  SliderHorizontal ��Name � RowDefinitions m�Name m� Fill m� 	Placement ��Name ]�Name ]� DecreaseRepeatButton �� DecreaseLarge ]� IncreaseRepeatButton �� IncreaseLarge ]� Thumb n�Name � OverridesDefaultStyle  SliderThumbVerticalLeft  SliderThumbVerticalRight  SliderThumbVerticalDefault  SliderVertical � ColumnDefinitions  SliderStyle1 �� Triggers��%�  &	        &	      &	 *     &	 ?     &	 T     &	 i     &	 ~     &	 �     &	 �     &		 �     7  7  7  7  7  7  7  7  &	
 �    7  7  7  7  7  7  7  7  &	 �    &	 �    &	     &	 �    7  7  7  7  7  7  7  7  &	 �    7  7  7  7  7  7 	 7 
 &	 �    7  7  7  7  7  7  7  7  &	 �    7  7  7  7  7  7  7  7  &	 s    7  7  7  7  7  7  7  7  &	     7  7  7  7  7  7  7  &	 �    7   7  7  �� $ 	#FFE5E5E5���� $ 	#FFDCECFC���� $ 	#FF7Eb4EA���� $ 	#FFDAECFC���� $ 	#FF569DE5���� $ 	#FFF0F0F0���� $ 	#FFD9D9D9���� $ 	#FFF0F0F0���� $ 	#FFACACAC���� " n�.R�� $��Center=� . $��Center=�.+�F� $
 grip�������    ��[ �    ��[ `�S `�S �`�S     �ا ��[ �ا ��[ ��ا ��[ �ا ���ا ����ا �������    ����[ ��[ 	8��  $
 Fill=� . 8�� $��1�� . $��Center=�	 P� 
 �@J�IsMouseOver . . ��� $
 grip��8   � ���� $
 grip��8   � ��P� 
 �@n�
IsDragging . . ��� $
 grip��8   � ���� $
 grip��8   � ��P� 
 � {� .  . ��� $
 grip��8   � ���� $
 grip��8   � ���� " n�.R�� $��Center=� . $��Center=�.+�F� $
 grip�������     � �     � `�S ��`�S ���`�S ���ا  � �ا  � ��ا  � �ا �ا ��ا     �         �  � 	8��  $
 Fill=� . 8�� $��1�� . $��Center=�	 P� 
 �@J�IsMouseOver . . ��� $
 grip��8   � ���� $
 grip��8   � ��P� 
 �@n�
IsDragging . . ��� $
 grip��8   � ���� $
 grip��8   � ��P� 
 � {� .  . ��� $
 grip��8   � ���� $
 grip��8   � ���� $ 	#FFD6D6D6���� $ 	#FFE7EAEA���� " ��.���  �@�OverridesDefaultStyle . ��  � ��
 ���� ��  � |� .  ��  � �� .  ��  � �� �� " ��.R��� #��z��#��z��#��z���� " n�.R�� $��Center=� . $��Center=�.+�F� $
 grip��d����        �        �ا �ا ��ا     �ا ���ا ����ا �������    ��	8��  $
 Fill=� . 8�� $��1�� . $��Center=�	 P� 
 �@J�IsMouseOver . . ��� $
 grip��8   � ���� $
 grip��8   � ��P� 
 �@n�
IsDragging . . ��� $
 grip��8   � ���� $
 grip��8   � ��P� 
 � {� .  . ��� $
 grip��8   � ���� $
 grip��8   � ���� " ��.R��� $ border��#��z��#��z��#��z�� . ._��  �� $
��Auto ��� $
��Auto �#��z���� $
��Auto �.+�m� $ TopTick��# z��$��4��$��0,0,0,2q�$	 Top=�$��0��$y�	Collapsed=�m� $ 
BottomTick��# z��$��4��$��0,2,0,0q�$ Bottom=�$��2��$y�	Collapsed=��� $ TrackBackground��8��  $��1q�8�� $	��4.0��$	��5,0q�$��1��$��center=�._��� $��-6,-1q�.+��� $ PART_SelectionRange��#��� ��$	��4.0��$y�Hidden=�]� $ 
PART_Track��$��1�� �� #��Z 8��  �� #��Z 8��  n� $ Thumb��|�.  $��18�� . 8�� $��Center=�$��11��	 P� 
 �@��TickPlacement$ TopLeft=�. ��� $ TopTick�� � y�$ Visible=��� $ Thumb��8   � ���� $ TrackBackground�� � ��$ 5,2,5,0q�P� 
 �@��TickPlacement$ BottomRight=�. ��� $ 
BottomTick�� � y�$ Visible=��� $ Thumb��8   � ���� $ TrackBackground�� � ��$ 5,0,5,2q�P� 
 �@��TickPlacement$
 Both=�. ��� $ TopTick�� � y�$ Visible=��� $ 
BottomTick�� � y�$ Visible=�P� 
 �@��IsSelectionRangeEnabled . . ��� $ PART_SelectionRange�� � y�$ Visible=�P� 
 �@J�IsKeyboardFocused . . ��� $ Thumb�� � ��
 ��  ��� " n�.R�� $��Center=� . $��Center=�.+�F� $
 grip���������[ �ا Ӏ�[ �ا `�S `�S �    `�S ��[ ��[ Ӏ�[     ����Ӏ�    ���ا ���ا Ӏ��ا ��[ �ا ��[ �ا 	8��  $
 Fill=�8�� 	 P� 
 �@J�IsMouseOver . . ��� $
 grip��8   � ���� $
 grip��8   � ��P� 
 �@n�
IsDragging . . ��� $
 grip��8   � ���� $
 grip��8   � ��P� 
 � {� .  . ��� $
 grip��8   � ���� $
 grip��8   � ���� " n�.R�� $��Center=� . $��Center=�.+�F� $
 grip������� � �ا � � �ا ��`�S ��`�S Ӏ�`�S  �  � � �     �        �ا �ا �    �ا  � �ا  � �ا 	8��  $
 Fill=�8�� 	 P� 
 �@J�IsMouseOver . . ��� $
 grip��8   � ���� $
 grip��8   � ��P� 
 �@n�
IsDragging . . ��� $
 grip��8   � ���� $
 grip��8   � ��P� 
 � {� .  . ��� $
 grip��8   � ���� $
 grip��8   � ���� " n�.R�� $��Center=� . $��Center=�.+�F� $
 grip��+���� �  � ѠI � ѠI�y� � � �y� 	8��  $
 Fill=�8�� 	 P� 
 �@J�IsMouseOver . . ��� $
 grip��8   � ���� $
 grip��8   � ��P� 
 �@n�
IsDragging . . ��� $
 grip��8   � ���� $
 grip��8   � ��P� 
 � {� .  . ��� $
 grip��8   � ���� $
 grip��8   � ���� " ��.R��� $ border��#��z��#��z��#��z�� . ._��  �� $
��Auto ��� #��z��$
��Auto ��� $
��Auto �.+�m� $ TopTick��$��0��# z��$��0,0,2,0q�$
 Left=�$y�	Collapsed=�$��4��m� $ 
BottomTick��$��2��# z��$��2,0,0,0q�$ Right=�$y�	Collapsed=�$��4���� $ TrackBackground��8��  $��1q�8�� $��1��$��center=�$	��0,5q�$	��4.0��._��� $��-1,-6q�.+��� $ PART_SelectionRange��#��� ��$y�Hidden=�$	��4.0��]� $ 
PART_Track��$��1�� �� #��Z 8��  �� #��Z 8��  n� $ Thumb��|�.  $��11�� . 8�� $	��Top=�$��18��	 P� 
 �@��TickPlacement$ TopLeft=�. ��� $ TopTick�� � y�$ Visible=��� $ Thumb��8   � ���� $ TrackBackground�� � ��$ 2,5,0,5q�P� 
 �@��TickPlacement$ BottomRight=�. ��� $ 
BottomTick�� � y�$ Visible=��� $ Thumb��8   � ���� $ TrackBackground�� � ��$ 0,5,2,5q�P� 
 �@��TickPlacement$
 Both=�. ��� $ TopTick�� � y�$ Visible=��� $ 
BottomTick�� � y�$ Visible=�P� 
 �@��IsSelectionRangeEnabled . . ��� $ PART_SelectionRange�� � y�$ Visible=�P� 
 �@J�IsKeyboardFocused . . ��� $ Thumb�� � ��
 ��  ��� " ��.���  �@��IsPressAndHoldEnabled .  ��  � ��
 ���� ��  � ��
 ���� ��  � ��8   ��  � ��8   P� 
 �@��Orientation$ Vertical=�. ���  � ��8  .��� -   $��10q� �� $��* ��� $
��Auto ��� $
��Auto � �� $
��0.5* ��� $��* ��� $
��0.5* �.+�r� -   $��mePlayer��  r� LoadedBehavior$  Manual=�$��3��! r� ScrubbingEnabled! . �� $��1��$��3��$��0,5,0,0q�.+��� 
���  ��$	��2pxq����� .R��  �� $
��Auto ��� $��* ��� $
��Auto �.@��� .���� -   $��lblProgressStatus��
00:00:00�� $��1��$��Stretch=�.���� -   $��sliProgress��
���  ��$	��1pxq�#���  �� $��2��.���� -   $��lblProgressStatusEnd��
00:00:00�� $��2��$��0��$��Bottom=�.+��� .��Filter Options�� -   $��btnAddFilterStart��$��0,0,0,5q�.��Start�� -   $��btnViewFilters��.��View Filter Segments�� " �� Orientation$" Vertical=�$��Center=�$��Bottom=�$��2��$��1��.+��� -   $��	lblStatus��$��No File Selected��$��Center=�$��5q�� $��Center=�.+��� -	   $��btnOpenAudioFile��$	��5,0q�$	��5,0q�.��	Open file�� -
   $��btnStop��$	��5,0q�.��Stop�� -   $��btnPlay��$	��5,0q�$
��25,0q�.��Play� $��0,5,0,0q�.+��� -   $��btnSkipBack��$	��5,0q�$	��5,0q��� -   $��	btnRewind��$	��0,0q�$	��5,0q�.��Rewind�� -   $��btnFastForward��$	��5,0q�$	��5,0q�.��Fast Forward�� -   $��btnSkipForward��$	��5,0q�.��	Skip >>�� $��2��$��2��$��Center=�$��0,15,0,0q�$��Center=�.+�� -   # �Name$# pbVolume��
���   �$	��1pxq�
���  ��$	��100��$��24��$ � Maximum$$ 1Q�% � Value% �� *Volume+& �� ElementName$& mePlayer���� -   $��mediaStatus��$��Center=�$��Bottom=�$��0,10,0,0q�