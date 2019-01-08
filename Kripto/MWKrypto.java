/*     */ package at.alphagate.mwapp.main;
/*     */ 
/*     */ import at.alphagate.ag.AgException;
/*     */ import at.alphagate.ag.AgIItem;
/*     */ import at.alphagate.ag.AgItemManager;
/*     */ import java.io.PrintStream;
/*     */ import java.math.BigInteger;
/*     */ import java.util.Date;
/*     */ import java.util.Random;
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ public class MWKrypto
/*     */ {
/*     */   public static final int KEY_HINT = 1;
/*     */   public static final int KEY_TEMP = 2;
/*     */   private static final int SOME_DAYS = 432000000;
/*     */   private static final int SOME_DAYS_PER_YEAR = 73;
/*     */   public static final int MOD_BASE = 100000073;
/*     */   private static final int MOD_RANGE = 10000000;
/*  30 */   private static Random utilRandom = null;
/*     */   
/*  32 */   private static int[] codeATemp = null;
/*     */   
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */   private static void generateCodeATemp()
/*     */   {
/*  44 */     if (utilRandom == null)
/*     */     {
/*  46 */       utilRandom = new Random();
/*     */     }
/*     */     
/*  49 */     int ttt = 80;
/*  50 */     int off = 20;
/*  51 */     codeATemp = new int[4];
/*  52 */     codeATemp[0] = (off + utilRandom.nextInt(ttt));
/*  53 */     codeATemp[1] = (off + utilRandom.nextInt(ttt));
/*  54 */     codeATemp[2] = (off + utilRandom.nextInt(ttt));
/*  55 */     codeATemp[3] = (off + utilRandom.nextInt(ttt));
/*     */   }
/*     */   
/*     */   private static int getCodeATemp()
/*     */   {
/*  60 */     if (codeATemp == null)
/*     */     {
/*  62 */       generateCodeATemp();
/*     */     }
/*     */     
/*  65 */     int in = 0;
/*  66 */     in = codeATemp[0] + in * 100;
/*  67 */     in = codeATemp[1] + in * 100;
/*  68 */     in = codeATemp[2] + in * 100;
/*  69 */     in = codeATemp[3] + in * 100;
/*  70 */     return in;
/*     */   }
/*     */   
/*     */   private static int getCodeAHint()
/*     */   {
/*  75 */     if (utilRandom == null)
/*     */     {
/*  77 */       utilRandom = new Random();
/*     */     }
/*     */     
/*  80 */     int ttt = 80;
/*  81 */     int off = 20;
/*  82 */     int[] codeAHint = new int[4];
/*  83 */     codeAHint[0] = (off + utilRandom.nextInt(ttt));
/*  84 */     codeAHint[1] = (off + utilRandom.nextInt(ttt));
/*  85 */     codeAHint[2] = (off + utilRandom.nextInt(ttt));
/*  86 */     codeAHint[3] = (off + utilRandom.nextInt(ttt));
/*     */     
/*  88 */     int in = 0;
/*  89 */     in = codeAHint[0] + in * 100;
/*  90 */     in = codeAHint[1] + in * 100;
/*  91 */     in = codeAHint[2] + in * 100;
/*  92 */     in = codeAHint[3] + in * 100;
/*  93 */     return in;
/*     */   }
/*     */   
/*     */   private static int[] splitCodeTemp(int code)
/*     */   {
/*  98 */     int[] codeTemp = new int[4];
/*  99 */     codeTemp[3] = (code % 100);
/* 100 */     code /= 100;
/* 101 */     codeTemp[2] = (code % 100);
/* 102 */     code /= 100;
/* 103 */     codeTemp[1] = (code % 100);
/* 104 */     code /= 100;
/* 105 */     codeTemp[0] = (code % 100);
/* 106 */     return codeTemp;
/*     */   }
/*     */   
/*     */   private static boolean checkCodeBTemp(int code)
/*     */   {
/* 111 */     if (codeATemp == null)
/*     */     {
/* 113 */       generateCodeATemp();
/*     */     }
/*     */     
/* 116 */     int[] codeBTemp = splitCodeTemp(code);
/*     */     
/* 118 */     if (codeBTemp[0] != codeATemp[0] % 11 * 4)
/*     */     {
/* 120 */       return false;
/*     */     }
/* 122 */     if (codeBTemp[1] != codeATemp[1] % 13 * 3)
/*     */     {
/* 124 */       return false;
/*     */     }
/* 126 */     if (codeBTemp[2] != codeATemp[2] % 17 * 2)
/*     */     {
/* 128 */       return false;
/*     */     }
/* 130 */     if (codeBTemp[3] != codeATemp[3] % 19 * 1)
/*     */     {
/* 132 */       return false;
/*     */     }
/* 134 */     return true;
/*     */   }
/*     */   
/*     */   private static boolean checkCodeBHint(int codeH, int code)
/*     */   {
/* 139 */     int[] codeAHint = splitCodeTemp(codeH);
/* 140 */     int[] codeBHint = splitCodeTemp(code);
/*     */     
/* 142 */     if (codeBHint[0] != codeAHint[0] % 11 * 4)
/*     */     {
/* 144 */       return false;
/*     */     }
/* 146 */     if (codeBHint[1] != codeAHint[1] % 13 * 3)
/*     */     {
/* 148 */       return false;
/*     */     }
/* 150 */     if (codeBHint[2] != codeAHint[2] % 17 * 2)
/*     */     {
/* 152 */       return false;
/*     */     }
/* 154 */     if (codeBHint[3] != codeAHint[3] % 19 * 1)
/*     */     {
/* 156 */       return false;
/*     */     }
/* 158 */     return true;
/*     */   }
/*     */   
/*     */   public static int tempInv(int code)
/*     */   {
/* 163 */     int[] a = splitCodeTemp(code);
/* 164 */     int[] b = new int[4];
/*     */     
/* 166 */     b[0] = (a[0] % 11 * 4);
/* 167 */     b[1] = (a[1] % 13 * 3);
/* 168 */     b[2] = (a[2] % 17 * 2);
/* 169 */     b[3] = (a[3] % 19 * 1);
/*     */     
/* 171 */     int in = 0;
/* 172 */     in = b[0] + in * 100;
/* 173 */     in = b[1] + in * 100;
/* 174 */     in = b[2] + in * 100;
/* 175 */     in = b[3] + in * 100;
/* 176 */     return in;
/*     */   }
/*     */   
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */   public static long mod_inv(long x, long m)
/*     */   {
/* 188 */     long org_m = m;
/* 189 */     long u = 0L;
/* 190 */     long v = 1L;
/*     */     
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/* 206 */     while (x > 1L)
/*     */     {
/* 208 */       u = v * (m / x) + u;
/* 209 */       m %= x;
/*     */       
/* 211 */       if (m > 1L)
/*     */       {
/* 213 */         v = u * (x / m) + v;
/* 214 */         x %= m;
/*     */       }
/*     */       else
/*     */       {
/* 218 */         return org_m - u;
/*     */       }
/*     */     }
/* 221 */     return v;
/*     */   }
/*     */   
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */   public static long mod_mul(long x, long y, long m)
/*     */   {
/* 234 */     return x * y % m;
/*     */   }
/*     */   
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */   static boolean isValidBase(long m)
/*     */   {
/* 245 */     BigInteger bi = BigInteger.valueOf(m);
/*     */     
/* 247 */     return bi.isProbablePrime(10);
/*     */   }
/*     */   
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */   public static boolean isValidNum(long num, long m)
/*     */   {
/* 259 */     return (num > 1L) && (num < m - 1L);
/*     */   }
/*     */   
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */   public static void main(String[] args) {}
/*     */   
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */   public static int getCodeA(int keytype)
/*     */   {
/* 304 */     if (keytype == 2)
/*     */     {
/* 306 */       return getCodeATemp();
/*     */     }
/*     */     
/*     */ 
/* 310 */     int codA = 0;
/*     */     try
/*     */     {
/* 313 */       codA = AgItemManager.getInstance().getItem("i_service_codeA").getInteger();
/*     */     }
/*     */     catch (AgException agex)
/*     */     {
/* 317 */       System.out.println("service-code?");
/*     */     }
/* 319 */     codA += 2;
/* 320 */     return codA;
/*     */   }
/*     */   
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */   public static int generateCodeA(int keytype)
/*     */   {
/* 330 */     if (keytype == 2)
/*     */     {
/* 332 */       return getCodeATemp();
/*     */     }
/*     */     
/*     */ 
/* 336 */     if (utilRandom == null)
/*     */     {
/* 338 */       utilRandom = new Random();
/*     */     }
/*     */     
/* 341 */     int codA = getCodeAHint();
/*     */     try
/*     */     {
/* 344 */       AgItemManager.getInstance().getItem("i_service_codeA").setInteger(codA);
/*     */     }
/*     */     catch (AgException agex)
/*     */     {
/* 348 */       System.out.println("service-code!");
/*     */     }
/*     */     
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/* 355 */     return codA;
/*     */   }
/*     */   
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */   public static boolean verifyCodeB(int keytype, int codeB)
/*     */   {
/* 365 */     if (keytype == 2)
/*     */     {
/* 367 */       return checkCodeBTemp(codeB);
/*     */     }
/*     */     
/*     */ 
/* 371 */     int codA = getCodeA(1);
/*     */     
/* 373 */     return checkCodeBHint(codA - 2, codeB);
/*     */   }
/*     */   
/*     */ 
/*     */ 
/*     */   public static boolean isWartungFaellig()
/*     */   {
/* 380 */     int laTime = 0;
/*     */     try
/*     */     {
/* 383 */       laTime = AgItemManager.getInstance().getItem("i_wartung_lastdate").getInteger();
/*     */     }
/*     */     catch (AgException agex)
/*     */     {
/* 387 */       System.out.println("last-time?");
/*     */     }
/*     */     
/* 390 */     int codA = getCodeA(1);
/*     */     
/*     */ 
/* 393 */     if ((int)mod_mul(laTime, codA, 100000073L) != 1)
/*     */     {
/* 395 */       return true;
/*     */     }
/*     */     
/*     */ 
/* 399 */     long time = System.currentTimeMillis();
/* 400 */     int now = (int)(time / 432000000L);
/*     */     
/* 402 */     if (now > laTime + 73)
/*     */     {
/*     */       try
/*     */       {
/* 406 */         AgItemManager.getInstance().getItem("i_wartung_lastdate").setInteger(now);
/*     */       }
/*     */       catch (AgException agex)
/*     */       {
/* 410 */         System.out.println("last-time!");
/*     */       }
/*     */       
/* 413 */       generateCodeA(1);
/*     */       
/* 415 */       return true;
/*     */     }
/*     */     
/* 418 */     return false;
/*     */   }
/*     */   
/*     */   public static Date getFaelligDate()
/*     */   {
/* 423 */     int laTime = 0;
/*     */     try
/*     */     {
/* 426 */       laTime = AgItemManager.getInstance().getItem("i_wartung_lastdate").getInteger();
/*     */     }
/*     */     catch (AgException agex)
/*     */     {
/* 430 */       System.out.println("last-time?");
/*     */     }
/*     */     
/* 433 */     long time = laTime * 432000000L;
/* 434 */     return new Date(time);
/*     */   }
/*     */   
/*     */   public static void setWartungDone()
/*     */   {
/* 439 */     int laTime = 0;
/*     */     try
/*     */     {
/* 442 */       laTime = AgItemManager.getInstance().getItem("i_wartung_lastdate").getInteger();
/*     */     }
/*     */     catch (AgException agex)
/*     */     {
/* 446 */       System.out.println("last-time?");
/*     */     }
/*     */     
/*     */ 
/*     */ 
/* 451 */     long time = System.currentTimeMillis();
/*     */     
/* 453 */     int now = (int)(time / 432000000L);
/*     */     
/*     */     try
/*     */     {
/* 457 */       AgItemManager.getInstance().getItem("i_wartung_lastdate").setInteger(now);
/*     */     }
/*     */     catch (AgException agex)
/*     */     {
/* 461 */       System.out.println("last-time!");
/*     */     }
/* 463 */     laTime = now;
/*     */     
/*     */ 
/* 466 */     int codA = (int)mod_inv(laTime, 100000073L);
/*     */     
/*     */     try
/*     */     {
/* 470 */       AgItemManager.getInstance().getItem("i_service_codeA").setInteger(codA - 2);
/*     */     }
/*     */     catch (AgException agex)
/*     */     {
/* 474 */       System.out.println("service-code!");
/*     */     }
/*     */   }
/*     */ }


/* Location:              F:\mwapp\mwapp.jar!\at\alphagate\mwapp\main\MWKrypto.class
 * Java compiler version: 4 (48.0)
 * JD-Core Version:       0.7.1
 */