Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1A1B7381AEA
	for <lists+linux-man@lfdr.de>; Sat, 15 May 2021 22:05:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234740AbhEOUGR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 May 2021 16:06:17 -0400
Received: from mout.gmx.net ([212.227.15.15]:58135 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231334AbhEOUGQ (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sat, 15 May 2021 16:06:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1621109102;
        bh=Mw+CAYvrFLdxiE2vM7OkM2Mm//ux9nvE7ok94EY4bAE=;
        h=X-UI-Sender-Class:Date:From:To;
        b=DIPOyXHyKpNDnex/5hWOifIiHwGONWPru3rHMxKx3LIz2urZKWKdgiSjjm0nzWs5K
         bven4549H/LG+BhuuaThesPJTChZuYBvjMbXZTAoQMe2Op+a0Oy4CUAI/qZK3vxDAa
         ULqsVisSHVQzRz4Wbcq1E6We2GAgLDZ8Cga4/PFk=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from linux-ff1t ([109.42.3.239]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1Mk0JW-1l2Iyr3C6S-00kORn for
 <linux-man@vger.kernel.org>; Sat, 15 May 2021 22:05:01 +0200
Date:   Sat, 15 May 2021 22:05:00 +0200
From:   Radisson97@gmx.de
To:     linux-man@vger.kernel.org
Message-ID: <60a0296c.dU4x7sEqgjTKmQ6Y%Radisson97@gmx.de>
User-Agent: Heirloom mailx 12.5 7/5/10
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:FwvxVV1d6J1x8INRVf8j7F7+WCJ43zO+dr/XN7RXtIvM/p4gTvA
 Lmz8TIrdIKV/bUChobragITm9YtwRgwfQqOz6lDJAXegsDj/0Ev+NMW+xj+sLEDh/k9BMuL
 +0g9gpOI2r2AjupuGCfBTFUc2pc5FHGZ+4cTAeIg9BkXwa8tX5K8Sn7hVHFNOXJS8oHQTYO
 n98/Gf8sX+m2q04yefYpQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:CB3sW0YXix4=:rl1WErNf2p/pJEsSs91R2C
 cIt1RIhpOvBLx6WaSeW24mYMmNv3fnPkBBSGFvrYid84ocOZT/fjcZM0zStU4HkZXTsBel6ML
 fTDUn0qbW1x+ieqHwZcpu3mMGOumiIDNZ0d5U/v4Sz0iCz5oRc/Nlas54gaCTZkovl2Q0jzhN
 19ZyTWHev6MO7sNXpAUssAtBDNzt/OMkB1fRMyJAZefEp2FaPeRSgaktByJCgGsC6dXC0erSm
 DA37X4dPq55U2dzk0FzEw4qj4dV0Z+lNJ1cGAOx/jIihhvyHfZxl3PbdIFp816E6+xA9spsu3
 UqYzLY/LwhA0GwmKt754+lDKr7V4cru3JToOEdZiTAo2NvNacYHS26i6iVJCZt+q8D5ge9buH
 oY83YXdLVm9oy38hZI4EewIwWITRqj075A4LuelCeoFv1IYD6UqAj1D0G91dQUH3PYfU+E6PJ
 VUWx+ISHaSbUyJ5IochCchxoJ59GEcm6k2+sWVDIj92bWqcNyf2lb2WmK6juaFZaR3SK6cWs4
 KSaz7/n317HwomqLSVGqGMBYOCTlGPozuTZDfcuxpklPcxWPnmzkdJqkzo0sLvnreKDzSu6U4
 5K4GIHF6EcMy2crLQcNn+axaefaCkyMtDUIZ6bQnzQ/18/hWkZ71NAX5fTODuPJeVyFBH7BiZ
 ZSDzo86j/ZdL8DDD0/+rnSbn3C5q8G94qMBtgsD89ODD8eRDWVueuRYIL8jfS1B/QdFcMtqv4
 Kr8THoPzHRQAyvP3H3/imDLGRbpJvKSo32Vfb2POJrctZGfXeuhMvjk7wD1CXj2uWx18Q+VD3
 S19A0iWumwL2oUxHHRkSk4sw7KDecuwVV4nC+QsdfnW2NU26UlY/A7wtZ6YiI0TmC9vcFz8s1
 vPY41DE8kCAbDMlQmfjzrzF+E3Yz/nZ5cu7Z+sEHzc8pKyd5Rta+TcNxNC0DjKJlEZR6Pqs6c
 2mqeas/dGRlVCG/7E+01fQqYoQ6sRfgmhvXT6AYCJ6pe5TAzuupFreDTS8u/3Xf4ieSHg+Ems
 JhVOyCgXS2Wf68hwdsLdR6n4iN2cwPAcCnHl9BP8yiXPxDhGChLhvRaJYQxe4fQYwlbA61vbx
 5h6BXmCcozUKjVjHVFFOmiK2c/9lYwISpk0zkSeIAOnlSeWf+dpVygFFjg6fjjwRmSP4kNYwZ
 SwKJJEom8PxCHFP/44XNZ9LqTNZNOeKJKb294r7sxp/8ybp45VRkKzd/pjAWPXIZ6JOsc=
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

=46rom f91e8087a394e32fe8d7bffd3ceff7af0c05baa3 Mon Sep 17 00:00:00 2001
From: Harms <wharms@bfs.de>
Date: Sat, 15 May 2021 21:28:26 +0200
Subject: [PATCH] Add reentrant functions for gamma.3

Add reentrant functions for gamma.3
Signed-off-by: Harms <wharms@bfs.de>
=2D--
 man3/gamma.3 | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/man3/gamma.3 b/man3/gamma.3
index 003964158..b0e0a68c5 100644
=2D-- a/man3/gamma.3
+++ b/man3/gamma.3
@@ -8,7 +8,7 @@
 .\"
 .TH GAMMA 3 2021-03-22 "GNU" "Linux Programmer's Manual"
 .SH NAME
-gamma, gammaf, gammal \- (logarithm of the) gamma function
+gamma, gammaf, gammal,gamma_r, gammaf_r, gammal_r \- (logarithm of the) g=
amma function
 .SH SYNOPSIS
 .nf
 .B #include <math.h>
@@ -16,6 +16,9 @@ gamma, gammaf, gammal \- (logarithm of the) gamma functi=
on
 .BI "double gamma(double " x ");"
 .BI "float gammaf(float " x ");"
 .BI "long double gammal(long double " x ");"
+.BI "double gamma_r (double " x ", int *" sig ");"
+.BI "float gammaf_r(float " x ", int *" sig ");"
+.BI "long double gammal_r(long double " x ", int *" sig ");"
 .fi
 .PP
 Link with \fI\-lm\fP.
@@ -45,6 +48,11 @@ These functions are deprecated: instead, use either the
 or the
 .BR lgamma (3)
 functions, as appropriate.
+ .PP
+The functions with the "_r" suffix are the reentrant version
+of the corosponding function. The sign of the intermediate result
+is stored in the the variable pointed to by
+.IR sig .
 .PP
 For the definition of the Gamma function, see
 .BR tgamma (3).
=2D-
2.26.2

