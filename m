Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 314C43AE045
	for <lists+linux-man@lfdr.de>; Sun, 20 Jun 2021 22:28:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229897AbhFTUa6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 20 Jun 2021 16:30:58 -0400
Received: from mout.gmx.net ([212.227.17.21]:48301 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229632AbhFTUa4 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sun, 20 Jun 2021 16:30:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1624220922;
        bh=neBf7sOm0CL+iZoLzl0OQIMdHKumSHQU3Yklf5Ue8IA=;
        h=X-UI-Sender-Class:Date:From:To:Subject;
        b=dXy7IH8i/Smi0T1PVpbeAafAaNzMKdP+HDsVOAt3/4lUV570yLnBDCxjj504ZdVPM
         weXN8q27mZFnIoi0refxpjiplFWZ+1FGNgBLJcE9O3kHRK8nnOvxRq+d6/rMQQnUPz
         8pSM0qPksPt/FmwUwCD4v3NU3fBtQk/ZqzdAVGmM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from linux-ff1t ([109.42.0.226]) by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MTiTt-1lijIN1mZx-00U1XC for
 <linux-man@vger.kernel.org>; Sun, 20 Jun 2021 22:28:42 +0200
Date:   Sun, 20 Jun 2021 22:28:41 +0200
From:   Radisson97@gmx.de
To:     linux-man@vger.kernel.org
Subject: new:mbrtoc32.3: convert from to c32
Message-ID: <60cfa4f9.oQaEtQkckFQJoYb7%Radisson97@gmx.de>
User-Agent: Heirloom mailx 12.5 7/5/10
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:tRjVk8TOjmbqiIkXTTssmqz+xp91efLmVtsPWKJDbgcnKPDaqFA
 xT+LHAF72l1gian/sngObe5KbZSM5X6XoqfM+mSjhoqfOkuLAqmtFp/zTpFMr1W/hj/Emop
 EmNDnNdFiIdeb9GX9Rpg4PDptDebUFjFBWh4hP2zR1uX38mGl8c7qe7+O/f891NN2m2z9MN
 rxJboI4+yLfEqsSWdLKAg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:w4Bp4mejE+I=:wkKB/5Ab8+GjhgHoJO5Z+6
 tYLMKJ6tGbGc84DszS0qoz5XJAIiV1rizMIReTedhp+J3Il6QOG4CxXfRNDlZQE6+8PStqBM9
 D4PRJ4p6iGrsoByjZe53NmRp2qGihA+dIFv87qDS7+fZ6u6PZ+rGluX84VKKYGRWUrig+slJr
 wuUEvsS38vxKltU7WC5mcyf0M4+dP3dsjAq+waXA++n3nuLvC5Cw64VL6JI94zyFOMII8+T8t
 UxOpFjald60r0YtfiObjBlT4Uxr9sdwqF+m1Vkiok9vcAjhgwav1sMzE0ixRgcNnA9+5lwets
 RRPZf1KoYcpUM/Dezqd9rPoDMWWIfaGnEoM6quRGyR2IJVDifOA5e0G7iJYYQySH+n79fINSV
 xdDS7Uy+voYR1gfmrAL4iD+QZc1DhbWzRMZwzbSy470/B7K0EP4zXnFiFb0kgkGN/hSTVTI3Z
 cvobT1zVhS1IhRKg08/XACzJsXR/q4j47rf3wKGCQDTjar4GHFwKp3cqyQEOHAIE3bdf+yicT
 ADJLUKILbEjNlpJYlq7FMQQ4OpN8BJ6u56VM8CHvR00+7CfFOw0H+tVZNJNQlgSEOXzcIXrWC
 bo0QynJT+OyMa5w6MwUMRuD0M0bvnZr+JSYOWRsLgyKEwfQXWQk+olZICOWFHeJZR/OLXtvAd
 L/QobG0rD8CZvQ0iUdtZb3nuKBAZm2oh6u3Cy1BzuDIMqENBTi/aBZkJUuTrUVyH90igPjvD+
 yrgi5upafheNse8LDxvWj/wGnqk6szhYjAvyus8x1ktEQpHEebokxtcPAXUs9l9naMU2pM7Hb
 LUNauGnTZB/XgpmdGtxaJ0Ur0VKthZZ500l5xjEr4iui+FHCL8qkPUKb7Hv1Vmo+6XehqYDlu
 /CmbaecRa8u4gLzXnLuQN6RWk9AFsOQb+fgUdu6yTJMH1L1WOAiwuPXDZ9COJUwXcU9FMSZ82
 aerJZEkuz0QrkGm5NrjO35CVYlOsZ3WywJMUPZVEuWebz3AHpxZoPa+SgeHTgYIT0zt6S9fc/
 NQ2kwVT9izdMGi/STCia0F5LRwbrV4SUKAZlwGT8kblxNijE7O92jhtMk6BUF3KJ/gTbYeZcR
 kPTyssm+vxMrXkBV+WICo/Mk7t5yTVhbh5a
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

