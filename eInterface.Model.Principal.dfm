object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 243
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 96
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 96
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Memo1: TMemo
    Left = 320
    Top = 40
    Width = 185
    Height = 89
    TabOrder = 2
  end
  object Button1: TButton
    Left = 96
    Top = 160
    Width = 97
    Height = 25
    Caption = 'Atualiza Memo'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 368
    Top = 160
    Width = 97
    Height = 25
    Caption = 'Limpa Memo'
    TabOrder = 4
    OnClick = Button2Click
  end
  object ComboBox1: TComboBox
    Left = 96
    Top = 16
    Width = 145
    Height = 21
    TabOrder = 5
    OnChange = ComboBox1Change
    Items.Strings = (
      'F'#237'sica'
      'Jur'#237'dica')
  end
  object Button3: TButton
    Left = 96
    Top = 191
    Width = 121
    Height = 25
    Caption = 'Exemplo Get Fake'
    TabOrder = 6
    OnClick = Button3Click
  end
end
