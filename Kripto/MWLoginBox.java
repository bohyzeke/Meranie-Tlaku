/*     */ package at.alphagate.mwapp.dialogs;
/*     */ 
/*     */ import at.alphagate.afc.AfcInputPaneDialog;
/*     */ import at.alphagate.ag.AgException;
/*     */ import at.alphagate.ag.AgIItem;
/*     */ import at.alphagate.ag.AgItemManager;
/*     */ import at.alphagate.ap.nullproxy.NullItem;
/*     */ import at.alphagate.gui.swing.AtText;
/*     */ import at.alphagate.mwapp.base.MWProcessManager;
/*     */ import at.alphagate.mwapp.beans.MWBorder;
/*     */ import at.alphagate.mwapp.beans.MWButton;
/*     */ import at.alphagate.mwapp.beans.MWLabel;
/*     */ import at.alphagate.mwapp.beans.MWPanel;
/*     */ import at.alphagate.mwapp.beans.MWPasswordTextField;
/*     */ import at.alphagate.mwapp.data.MWDataManager;
/*     */ import at.alphagate.mwapp.data.MWDurableData;
/*     */ import at.alphagate.mwapp.main.MWAnwendung;
/*     */ import at.alphagate.mwapp.main.MWFrame;
/*     */ import at.alphagate.mwapp.main.MWKrypto;
/*     */ import java.awt.AWTEvent;
/*     */ import java.awt.Color;
/*     */ import java.awt.Component;
/*     */ import java.awt.Dimension;
/*     */ import java.awt.GridBagConstraints;
/*     */ import java.awt.GridBagLayout;
/*     */ import java.awt.Insets;
/*     */ import java.awt.Point;
/*     */ import java.awt.Rectangle;
/*     */ import java.awt.event.ActionEvent;
/*     */ import java.awt.event.MouseEvent;
/*     */ 
/*     */ public class MWLoginBox extends AfcInputPaneDialog implements java.awt.event.ActionListener
/*     */ {
/*  34 */   private GridBagLayout gridBagLayout1 = new GridBagLayout();
/*  35 */   private GridBagLayout gridBagLayout2 = new GridBagLayout();
/*     */   
/*  37 */   private MWLabel lblTitle = new MWLabel();
/*  38 */   private MWLabel lblmessage = new MWLabel();
/*     */   
/*  40 */   private MWButton mWButtonLogout = new MWButton(6, true);
/*  41 */   private MWButton mWButtonLevel1 = new MWButton(6, true);
/*  42 */   private MWButton mWButtonLevel2 = new MWButton(6, true);
/*  43 */   private MWButton mWButtonLevel3 = new MWButton(6, true);
/*  44 */   private MWButton mWButtonLevel4 = new MWButton(6, true);
/*  45 */   private MWButton mWButtonShutdown = new MWButton(6, true);
/*     */   
/*  47 */   private MWPasswordTextField txt_password = new MWPasswordTextField();
/*  48 */   private MWPanel jPanel1 = new MWPanel();
/*     */   
/*  50 */   private boolean serviceDialog = false;
/*  51 */   private boolean verifyOK = false;
/*  52 */   private boolean closeAfterVerify = false;
/*     */   
/*  54 */   NullItem ItemUserChange = null;
/*     */   
/*  56 */   private MWDurableData durabledata = MWDataManager.getInstance().getDurableData();
/*     */   
/*     */ 
/*     */ 
/*     */ 
/*     */   public MWLoginBox()
/*     */   {
/*     */     try
/*     */     {
/*  65 */       jbInit();
/*     */       
/*  67 */       this.lblTitle.setFontSize(3);
/*  68 */       this.lblmessage.setFontSize(8);
/*  69 */       this.mWButtonLogout.completeDisplay();
/*  70 */       this.mWButtonLevel1.completeDisplay();
/*  71 */       this.mWButtonLevel2.completeDisplay();
/*  72 */       this.mWButtonLevel3.completeDisplay();
/*  73 */       this.mWButtonLevel4.completeDisplay();
/*  74 */       this.mWButtonShutdown.completeDisplay();
/*     */       
/*  76 */       this.mWButtonLevel1.setText(AgItemManager.getInstance().getItem("txt_UserName1").getString());
/*  77 */       this.mWButtonLevel2.setText(AgItemManager.getInstance().getItem("txt_UserName2").getString());
/*  78 */       this.mWButtonLevel3.setText(AgItemManager.getInstance().getItem("txt_UserName3").getString());
/*  79 */       this.mWButtonLevel4.setText(AgItemManager.getInstance().getItem("txt_UserName4").getString());
/*     */       
/*  81 */       this.ItemUserChange = ((NullItem)AgItemManager.getInstance().getItem("i_changeUserLevel_null"));
/*     */       
/*  83 */       this.lblTitle.setText(AtText.load("Password: ", "Password: "));
/*  84 */       this.mWButtonLogout.setText(AtText.load("Logout", "Logout"));
/*  85 */       this.mWButtonShutdown.setText(AtText.load("Shutdown", "Shutdown"));
/*     */     }
/*     */     catch (AgException agex)
/*     */     {
/*  89 */       agex.printStackTrace();
/*     */     }
/*     */     catch (Exception ex)
/*     */     {
/*  93 */       ex.printStackTrace();
/*     */     }
/*     */   }
/*     */   
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */   void jbInit()
/*     */     throws Exception
/*     */   {
/* 104 */     setSize(new Dimension(360, 160));
/* 105 */     setLayout(this.gridBagLayout1);
/* 106 */     setOpaque(false);
/* 107 */     setMaximumSize(new Dimension(225, 306));
/* 108 */     setMinimumSize(new Dimension(225, 306));
/* 109 */     setPreferredSize(new Dimension(225, 306));
/*     */     
/* 111 */     MWBorder border = new MWBorder(MWProcessManager.getInstance().getBorderColor1(7), MWProcessManager.getInstance().getBorderColor2(7), MWProcessManager.getInstance().getBackgroundColor(7));
/*     */     
/*     */ 
/*     */ 
/* 115 */     setBorder(border);
/*     */     
/*     */ 
/* 118 */     this.lblTitle.setProcessType(7);
/* 119 */     this.lblmessage.setProcessType(7);
/* 120 */     this.lblTitle.setHorizontalAlignment(2);
/* 121 */     this.lblmessage.setHorizontalAlignment(2);
/* 122 */     this.lblmessage.setForeground(Color.red);
/*     */     
/* 124 */     this.jPanel1.setLayout(this.gridBagLayout2);
/* 125 */     this.jPanel1.setOpaque(false);
/* 126 */     add(this.lblTitle, new GridBagConstraints(1, 0, 2, 1, 0.4D, 0.2D, 10, 1, new Insets(5, 5, 0, 0), 0, 0));
/*     */     
/* 128 */     this.jPanel1.add(this.mWButtonLevel1, new GridBagConstraints(1, 2, 1, 1, 0.2D, 0.6D, 10, 1, new Insets(0, 5, 5, 0), 0, 0));
/*     */     
/* 130 */     this.jPanel1.add(this.mWButtonLevel4, new GridBagConstraints(4, 2, 1, 1, 0.2D, 0.0D, 10, 1, new Insets(0, 5, 5, 0), 0, 0));
/*     */     
/* 132 */     this.jPanel1.add(this.mWButtonLevel3, new GridBagConstraints(3, 2, 1, 1, 0.2D, 0.0D, 10, 1, new Insets(0, 5, 5, 0), 0, 0));
/*     */     
/* 134 */     this.jPanel1.add(this.mWButtonLevel2, new GridBagConstraints(2, 2, 1, 1, 0.2D, 0.0D, 10, 1, new Insets(0, 5, 5, 0), 0, 0));
/*     */     
/* 136 */     add(this.mWButtonLogout, new GridBagConstraints(5, 0, 1, 2, 0.2D, 0.0D, 10, 1, new Insets(5, 10, 20, 5), 0, 0));
/*     */     
/* 138 */     add(this.mWButtonShutdown, new GridBagConstraints(5, 2, 1, 1, 0.2D, 0.0D, 10, 1, new Insets(0, 10, 5, 5), 0, 0));
/*     */     
/* 140 */     add(this.txt_password, new GridBagConstraints(3, 0, 2, 1, 0.4D, 0.0D, 10, 1, new Insets(5, 0, 0, 0), 0, 0));
/*     */     
/* 142 */     add(this.lblmessage, new GridBagConstraints(1, 1, 4, 1, 0.8D, 0.2D, 10, 1, new Insets(0, 5, 0, 0), 0, 0));
/*     */     
/* 144 */     add(this.jPanel1, new GridBagConstraints(1, 2, 4, 1, 0.8D, 0.6D, 10, 1, new Insets(0, 0, 0, 0), 0, 0));
/*     */     
/*     */ 
/* 147 */     this.mWButtonLevel1.addActionListener(this);
/* 148 */     this.mWButtonLevel2.addActionListener(this);
/* 149 */     this.mWButtonLevel3.addActionListener(this);
/* 150 */     this.mWButtonLevel4.addActionListener(this);
/* 151 */     this.mWButtonLogout.addActionListener(this);
/* 152 */     this.mWButtonShutdown.addActionListener(this);
/*     */   }
/*     */   
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */   public void actionPerformed(ActionEvent ev)
/*     */   {
/*     */     try
/*     */     {
/* 164 */       if (ev.getSource() == this.mWButtonLevel1)
/*     */       {
/* 166 */         if (checkPassword(AgItemManager.getInstance().getItem("txt_UserPass1").getString()))
/*     */         {
/* 168 */           MWAnwendung.CURRENT_USER_LEVEL = 1;
/* 169 */           this.ItemUserChange.setBoolean(true);
/* 170 */           disposeInputPane();
/*     */         }
/*     */       }
/* 173 */       else if (ev.getSource() == this.mWButtonLevel2)
/*     */       {
/* 175 */         if (checkPassword(AgItemManager.getInstance().getItem("txt_UserPass2").getString()))
/*     */         {
/* 177 */           MWAnwendung.CURRENT_USER_LEVEL = 2;
/* 178 */           this.ItemUserChange.setBoolean(true);
/* 179 */           disposeInputPane();
/*     */         }
/*     */       }
/* 182 */       else if (ev.getSource() == this.mWButtonLevel3)
/*     */       {
/* 184 */         if (checkPassword(AgItemManager.getInstance().getItem("txt_UserPass3").getString()))
/*     */         {
/* 186 */           MWAnwendung.CURRENT_USER_LEVEL = 3;
/* 187 */           this.ItemUserChange.setBoolean(true);
/* 188 */           disposeInputPane();
/*     */         }
/*     */       }
/* 191 */       else if (ev.getSource() == this.mWButtonLevel4)
/*     */       {
/* 193 */         if (new String(this.txt_password.getPassword()).equals(" "))
/*     */         {
/* 195 */           showTempServiceKey();
/*     */         }
/* 197 */         else if (checkPassword(AgItemManager.getInstance().getItem("txt_UserPass4").getString()))
/*     */         {
/* 199 */           MWAnwendung.CURRENT_USER_LEVEL = 4;
/* 200 */           this.ItemUserChange.setBoolean(true);
/* 201 */           disposeInputPane();
/*     */         }
/*     */       }
/* 204 */       else if (ev.getSource() == this.mWButtonLogout)
/*     */       {
/* 206 */         MWAnwendung.CURRENT_USER_LEVEL = 0;
/* 207 */         this.ItemUserChange.setBoolean(true);
/* 208 */         disposeInputPane();
/*     */       }
/* 210 */       else if (ev.getSource() == this.mWButtonShutdown)
/*     */       {
/* 212 */         disposeInputPane();
/* 213 */         MWFrame.getInstance().exitApplication(0);
/*     */       }
/*     */     }
/*     */     catch (AgException ex)
/*     */     {
/* 218 */       ex.printStackTrace();
/*     */     }
/*     */   }
/*     */   
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */   private void showTempServiceKey()
/*     */   {
/* 228 */     final MWServiceBox box = new MWServiceBox();
/* 229 */     box.setTitleText(AtText.load("Temporärer Schlüssel", "MW_Wartung_TempSchluessel"));
/* 230 */     box.setMessageText1(AtText.load("<html><center>Code A wird von der Maschine kreiert<br>Code B kann dann von BeutlerNova angefordert werden</center></html>", "MW_Wartung_Erklaerung"));
/* 231 */     box.setMessageText2(AtText.load("Generierter Code A", "MW_Wartung_GenCodeA"));
/* 232 */     box.setMessageText3(AtText.load("Erhaltener Code B", "MW_Wartung_GenCodeB"));
/* 233 */     box.setButton1Text(AtText.load("Code A erzeugen", "MW_Wartung_CodeAerzeugen"));
/* 234 */     box.setButton2Text(AtText.load("Code B prüfen", "MW_Wartung_CodeBpruefen"));
/* 235 */     box.setButton3Text(AtText.load("Schliessen", "MW_Wartung_Schliessen"));
/*     */     
/* 237 */     box.showInDialog(false, new at.alphagate.afc.AfcInputPaneActionListener()
/*     */     {
/*     */       public void dialogOpened()
/*     */       {
/* 241 */         MWLoginBox.this.serviceDialog = true;
/*     */         
/* 243 */         if (box.getCodeA() == 0)
/*     */         {
/* 245 */           int codeA = MWKrypto.generateCodeA(2);
/* 246 */           box.setCodeA(codeA);
/*     */         }
/*     */       }
/*     */       
/*     */       public void buttonPressed(int index) {
/* 251 */         if (index == 0)
/*     */         {
/* 253 */           if (box.getCodeA() == 0)
/*     */           {
/* 255 */             int codeA = MWKrypto.generateCodeA(2);
/* 256 */             box.setCodeA(codeA);
/*     */           }
/*     */         }
/* 259 */         else if (index == 1)
/*     */         {
/* 261 */           int codeB = box.getCodeB();
/* 262 */           MWLoginBox.this.verifyOK = MWKrypto.verifyCodeB(2, codeB);
/* 263 */           box.setCodeBOK(MWLoginBox.this.verifyOK);
/*     */         }
/* 265 */         else if (index == 2)
/*     */         {
/* 267 */           int codeB = box.getCodeB();
/* 268 */           MWLoginBox.this.verifyOK = MWKrypto.verifyCodeB(2, codeB);
/* 269 */           box.setCodeBOK(MWLoginBox.this.verifyOK);
/*     */           
/* 271 */           if ((MWLoginBox.this.verifyOK) && (MWLoginBox.this.checkPassword(" ")))
/*     */           {
/* 273 */             MWAnwendung.CURRENT_USER_LEVEL = 4;
/* 274 */             MWLoginBox.this.ItemUserChange.setBoolean(true);
/* 275 */             MWLoginBox.this.closeAfterVerify = true;
/* 276 */             MWLoginBox.this.serviceDialog = false;
/* 277 */             MWFrame.getInstance().tempTimerSetup();
/*     */           }
/*     */         }
/*     */       }
/*     */       
/*     */       public void dialogClosed() {
/* 283 */         MWLoginBox.this.serviceDialog = false;
/* 284 */         if (MWLoginBox.this.closeAfterVerify)
/*     */         {
/* 286 */           MWLoginBox.this.closeAfterVerify = false;
/* 287 */           MWLoginBox.this.disposeInputPane();
/*     */         }
/*     */       }
/*     */     });
/*     */   }
/*     */   
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */   public void eventDispatched(AWTEvent ev)
/*     */   {
/* 301 */     MouseEvent mouseEv = (MouseEvent)ev;
/*     */     
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/* 307 */     if ((mouseEv.getID() == 501) && (isVisible()))
/*     */     {
/*     */ 
/* 310 */       Rectangle dialogRect = new Rectangle(getLocationOnScreen(), getSize());
/* 311 */       Component src = (Component)mouseEv.getSource();
/*     */       
/* 313 */       int x = src.getLocationOnScreen().x + mouseEv.getX();
/* 314 */       int y = src.getLocationOnScreen().y + mouseEv.getY();
/*     */       
/* 316 */       if ((!dialogRect.contains(x, y)) && (!this.txt_password.isKBOpen()))
/*     */       {
/* 318 */         if (!this.serviceDialog)
/*     */         {
/* 320 */           disposeInputPane();
/*     */         }
/*     */       }
/*     */     }
/*     */   }
/*     */   
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */   private boolean checkPassword(String pass)
/*     */   {
/* 335 */     if (new String(this.txt_password.getPassword()).equals(pass))
/*     */     {
/* 337 */       this.lblmessage.setText("");
/* 338 */       return true;
/*     */     }
/*     */     
/* 341 */     this.lblmessage.setText("Passwort falsch!");
/* 342 */     return false;
/*     */   }
/*     */   
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */   public void showInDialog()
/*     */   {
/* 351 */     setPopupModal(false);
/*     */     
/* 353 */     if (MWAnwendung.CURRENT_USER_LEVEL == 0)
/*     */     {
/* 355 */       this.lblmessage.setTextKey("Nicht eingeloggt", "No_User");
/*     */     }
/*     */     else
/*     */     {
/* 359 */       String str = AtText.load("Stufe", "Stufe_UserLevel");
/* 360 */       this.lblmessage.setText(str + ": " + Integer.toString(MWAnwendung.CURRENT_USER_LEVEL));
/*     */     }
/*     */     
/*     */ 
/* 364 */     showInputPaneCenter(MWFrame.getInstance(), getSize());
/*     */   }
/*     */   
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */   public void disposeInputPane()
/*     */   {
/* 374 */     if ((isInOpenCallback()) || (!javax.swing.SwingUtilities.isEventDispatchThread()))
/*     */     {
/* 376 */       finished();
/* 377 */       return;
/*     */     }
/*     */     
/* 380 */     if (!this.txt_password.isKBOpen())
/*     */     {
/* 382 */       super.disposeInputPane();
/*     */       
/* 384 */       MWFrame.getInstance().checkUserLevel();
/*     */     }
/*     */   }
/*     */ }


/* Location:              F:\mwapp\mwapp.jar!\at\alphagate\mwapp\dialogs\MWLoginBox.class
 * Java compiler version: 4 (48.0)
 * JD-Core Version:       0.7.1
 */