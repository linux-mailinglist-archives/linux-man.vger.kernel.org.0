Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 78612389868
	for <lists+linux-man@lfdr.de>; Wed, 19 May 2021 23:08:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229994AbhESVJd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 19 May 2021 17:09:33 -0400
Received: from mout.gmx.net ([212.227.15.18]:34503 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229437AbhESVJc (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 19 May 2021 17:09:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1621458491;
        bh=34echluKO1qUjUdg7ivEFWVBsSLZLU4nsYdZUvPGGX4=;
        h=X-UI-Sender-Class:Date:From:To;
        b=hKRm109V1lxTvSFYz9nmTYc7LWoNSUAeffGDZrBtl2NcE2IcOY47f8GOaAjSMCy7f
         2smlmMws4CW52dmKmW90Pr2k7DyYSNUxk8p0KGXQOv92JFBkFUkyVnocbLWkObl0Mq
         TO788W7OGxjUOuYUudcxMDNfzkyo4l0CUQBAGFDs=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from linux-ff1t ([109.42.3.26]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1M42nS-1ljTQJ0ws4-00026a for
 <linux-man@vger.kernel.org>; Wed, 19 May 2021 23:08:11 +0200
Date:   Wed, 19 May 2021 23:08:10 +0200
From:   Radisson97@gmx.de
To:     linux-man@vger.kernel.org
Message-ID: <60a57e3a.lbqA81rLGmtH2qoy%Radisson97@gmx.de>
User-Agent: Heirloom mailx 12.5 7/5/10
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:T8Otf549eLq7dP19X+6LXR8BsJL6YoA0rwxmIQTqPY69lOEQB+v
 wvhnMgDAWn94zTKbBB62YWHT4MWCKTHQNFsOpToFc39Mtzlfce0GO0jE0BHdOExSbqDGma0
 ScIzsratkRRyAMkJ8pLDsZmRBHrC6A+ZkZO6rAGKzONakEo2tCA6FKz7hdz/l4KvPDI0qLO
 0LnuOrDoBv9XZrS4T83eg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:72I1FIghTRs=:vJY8eoANu1aaWSLYrZYF7R
 /30tQtO9gMvT4K0qeQ+mS3EQzeKu5p1Gd+00EszUj6Uyqn3Gbb+55lhiXk/SlBllgDF98mfDN
 j2UxMDh57NEV+zqNneLL2ZYEg8KF7V6rrffXkYxL7Lzji+fWs/1RU5ZpSgYF6yKe46Ac3eARg
 WPIFl56VWek9TpKOHvPHo6UR1J4eCvop18GUeTdjof3j9Rgw1Ah/kuQOgpt/5nxVU2uRAWjHn
 zSMoh2H77hiWwFIUbJmzrp7mrGJjbn6pvNgSmNfpUAul/mJIHidp5tvj4KpGDow/pIZwKp+E4
 7mg+jGDBeL2/WH80hejsRAx8g92tb9jFkP9ED6cdmF7UMw+++H1qyLRq2pmiDnoNGvoC0IrY7
 MGLh6TPL9G+rj0V68h6P0aQ80wpJcGqO7Zw/L1kAgVdlurJjDvM1cyo7CdcPBuK8IpAkfQpXZ
 T8WJz+l3m+35G5psqRRriZLNgx3jf9UhOnrJ7eVFuuOqG3P0YYdPUakjWugDRzPmgqzO9zF5V
 fLnHaNfFtqbQAhDpVPQfVMTT58BklsAvjRFugxnpZ0PQguN0fHHzcWA4wjOzoZCfd3THyR+Iu
 NSbKU6q2hiZUlNxZ6+HFJzXPCDKjO89ORh1tY5L1ZvkORZmhdJMl2B6rivV9Hcfj5O9CiJkCF
 ubfIU0gvviIsIAxZ0HUj+AsEJfDtJHY2wfXnpotH6+evJtzi5XxYi0eDrSMX/PgZqLr/AAwkG
 EC2Fm4yjLVnJDuBlj1VKfkQfbXV9b7F4pAV8Zukoy18W/cYlYViHnPkMMHGU2vpHZaGd4I7ld
 X/7o9zzK1esVBHQgYk2m2i+G96Bk6UAw5p6Huo+LcNs38NoV/ahdpEw5Ku84BofiIg+uhw/JP
 0A3A86lbevaEs384UtmwU0+Fb64wpK3qggN0+DxeO9HqhasS3I8UGDv3uYmWabG8rGb7wUcFS
 8fsXUpqePe56xG69MNh+XnzYurvU58E5JeV564YdMdzMiLRML2dvm7nCsiiJe2yULyD/ptRZn
 IP4ACWAcJuE89T97qCz4ROwfVGlYHFgRfXJQtK7ndfrrScpK6I/jK8mDAWz+bKgnBO2kJqu1c
 7zNB7n+SdRX22F6Nxf0Hl/8Tq9akEOnPvYw
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

=46rom 765db7b7714514780b4e613c6d09d2ff454b1ef8 Mon Sep 17 00:00:00 2001
From: Harms <wharms@bfs.de>
Date: Wed, 19 May 2021 22:25:08 +0200
Subject: [PATCH] gamma.3:Add reentrant functions gamma_r

Add three variants of gamma_r and explain
the use of the second argument sig

Signed-off-by: Harms <wharms@bfs.de>
=2D--
V2:
- fix long lines
- fix typo
 man3/gamma.3 | 23 ++++++++++++++++++++---
 1 file changed, 20 insertions(+), 3 deletions(-)

diff --git a/man3/gamma.3 b/man3/gamma.3
index 003964158..7b3425fc2 100644
=2D-- a/man3/gamma.3
+++ b/man3/gamma.3
@@ -1,5 +1,5 @@
 .\" Copyright 2002 Walter Harms (walter.harms@informatik.uni-oldenburg.de=
)
-.\"
+.\"-*- mode:nroff-mode ; mode:visual-line -80-
 .\" %%%LICENSE_START(GPL_NOVERSION_ONELINE)
 .\" Distributed under GPL
 .\" %%%LICENSE_END
@@ -8,7 +8,8 @@
 .\"
 .TH GAMMA 3 2021-03-22 "GNU" "Linux Programmer's Manual"
 .SH NAME
-gamma, gammaf, gammal \- (logarithm of the) gamma function
+gamma, gammaf, gammal, gamma_r, gammaf_r, gammal_r \- (logarithm of the) =
gamma
+function
 .SH SYNOPSIS
 .nf
 .B #include <math.h>
@@ -16,7 +17,13 @@ gamma, gammaf, gammal \- (logarithm of the) gamma funct=
ion
 .BI "double gamma(double " x ");"
 .BI "float gammaf(float " x ");"
 .BI "long double gammal(long double " x ");"
-.fi
+.PP
+.BI "double gamma_r (double " x ", int *" sig ");"
+.BI "float gammaf_r(float " x ", int *" sig ");"
+.BI "long double gammal_r(long double " x ", int *" sig ");"
+.PP
+.BI "extern int " signgam ;
+.fi.
 .PP
 Link with \fI\-lm\fP.
 .PP
@@ -46,6 +53,16 @@ or the
 .BR lgamma (3)
 functions, as appropriate.
 .PP
+The functions with the "_r" suffix are the reentrant version
+of the corresponding function. The sign of the intermediate gamma
+function is stored in the variable pointed to by
+.IR sig .
+The real gamma function can be computed as:
+.PP
+.RS
+gam  =3D sig * exp(gamma(x));
+.RE
+.PP
 For the definition of the Gamma function, see
 .BR tgamma (3).
 .SS *BSD version
=2D-
2.26.2

