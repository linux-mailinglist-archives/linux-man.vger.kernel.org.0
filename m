Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 759D83A1D39
	for <lists+linux-man@lfdr.de>; Wed,  9 Jun 2021 20:53:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229504AbhFISzf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Jun 2021 14:55:35 -0400
Received: from mout.gmx.net ([212.227.15.18]:57351 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229499AbhFISzf (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 9 Jun 2021 14:55:35 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1623264819;
        bh=DOHGpUYAA3U9HkRspIIBGHoAtMhKuReEb1+jYLk7m7Y=;
        h=X-UI-Sender-Class:Date:From:To:Subject;
        b=CPjQjTAyC7I4JyG1FE/OcVMNKEhY5yevSJ2EFWYg7mP0iJmKU31mKsIzHW4PF6Wct
         7AkWVYdIGG7zCkQp7vBcnCgyD2olSbnF61bN4j2OgKA6pTDDs1wXlngkvD/QzwLY89
         suJbYM66FstTsT4hdOxhxZuHELG+yKfL91mVIGo8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from linux-ff1t ([109.42.0.168]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MYeMj-1ln2zh47Up-00Vi1x for
 <linux-man@vger.kernel.org>; Wed, 09 Jun 2021 20:53:39 +0200
Date:   Wed, 09 Jun 2021 20:53:38 +0200
From:   Radisson97@gmx.de
To:     linux-man@vger.kernel.org
Subject: Patch isgreater.3: add-iseqsig-and-example
Message-ID: <60c10e32.8/SMyZOE4Qqo6P6C%Radisson97@gmx.de>
User-Agent: Heirloom mailx 12.5 7/5/10
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:iW/wQCg8TWWs03Sj47ypWKNyWIO1KX/TdxM/Jn22642n/b2QAj/
 Uo8DPhiqn5GwY8KVQFWf8UAZR0117ShNbcV+GumNpeni4SbeqeBu1zlytBXZLTlH4z+07If
 L6xa6n6WuMa0JdJKobFs2CMpk5S8uZwOPOY7/jm7LDk7SBnTSiH/ZshfL9bVyi+K4LCetOP
 4rxjLyt0yyEWNUP+L5eMA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:bVrb6OdUmFs=:ZYMT0wb3QRtC/b4cs+k8BG
 weP48FVPGhmFLGRFtdqx/XzcbVjEFOdTm/pdErG0Gbo3FNtZLW+8MihWomAjoNoF/1bHY8P9G
 1EXV2183fAnzanVLWUMYqAXz6EoinNR9lv93CIjdTdBPfbR3O6TgxgRP0DEmFqho56l1ayFWi
 3UMTX12BGWQCobEY0wLzPBlZrJqiP40ANNIKlWT64Q3Zsdyp5RAmFqx2jXT6GKQhcdS75RNXj
 LFjxLab99Q0UJ/j8Jjm/LbziNekVO19+gTayfo4v44l4pfdYnahM+OxPIEdU/T9smIwwNzTBo
 ldAv0Kd/UTlEU/mwNq1Pu0I8PQEf2ImJkrKTBUXOi4zqzNAR51bFS03zJ7M42g1MhrzjomSwd
 jpNfDMCQHuRgRIEpt81kpNmzXth/MqE1lhsIlOmVDRwiGKJAS4GZY6ipF1eJn6EY6pATSwHaL
 djmqMZ3k2paFjp53TA0IlHvqOSQ0M8N9aMsixmqVdjzqy1mqCJQYBHEYhI03DSnIhE67GAfq9
 G+gXsmeWeDjrmAOQAi6Q4w2chjNki/7Ly25qlA1v/iP4SKtnPy60SptWxb81TYOLFTRm2qHtW
 +44xbWF7yKSYgZmAzJBHOIER2iwsQUdd6fRZxu79ZQkcjG+HpdDUqcWTX5lM5LIItSDPQC+dV
 ZB37HxrRFlx3LV7stJghdu76xFuKR31D6Ss8L+Uiy5rQLFSKoeeopV/vOPVYAGZbjw54KQgC7
 z0U8zyOIsZVxJ0IssnE5mGdqyJRIEWv6P4/t5S2MkHL/ulIHLgqpJCgRM34L2IvPpj2aQb4W9
 InDYb3OvvlngZvG8YCFK92zA5jAy7WTg1NreSNh7H3gaH8932dTn6Njz6QPh2pnOTdOVmnv0y
 sArcMteoteucPqIXxmZHOezuhQbjC1L/usYfMB7nkwzmou5ixwWQamdDRXRSoP1IIc4pR8hra
 9l/Dx+q0GU60vRz6qrgqKPoFUqedFlSdQA8QXMUpD4eSc8Z6JwLjbxSrYSrFdKzYTX6y2C6wY
 C1UOBwFr5m3L+fmSgrIWf+QUhzuuA/3I0crE4pdbb48iMit5BiAc2CCM/lzrBrLX/hfEPwPmm
 VThgmpSOBLVEuCk7gwlVTDuoDd+sVTu+8DnbCuGt2r3EwTky1H9Lr8Iyw==
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


some relationen for floating point values are implemented as macros
add missing iseqsig and try to motivate the rationale with an example

Signed-off-by: Radisson <Radisson97@gmx.de>
=2D--
 man3/isgreater.3 | 44 +++++++++++++++++++++++++++++++++++++++++---
 1 file changed, 41 insertions(+), 3 deletions(-)

diff --git a/man3/isgreater.3 b/man3/isgreater.3
index 7c1f2a7c5..10767c393 100644
=2D-- a/man3/isgreater.3
+++ b/man3/isgreater.3
@@ -9,8 +9,8 @@
 .\"
 .TH ISGREATER 3  2021-03-22 "" "Linux Programmer's Manual"
 .SH NAME
-isgreater, isgreaterequal, isless, islessequal, islessgreater,
-isunordered \- floating-point relational tests without exception for NaN
+isgreater, isgreaterequal, isless, islessequal, islessgreater, iseqsig,
+isunordered \- floating-point comparison functions
 .SH SYNOPSIS
 .nf
 .B #include <math.h>
@@ -20,6 +20,7 @@ isunordered \- floating-point relational tests without e=
xception for NaN
 .BI "int isless(" x ", " y );
 .BI "int islessequal(" x ", " y );
 .BI "int islessgreater(" x ", " y );
+.BI "int iseqsig(" x ", " y );
 .BI "int isunordered(" x ", " y );
 .fi
 .PP
@@ -97,6 +98,10 @@ is NaN.
 .BR isunordered ()
 determines whether its arguments are unordered, that is, whether
 at least one of the arguments is a NaN.
+.TP
+.BR iseqsig ()
+determines \fI(x)\ =3D=3D\ (y) \fP. It differs from the comparison by
+rasing an exeption if either argument is a NaN.
 .SH RETURN VALUE
 The macros other than
 .BR isunordered ()
@@ -109,6 +114,9 @@ returns 1 if
 or
 .I y
 is NaN and 0 otherwise.
+.PP
+.BR iseqsig ()
+sets errno to EDOM if either argument is a NaN.
 .SH ERRORS
 No errors occur.
 .SH ATTRIBUTES
@@ -127,12 +135,42 @@ T{
 .BR isless (),
 .BR islessequal (),
 .BR islessgreater (),
-.BR isunordered ()
+.BR isunordered (),
+.BR iseqsig ()
 T}	Thread safety	MT-Safe
 .TE
 .hy
 .ad
 .sp 1
+.SH EXAMPLE
+The example demonstates the difference between the equal operator
+and
+.BR iseqsig ().
+The return value is the same but errno is different.
+.EX
+.nf
+/*
+ * gcc -lm iseqsig.c -o  iseqsig
+*/
+#include <stdio.h>
+#include <math.h>
+#include <string.h>
+#include <errno.h>
+
+int main()
+{
+        double x=3D0.0/0.0;
+        double y=3D0.0;
+
+        printf("%d ",x=3D=3Dy);
+        puts(strerror(errno));
+        printf("%d ",iseqsig(x,y));
+        puts(strerror(errno));
+        return 0;
+}
+.fi
+.EE
+
 .SH CONFORMING TO
 POSIX.1-2001, POSIX.1-2008, C99.
 .SH NOTES
=2D-
2.26.2

