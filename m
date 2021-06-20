Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5A3EA3AE048
	for <lists+linux-man@lfdr.de>; Sun, 20 Jun 2021 22:30:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229897AbhFTUc4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 20 Jun 2021 16:32:56 -0400
Received: from mout.gmx.net ([212.227.17.22]:56259 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229632AbhFTUco (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sun, 20 Jun 2021 16:32:44 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1624221030;
        bh=Cuoy10LjkoN6Ks4aqB/TPQs0B35FCldFOQ/r2VNei/8=;
        h=X-UI-Sender-Class:Date:From:To:Cc:Subject;
        b=HJfm5UVjzrXwO3QRtgZhERXp/frOcJwDLJGTn4uKrhmfq21vd7u193kWolUU8nm0J
         yVAraHmSu5I/PLHTAk+6l+qs8xnlAXNa0gWRBdniloWQFemxo4XeiBoLKt2mzaDeHz
         I++yJVik6ByFMW6Fb8zdmiwLuwqKWNqyO/w+CuOw=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from linux-ff1t ([109.42.0.226]) by mail.gmx.net (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MzQkK-1l8cIn3ewy-00vQuK; Sun, 20
 Jun 2021 22:30:30 +0200
Date:   Sun, 20 Jun 2021 22:30:29 +0200
From:   Radisson97@gmx.de
To:     linux-man@vger.kernel.org
Cc:     alx.manpages@gmail.com
Subject: new:mbrtoc16.3: convert from to c16
Message-ID: <60cfa565.PHrUCVjVWr2e/3Ij%Radisson97@gmx.de>
User-Agent: Heirloom mailx 12.5 7/5/10
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:Yi6KyOnI6+YK6eSTv8bIrnZIM62Qr+xArVBsftCnoBQiFiw+6h9
 pWUiPvmo6Lpk3Uos5GMr8LNZQu6F1R39HEJWueImcgZNHI0kznBoNHSUTZOzuK3dbt8oSUA
 0jjQHxzf1jhprY1pDCk3SsAopw6ekQ92XGDlIgN19UOSIpKhpyzaxqbSubQXrlCiYSK6MmK
 gqbNvEtYYIL+Ryfj1U7KQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:s159oph6ef4=:RZvgdDB6ystSVj4UGq16uL
 r/ztl3c6kj9IejWpHeH2fsX85zKXoOQrbcNzSGkV1XCNoEC9+fpEcdszB8Qr72PDpV+JcIetA
 FRBzHmKoC4kKX1+JunNgVJjBPxfH7hcRiFxO8JIqZfwgLH428nQoULOxhhdYOAUxB5SqekkBz
 k5v+bJFvAEcVdzCyvbZtd5SZK/GvmwdQJgd2iLrmHjTwB+StN0/+4kc/JrWfQpZW51NmjdNSK
 xlj01tn790JCYNri1EZUTfb5qq2FGJP6Q2pP++rGpCk1rKCadm7BatMt7Jp4u1zbFg5CJvKwx
 tmd64xLd2i4RPU2jVI+pC/E8c2OstmRcZhHEUGXnLZSK4siYkTfOP6BP2r93zDsc8l0DYl7B1
 QQQJMGEF0VBh2kKcjvi4r5yH5lZ3QbVktLkh45yhOYJap5B7CsEYolajKAcC2YnY85NZbz8YY
 m9vGS03mOT2YEymZRQ7W8W9i+0Mp2VZbYzDhhc9hsmbPwxueUedOQq+irTSOs5/97pzkNLJ9C
 eWp1bjU3/pZs2084aAG447FCAkMo6OmdEly2sgnKvCUeGjIWspAI5aZ0OakEVnN1Bq/XhAorc
 4llD6PLc5QIiKrAjAM7AJwBtKUmqRQPkYtnQS68wqmXYUdkow7d5m9ZIotu/MfNWaOMGnFySX
 nSBvIBQGp6PtGjlTj97zTxeF85idaQFDcuivqj8i8QCPYvAVyMQDNHbGIG62HLVhUFDfUziNz
 opIssP+dgjdTdoui7q0daerbUHOdY3ISnVfhUOqhLwt7s/RGlKQ7JViTWtoXUk4tLdHH/kOgK
 sJ5Pu/1R3uToQ3k8OXIOLPO51DpE0iXdR5xeUQ3NzzJLTlqhgT1cjsexg/6IC+NXBa9Y+7PF7
 Uuq+tUFY/EYQWY36/cdWPZx3zC2++w1PiVEnNcxE7197qwF4SYapKI8A060dhanROylG7tuus
 /wTnc+jdrdM/Xk/zg3kMELcRWdY+azwU0EMqvs4ZesajYO8dH4QDsCP+LIOeJ8SsKUErepOLi
 8LrrRkkuwd7aHQ1tLXzXtkPtuz8jWLigNspoHY8Kr0qz9v/fpKfLqvVpMhBY0GmLFawTY98Ps
 +PY39EPPtbtkhPXDVme/lUFHeU/wdKmYHy1
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

=46rom 20fb95dcc1b1f85f0bc1afff39824729fea8297b Mon Sep 17 00:00:00 2001
From: Peter Radisson <--show-origin>
Date: Sun, 20 Jun 2021 22:14:59 +0200
Subject: [PATCH] convert between multibyte sequence and 16-bit wide charac=
ter

documentation including example
Signed-off-by: Peter Radisson <--show-origin>
=2D--
 man3/mbrtoc16.3 | 156 ++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 156 insertions(+)
 create mode 100644 man3/mbrtoc16.3

diff --git a/man3/mbrtoc16.3 b/man3/mbrtoc16.3
new file mode 100644
index 000000000..18cb48adc
=2D-- /dev/null
+++ b/man3/mbrtoc16.3
@@ -0,0 +1,156 @@
+.TH  MBRTOC16  3 "2021-06-02" Linux "Linux Programmer's Manual"
+.SH NAME
+mbrtoc16, c16rtomb \- convert between multibyte sequence and 16-bit wide =
character
+.SH SYNOPSIS
+.nf
+.B #include <uchar.h>
+.PP
+.BI "size_t t mbrtoc16 (char16_t * restrict "c16 " ,"
+.BI"                          const char *" restrict s " , size_t " n " ,=
"
+.BI "                         mbstate_t * restrict " p ");"
+.PP
+.BI "size_t c16rtomb (char * restrict " s ", char16_t  " c16 " ,"
+.BI "                     mbstate_t * restrict " p " );"
+.fi
+.SH DESCRIPTION
+The
+.BR mbrtoc16  ()
+function inspects at most
+.I n
+bytes of the UTF-8 multibyte string starting at
+.IR s .
+If a multibyte character is identified as valid the corresponding UCS-16
+16-bit wide character is stored in
+.IR c16 .
+If the multibyte character is the null wide character, it
+resets the shift state
+.I *p
+to the initial state and returns 0.
+If
+.I p
+is  NULL,  a  static anonymous state known only to the
+function is used instead.
+.PP
+The
+.BR c16rtomb ()
+function converts the 16-bit wide character stored in
+.I c16
+into a mutability sequence  into the memory
+.IR s .
+.SH "RETURN VALUES"
+The
+.BR mbrtoc16  ()
+function returns
+0 for the nul character.
+\-1 for invalid input,
+\-2 for a truncated input,
+\-3 for multibyte 16-bit wide character sequence (U+D800=E2=80=94U+DFFF) =
that is
+written to
+.IR *c16 .
+No bytes are processed from the input
+.PP
+Otherwise the number of bytes in the multibyte sequence is returned.
+.PP
+The
+.BR c16tombr  ()
+function returns \-1 on error otherwise the number of bytes used
+for the multibytes sequence.
+.SH EXAMPLE
+The input sequence is written as byte sequence to allow a proper
+display. Note that the input is UTF-8 and UTF-16 , it may not possible
+to convert every code.
+.EX
+.\"
+.\" //  https://en.cppreference.com/w/c/string/multibyte/mbrtoc16
+.\"
+.nf
+
+#include <stdio.h>
+#include <stdlib.h>
+#include <locale.h>
+#include <uchar.h>
+#include <wchar.h>
+
+void toc16( char *in,  int in_len, char16_t **outbuf, int *len)
+{
+    char *p_in , *end ;
+    char16_t *p_out,*out;
+    size_t rc;
+
+    out=3Dmalloc(in_len*sizeof(*out));
+    p_out =3D out;
+    p_in =3D in;
+    end =3D in + in_len;
+    while((rc =3D mbrtoc16(p_out, p_in, end - p_in, NULL)))
+    {
+        if(rc =3D=3D  -1)      // invalid input
+            break;
+        else if(rc =3D=3D (size_t)-2) // truncated input
+	  break;
+        else if(rc =3D=3D (size_t)-3) // UTF-16 high surrogate
+            p_out +=3D 1;
+        else {
+            p_in +=3D rc;
+            p_out +=3D 1;
+        };
+    }
+  *len=3Dp_out - out + 1;
+  *outbuf=3Dout;
+}
+
+void fromc16(char16_t *in, int in_len, char **outbuf, int *len)
+{
+  char *out,*p;
+  int i;
+   size_t rc;
+  p=3Dout=3Dmalloc(MB_CUR_MAX * in_len);
+  for(i=3D0;i<in_len;i++) {
+    rc=3Dc16rtomb(p, in[i], NULL);
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
+void dump_u16(char16_t *in, int len)
+{
+    int i;
+    printf("Processing %d UTF-16 code units: [ ", len);
+    for(i =3D 0; i < len; ++i) printf("0x%04x ", in[i]);
+    puts("]");
+
+}
+
+int main(void){
+  char in[] =3D "z\u00df\u6c34\U0001F34C";
+  char16_t *out;
+  int out_len,len;
+  char *p;
+  // make sure we have utf8
+  setlocale(LC_ALL, "de_DE.utf8");
+  dump_u8(in,sizeof in / sizeof *in);
+  toc16(in,sizeof in / sizeof *in,&out,&out_len);
+  dump_u16(out,out_len);
+  fromc16(out,out_len,&p,&len);
+  dump_u8(p,len);
+  return 0;
+}
+.fi
+.EE
+This is a simple example and not production ready.
+.SH NOTES
+UCS-16 is superseded by UCS-32.
+.SH "CONFORMING TO"
+C11
+.SH "SEE ALSO"
+.BR mbrtoc32 (),
+.BR c32tocmbr ()
=2D-
2.26.2

