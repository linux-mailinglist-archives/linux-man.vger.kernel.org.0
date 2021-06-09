Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B92D83A1D23
	for <lists+linux-man@lfdr.de>; Wed,  9 Jun 2021 20:50:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230154AbhFISwE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Jun 2021 14:52:04 -0400
Received: from mout.gmx.net ([212.227.15.19]:34837 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229986AbhFISwD (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 9 Jun 2021 14:52:03 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1623264606;
        bh=+8QZynrx/fqOz1IbD3rpHx7Km33ItMdQ07SdfDTcIc0=;
        h=X-UI-Sender-Class:Date:From:To:Subject;
        b=F+HL0clFQYCwcbmnohNn7oPs/uSZPWv4eMqHeTTNzUl1K/shU3tCA2KwGR2S54GMU
         /TDLYp0h4bktrVsjbMrCY6h0CjGJez8HUi+uk5s+FLIlcDcrasjmI6pxP/xMbYYFuS
         jidWBZJGYOGaJNpuYAjWpUafkYhwa5N4AgIckH/o=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from linux-ff1t ([109.42.0.168]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1Mz9Yv-1l59eH1PMZ-00wBlN for
 <linux-man@vger.kernel.org>; Wed, 09 Jun 2021 20:50:06 +0200
Date:   Wed, 09 Jun 2021 20:50:05 +0200
From:   Radisson97@gmx.de
To:     linux-man@vger.kernel.org
Subject: Patch ilogb.3: add-llogb-llogbf-llogbl
Message-ID: <60c10d5d.F7AqAoqUv6P+VRqw%Radisson97@gmx.de>
User-Agent: Heirloom mailx 12.5 7/5/10
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:niDMVMzV0XgC+6f6/ys6lqau8yEKy9A5kLvo1yjdEEgy10jPnZO
 VbVH+keZMDyVZSEM0+TyHWln24xU0P1gJMX1KxZtliWg4U7nkxMP3M4PcDEoiA8v8KrjdgY
 H/w9nVgyilybbBOI0mbHHszXBatiOOSoILeGUUByo6cJYGwKAlMgAXHmov414uev8v3iVO0
 WKtDBkgSUxeH8e4gIFYug==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:YK05yOMEbww=:IpdUqgmpMwwAObOqlSeuXH
 dHnQuWKLCVy/TJq/ms0Wvb2A4+HPFFsT3c3qHboaXoTjT6/JgNWhL+ijnCWPUUQhBYoBH/BrI
 P4m9RsH5PQCKhz2RHwvnYnv12YKSY6fvsfrVB6DDEC71Aa6GwTFOvxiJBcf1j5MaFp4rSNsBM
 1M2YHbOB7Zn4tVHn0yi64ccVHLcOrcBdyzVToan6wO5zCVRkR3ivnro8zfom8o49ttNm8XLMx
 VPMceqiMmrPqV4i+O7LkeWSn2YmHGCDqhSPMIpIlzFbQkl+CrOm3EogA0+IwDzxbXF4W2lOXv
 sC7ee2U2F/CGU+ODeEDhqoVllISJTMZqY/dSGU5e5Z7xvLa+Pb3m4c29IvH01qBT1/ARL16X6
 C+tW/j7U1yVhMYRqqPnznnB8VPiH7EIkU/XAaKvcSN4Fntviaa0Kdt9AwiIubbs2q6Sl4RqUj
 60ISLNsb5KyU3hg18SRarrlh3HF4vW5xn8IfEdbir5LU7dM/5+soOSxZibxXehlRdtyZuHjvR
 Xoz4umc/Hl46EhNSMwGNui2xlwU6wxbDXk0s5pIye1pbZxpxMwq7Nc3ZSrmwjYA5BX3r9xocQ
 35YVMssCaOGs6LYjlRM6klTYdvKenDd5UN3tt8Gl4zSFhzWB0VZ7RRcEXJPEBhypqNf6MytvZ
 HjT3rF0RCYSoWqzzA0qo1+z5Uf50y0fJCPb0iEB1ZQx8+iVx8nSFCOfCn+fZyP8rp4sLUByj1
 H9o6sFH/KIt9e4zjkXVKLWcNnUKjTeRrI8tyH2P7dE9bxfM6FNjHaIiMkBc7BbOYZb24JYlE9
 6BP7oSwDm5MdQMJvhcsTUlC+SoJb0/QZCGnmsvoqoqgEqyep5bd5BIQ8eCOOSuZw+1ZSpXCdo
 5F+kJv5U8bYAbY7GIboXnbZded3gPE2QF+0iiCEHVFu7CZaUQ3AFiAAxA1i/dGhVi7l3WsGir
 WE0zBLS6++6YvTIKZA7ws4EHwiBvNbnlUDp6HbdHGQ0bPYAjO2kpmdzb4c3TRUEEGXCLwh7Uk
 iWY9I3BmcIC4omFyzg1gsMec1o18hkk6twUZzWKOvskG2BZuSWCMYxWm8EU/4hLqxxpK40t/v
 xZsAPJFWX8VCzgIIAlDJfq2ZCPJgrOupLoVZ9aUhmyf/5VlR7vIX2IhIg==
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


POSIX adds a version that returns long int
perhaps for float128

Signed-off-by: Radisson <Radisson97@gmx.de>
=2D--
 man3/ilogb.3 | 29 +++++++++++++++++++++++------
 1 file changed, 23 insertions(+), 6 deletions(-)

diff --git a/man3/ilogb.3 b/man3/ilogb.3
index a56416fba..339a31bed 100644
=2D-- a/man3/ilogb.3
+++ b/man3/ilogb.3
@@ -28,7 +28,8 @@
 .\"
 .TH ILOGB 3 2021-03-22 "" "Linux Programmer's Manual"
 .SH NAME
-ilogb, ilogbf, ilogbl \- get integer exponent of a floating-point value
+ilogb, ilogbf, ilogbl, llogb, llogbf, llogbl \- get integer exponent of a
+floating-point value
 .SH SYNOPSIS
 .nf
 .B #include <math.h>
@@ -36,6 +37,10 @@ ilogb, ilogbf, ilogbl \- get integer exponent of a floa=
ting-point value
 .BI "int ilogb(double " x );
 .BI "int ilogbf(float " x );
 .BI "int ilogbl(long double " x );
+.PP
+.BI "long int llogb(double " x );
+.BI "long int llogbf(float " x );
+.BI "long int llogbl(long double " x );
 .fi
 .PP
 Link with \fI\-lm\fP.
@@ -69,6 +74,11 @@ are equivalent to the corresponding
 .BR logb (3)
 functions, cast to
 .IR int .
+.PP
+The
+.B llogb (3)
+functions do the same, but cast to
+.IR "long int" .
 .SH RETURN VALUE
 On success, these functions return the exponent of
 .IR x ,
@@ -79,13 +89,14 @@ If
 is zero, then a domain error occurs, and the functions return
 .\" the POSIX.1 spec for logb() says logb() gives pole error for this
 .\" case, but for ilogb() it says domain error.
-.BR FP_ILOGB0 .
+.BR FP_ILOGB0 or
+.BR FP_LLOGB0 .
 .\" glibc: The numeric value is either `INT_MIN' or `-INT_MAX'.
 .PP
-If
 .I x
 is a NaN, then a domain error occurs, and the functions return
-.BR FP_ILOGBNAN .
+.BR FP_ILOGBNAN or
+.BR FP_LLOGBNAN .
 .\" glibc: The numeric value is either `INT_MIN' or `INT_MAX'.
 .\" On i386, FP_ILOGB0 and FP_ILOGBNAN have the same value.
 .PP
@@ -139,18 +150,24 @@ Interface	Attribute	Value
 T{
 .BR ilogb (),
 .BR ilogbf (),
-.BR ilogbl ()
+.BR ilogbl (),
+.BR llogb (),
+.BR llogbf (),
+.BR llogbl ()
 T}	Thread safety	MT-Safe
 .TE
 .hy
 .ad
 .sp 1
 .SH CONFORMING TO
+.IP ilogb 5
 C99, POSIX.1-2001, POSIX.1-2008.
+.IP llogb 5
+TS 18661-3:2015, available since glibc 2.25
 .SH BUGS
 .\" Bug raised: http://sources.redhat.com/bugzilla/show_bug.cgi?id=3D6794
 Before version 2.16, the following bugs existed in the
-glibc implementation of these functions:
+glibc implementation of the ilogb functions:
 .IP * 3
 The domain error case where
 .I x
=2D-
2.26.2

