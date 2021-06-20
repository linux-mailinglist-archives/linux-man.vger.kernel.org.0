Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7051C3AE046
	for <lists+linux-man@lfdr.de>; Sun, 20 Jun 2021 22:29:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229901AbhFTUbU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 20 Jun 2021 16:31:20 -0400
Received: from mout.gmx.net ([212.227.17.20]:42753 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229632AbhFTUbU (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sun, 20 Jun 2021 16:31:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1624220945;
        bh=neBf7sOm0CL+iZoLzl0OQIMdHKumSHQU3Yklf5Ue8IA=;
        h=X-UI-Sender-Class:Date:From:To:Cc:Subject;
        b=SuO83TWABvNT5EobQ16EEiAf9dhgbwqUUcFwHuEKdIvjuRsJH3nYhnqtS2zHhTSEC
         7xFlgkgha691lQ9Nqtdw2PV5hmvv8xPu9QqQ+HzILJhSy+frNHuMwKdmfTeg9q1+gG
         A7eExOvu2x2JEs1QHNZeLN/ep9Yd6rmOyN1j8POs=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from linux-ff1t ([109.42.0.226]) by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MOREc-1le6m722QQ-00Pw34; Sun, 20
 Jun 2021 22:29:05 +0200
Date:   Sun, 20 Jun 2021 22:29:04 +0200
From:   Radisson97@gmx.de
To:     linux-man@vger.kernel.org
Cc:     alx.manpages@gmail.com
Subject: new:mbrtoc32.3: convert from to c32
Message-ID: <60cfa510.GHWZSa6DNoE9MWRF%Radisson97@gmx.de>
User-Agent: Heirloom mailx 12.5 7/5/10
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:qiPyd6u5TlfXJqpwxM/TAGGTIVBMaFLchi+gRJZW1g20RtKExCQ
 nf8F6n4Ds03MzzkOLcyz+AjO0v0GbGGC/OnhLyC0gE3tno/lIrZF+8tXrqH7N7v8XfxDV8j
 nakBS7h2nLYb6HjtzpYLUMVkCbRIhGIzpPc+wGiljFr+snHWbKctkwsptzfvu2ASjyZb4y7
 eE1OzDFm4lUWU81QKf0Hw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:yZ11T5yVVY8=:j+bONIQGDfMAiBbfQFrcEa
 O3oYlewbQajJjc6B4cSC4KyeQLa9z4Ywscbg4lo4DeLy1mBJ4lp6M1uXIiwl+BjDpHowPHlJt
 ihJRN+LUw8lG7HXDIGiQbKmnL7w1iQjcOS/1x17YBR0+lh9Zpj/jQfZuPhx0xAEZR6s5vEkkg
 Uur+xMC+ZeMrFrOmlhYnj3p3Dov3SO+/am1HSEkqAqexswkmDzmcJ4SxS4UyDn3s1tHcC5k/e
 Ycf8r9serv9B496nLW62cJzZbhvXVAN9Iqps/NejZAJM/g3gwDh1VHU5zjXG68Xn7cTiYqIen
 xUcRMuvcPjcI9L2cRUUCctDuUKkwzGfVoXo+Rehp9lqbKJ/FdZDV45hfKskL6NitiMaAVZvja
 JIXG/ZuAFValCXPxd5xHiKx9MTsYLr5FMDRLHhsPJhkIKcHuFPNzCwGfawzyTbtxp6L7z4A6O
 0+ztzEX0XXzjHBRjftJDSX03LZBQsN/sKsr+fiuoa5qbKo31Eo+BWYBbULvcke9EI8h0VgUkn
 pLIh0nITYAReCcHdyY2B9HiVAI4XW+1giifad3N9rwvlaBO0CaODiD2uijj8e3MXFOVhQ7Pou
 Y4osvbCdXNiNB5AHLXO5xOBbOGcirn0i4kq+Yv/BrzMiDIa5ipmXRFZcGHTRboJ2ftdtI+YHu
 uWQaiztDKLe9o3yxqCDSR/IxRu5vOk8I3z7Ao6M+58DwGoziAYMnXkQtrkTXYV8P4flAZEJLr
 ZTc35YH+53w2DNBN/iOYOw4EcS7zviNdD7p+eKAzeGED+GkimpbAIxqWtkammI0KW0FSbjYCh
 Cyh9QYMSTV7MMSBTo5dP8dGrzEUhx9xaYRWEhN+LYFlHV/JzQtp/IKI+ISy+xAvrfjbQpgaHj
 YWhe35TAs5OX9rFw3/Yo+XSrClJSPR95y16EbLcTNF9PVEyoCv8vgOwSI3iTYtNAgaYJG/T4w
 AMBACTpyLvNRyagtQEpsoJU2tKFTiMnASkOhF8//Jp99VJ0DfzOUROOOs8cqCpwtHzdXmSYXu
 fgyxIFASAq90HC1/1s45INqRA1nPKWZUcs5PsSxIZSp0WNDUJNTKQa/HbbBaO8cNHLl7jvnwc
 r21HtQBEox8w19BxtFFxl0wMPAnhm9UCHEn
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

=46rom eb1ee6439f85b6a349c84488fa63dc7b795e43a0 Mon Sep 17 00:00:00 2001
From: Peter Radisson <--show-origin>
Date: Sun, 20 Jun 2021 22:21:55 +0200
Subject: [PATCH] convert between multibyte sequence and 32-bit wide charac=
ter

documentation including example

Signed-off-by: Peter Radisson <--show-origin>
=2D--
 man3/mbrtoc32.3 | 154 ++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 154 insertions(+)
 create mode 100644 man3/mbrtoc32.3

diff --git a/man3/mbrtoc32.3 b/man3/mbrtoc32.3
new file mode 100644
index 000000000..8d0c33de1
=2D-- /dev/null
+++ b/man3/mbrtoc32.3
@@ -0,0 +1,154 @@
+.TH  MBRTOC32  3 "2021-06-02" Linux "Linux Programmer's Manual"
+.SH NAME
+mbrtoc32, c32rtomb \- convert between multibyte sequence and 32-bit wide =
character
+.SH SYNOPSIS
+.nf
+.B #include <uchar.h>
+.PP
+.BI "size_t t mbrtoc32 (char32_t * restrict "c32 " ,"
+.BI"                          const char *" restrict s " , size_t " n " ,=
"
+.BI "                         mbstate_t * restrict " p ");"
+.PP
+.BI "size_t c32rtomb (char * restrict " s ", char32_t  " c32 " ,"
+.BI "                     mbstate_t * restrict " p " );"
+.fi
+.SH DESCRIPTION
+The
+.BR mbrtoc32  ()
+function inspects at most
+.I n
+bytes of the UTF-8 multibyte string starting at
+.IR s .
+If a multibyte is identified as valid the corresponding UCS-32
+32-bit wide character is stored in
+.IR c32 .
+If  the  multibyte  character is the null wide character, it
+resets the shift state
+.I *p
+to the initial state and returns 0.
+If
+.I p
+is  NULL,  a  static anonymous state known only to the
+function is used instead.
+.PP
+The
+.BR c32rtomb ()
+function converts the 32-bit wide character stored in
+.I c32
+into a mutability sequence  into the memory
+.IR s .
+.SH "RETURN VALUES"
+The
+.BR mbrtoc32  ()
+function returns
+0 for the nul character.
+\-1 for invalid input,
+\-2 for a truncated input,
+\-3 for multibyte 32-bit wide character sequence that is
+written to
+.IR *c32 .
+No bytes are processed from the input
+.PP
+Otherwise the number of bytes in the multibyte sequence is returned.
+.PP
+The
+.BR c32tombr  ()
+function returns \-1 on error otherwise the number of bytes used
+for the multibytes sequence.
+.SH EXAMPLE
+The input sequence is written as byte sequence to allow a proper
+display. Note that the input is UTF-8 and UTF-32 , it may not possible
+to convert every code.
+.EX
+.nf.
+
+#include <stdio.h>
+#include <stdlib.h>
+#include <locale.h>
+#include <uchar.h>
+#include <wchar.h>
+
+void toc32( char *in,  int in_len, char32_t **outbuf, int *len)
+{
+    char *p_in , *end ;
+    char32_t *p_out,*out;
+    size_t rc;
+
+    out=3Dmalloc(in_len*sizeof(*out));
+    p_out =3D out;
+    p_in =3D in;
+    end =3D in + in_len;
+    while((rc =3D mbrtoc32(p_out, p_in, end - p_in, NULL)))
+    {
+        if(rc =3D=3D  -1)      // invalid input
+            break;
+        else if(rc =3D=3D (size_t)-2) // truncated input
+	  break;
+        else if(rc =3D=3D (size_t)-3) // UTF-32 high surrogate
+            p_out +=3D 1;
+        else {
+            p_in +=3D rc;
+            p_out +=3D 1;
+        };
+    }
+    // out_sz =3D p_out - out + 1;
+  *len=3Dp_out - out + 1;
+  *outbuf=3Dout;
+}
+
+void fromc32(char32_t *in, int in_len, char **outbuf, int *len)
+{
+  char *out,*p;
+  int i;
+   size_t rc;
+  p=3Dout=3Dmalloc(MB_CUR_MAX * in_len);
+  for(i=3D0;i<in_len;i++) {
+    rc=3Dc32rtomb(p, in[i], NULL);
+    if(rc =3D=3D (size_t)-1) break;
+    p +=3D rc;
+    }
+  *outbuf=3Dout;
+  *len=3Dp-out+1;
+}
+
+void dump_u8(char *in, int len)
+{
+    int i;
+    printf("Processing %d UTF-8 code units: [ ", len);
+    for(i =3D 0; i <len ; ++i) printf("%#x ", (unsigned char)in[i]);
+    puts("]");
+}
+
+void dump_u32(char32_t *in, int len)
+{
+    int i;
+    printf("Processing %d UTF-32 code units: [ ", len);
+    for(i =3D 0; i < len; ++i) printf("0x%04x ", in[i]);
+    puts("]");
+
+}
+
+int main(void){
+  char in[] =3D "z\u00df\u6c34\U0001F34C";
+  char32_t *out;
+  int out_len,len;
+  char *p;
+  // make sure we have utf8
+  setlocale(LC_ALL, "de_DE.utf8");
+  dump_u8(in,sizeof in / sizeof *in);
+  toc32(in,sizeof in / sizeof *in,&out,&out_len);
+  dump_u32(out,out_len);
+  fromc32(out,out_len,&p,&len);
+  dump_u8(p,len);
+  return 0;
+}
+
+.fi
+.EE
+This is a simple example and not production ready.
+.SH "CONFORMING TO"
+C11
+.SH "SEE ALSO"
+.BR mbrtoc16 (),
+.BR c16tocmbr (),
+.BR mbsrtowcs ()
=2D-
2.26.2

