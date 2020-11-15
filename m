Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 110022B36D3
	for <lists+linux-man@lfdr.de>; Sun, 15 Nov 2020 17:55:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726826AbgKOQxL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 15 Nov 2020 11:53:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726741AbgKOQxK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 15 Nov 2020 11:53:10 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96DC8C0613D1
        for <linux-man@vger.kernel.org>; Sun, 15 Nov 2020 08:53:10 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id k2so16156550wrx.2
        for <linux-man@vger.kernel.org>; Sun, 15 Nov 2020 08:53:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=XaoZc+vrON3GohFuWe6qE/k7qPo2fH/EWdfRV0Yt0Y4=;
        b=uPlVpqBt/xDzx1OVtM/4oyddABedj5CSH5PB9dTWmkOMEJB9D3fq0Vm4ToJwJoNdx1
         IbcUk/8lWX1098z49Avrak2YMt/NuM1F+Fkt7GNR2cC2Q+yHpK9ccgXtWdgWisYEDYD8
         l4wg1wNb3L9lEEyShdfl5L3kyynOyrkY2fdxWt2qBkmh9hGTCoZIiO6AshF25tFIJAFt
         FXuygqmewev5gIRkxk7+MkkuOdua87jGUospMwafOULiAO97dCDGxGbQnjfsxzZtq8Z3
         31B5Wy39tGl0m9ZZpUcC7UtMHNf4Zra9fsOQO4o36KEqaDaUSxDz4Ll5bUEjOFB/kKIq
         a7iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=XaoZc+vrON3GohFuWe6qE/k7qPo2fH/EWdfRV0Yt0Y4=;
        b=n+MhXmCBYcEiPQ/SKVGtxVZWalXuTwQBP21kvNRCfMU128Gz/IPjZkygrGT71mh4Cu
         nZ2xu2kgZSXuHV3fLlxCHlixoZUHEeSGDVUoE8yqBh7Eee9RZ/iyIQ3hU7d8flOWa+D9
         70/JniuFCYm5qa1uzs1RCBfE/Z8zBt7nhJ+T/5terlW8z1hYggdbcCw4UcDXvUG+vH+8
         Ru3IdJ7t/Gn6I/7lXnHftsP/hckKWiOwNmPsjcIzwWpiXPyWejQiu20H2nWY0wdBLyhI
         bdnDaCfA/ybQCilAgYbvqmXyew4af91tL2qom82ZQrPQbXDHKayBzEpv6mL2Uj+Ze7af
         UIxw==
X-Gm-Message-State: AOAM5325dD7DUtBzAhTnEo2+Z1YkxGRN8B+S5FO3jg39wq6KOecRJ4n0
        iCnN1rwSXSD03E76Lf19PzM=
X-Google-Smtp-Source: ABdhPJwzH4+2LHKKjgQc2Pa1C4RZzyK9OIOBftkm8jeEvDUp8djIr/BUBTIEueA+JVFCdxM7GsH9bg==
X-Received: by 2002:adf:9d84:: with SMTP id p4mr15066213wre.370.1605459189307;
        Sun, 15 Nov 2020 08:53:09 -0800 (PST)
Received: from localhost.localdomain ([170.253.49.0])
        by smtp.googlemail.com with ESMTPSA id c17sm16435282wml.14.2020.11.15.08.53.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Nov 2020 08:53:08 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, g.branden.robinson@gmail.com
Subject: [RFC] memusage.1, uri.7, user-keyring.7, user-session-keyring.7, ld.so.8, tzselect.8: srcfix: Replace \f markup by .
Date:   Sun, 15 Nov 2020 17:52:57 +0100
Message-Id: <20201115165256.497403-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---

Hi,

I was trying to see if I can write a script to fix these.
Here's a sample of what I would change.

It seems a bit complicated. There are exceptions:

* I think for code inside [.EX/.EE], [\f] is more appropriate than [.];
  what do you think about it?

* And for [.TP] tags, [\f] seems to be the only solution
  (for more than 2 different formattings in a line).

So I would try to write a script that omits code inside [.EX/.EE],
and also just after [.TP].

And I also found a few weird files (such as zic.8 and zdump.8).
Where do those come from?
I'll try to rewrite them using man(7) markup.
In the meantime,
I would also have to omit those files from the input to the script.
Do you have a list of such files?

Cheers,

Alex


 man1/memusage.1             | 29 +++++++++++++++++++++--------
 man7/uri.7                  |  6 ++++--
 man7/user-keyring.7         |  4 +++-
 man7/user-session-keyring.7 |  4 +++-
 man8/ld.so.8                |  7 +++++--
 man8/tzselect.8             |  6 +++---
 6 files changed, 39 insertions(+), 17 deletions(-)

diff --git a/man1/memusage.1 b/man1/memusage.1
index 7ceaece56..f7b62bb6c 100644
--- a/man1/memusage.1
+++ b/man1/memusage.1
@@ -65,14 +65,20 @@ The "Memory usage summary" line output by
 contains three fields:
 .RS 4
 .TP
-\fBheap total\fR
-Sum of \fIsize\fR arguments of all
+.B heap total
+Sum of
+.I size
+arguments of all
 .BR malloc (3)
 calls,
-products of arguments (\fInmemb\fR*\fIsize\fR) of all
+products of arguments
+.RI ( nmemb * size )
+of all
 .BR calloc (3)
 calls,
-and sum of \fIlength\fR arguments of all
+and sum of
+.I length
+arguments of all
 .BR mmap (2)
 calls.
 In the case of
@@ -83,17 +89,24 @@ if the new size of an allocation is larger than the previous size,
 the sum of all such differences (new size minus old size) is added.
 .TP
 .B "heap peak"
-Maximum of all \fIsize\fR arguments of
+Maximum of all
+.I size
+arguments of
 .BR malloc (3),
-all products of \fInmemb\fR*\fIsize\fR of
+all products of
+.IR nmemb * size
+of
 .BR calloc (3),
-all \fIsize\fR arguments of
+all
+.I size
+arguments of
 .BR realloc (3),
 .I length
 arguments of
 .BR mmap (2),
 and
-\fInew_size\fR arguments of
+.I new_size
+arguments of
 .BR mremap (2).
 .TP
 .B "stack peak"
diff --git a/man7/uri.7 b/man7/uri.7
index c23cbce59..a36c2f2c3 100644
--- a/man7/uri.7
+++ b/man7/uri.7
@@ -600,10 +600,12 @@ Technically the fragment isn't part of the URI.
 .PP
 For information on how to embed URIs (including URLs) in a data format,
 see documentation on that format.
-HTML uses the format <A HREF="\fIuri\fP">
+HTML uses the format <A
+.RI HREF=\(dq uri \(dq>
 .I text
 </A>.
-Texinfo files use the format @uref{\fIuri\fP}.
+Texinfo files use the format
+.RI @uref{ uri }.
 Man and mdoc have the recently added UR macro, or just include the
 URI in the text (viewers should be able to detect :// as part of a URI).
 .PP
diff --git a/man7/user-keyring.7 b/man7/user-keyring.7
index 4b249d60d..7938bd40c 100644
--- a/man7/user-keyring.7
+++ b/man7/user-keyring.7
@@ -51,7 +51,9 @@ the calling process's user keyring.
 .PP
 From the
 .BR keyctl (1)
-utility, '\fB@u\fP' can be used instead of a numeric key ID in
+utility,
+.RB \(aq @u \(aq
+can be used instead of a numeric key ID in
 much the same way.
 .PP
 User keyrings are independent of
diff --git a/man7/user-session-keyring.7 b/man7/user-session-keyring.7
index 22560bd19..df7482b2a 100644
--- a/man7/user-session-keyring.7
+++ b/man7/user-session-keyring.7
@@ -54,7 +54,9 @@ the calling process's user session keyring.
 .PP
 From the
 .BR keyctl (1)
-utility, '\fB@us\fP' can be used instead of a numeric key ID in
+utility,
+.RB \(aq @us \(aq
+can be used instead of a numeric key ID in
 much the same way.
 .PP
 User session keyrings are independent of
diff --git a/man8/ld.so.8 b/man8/ld.so.8
index 614a112a4..553ded9f1 100644
--- a/man8/ld.so.8
+++ b/man8/ld.so.8
@@ -38,7 +38,10 @@ The program
 handles a.out binaries, a binary format used long ago.
 The program
 .B ld\-linux.so*
-(\fI/lib/ld\-linux.so.1\fP for libc5, \fI/lib/ld\-linux.so.2\fP for glibc2)
+.RI ( /lib/ld\-linux.so.1
+for libc5,
+.I /lib/ld\-linux.so.2
+for glibc2)
 handles binaries that are in the more modern ELF format.
 Both programs have the same behavior, and use the same
 support files and programs
@@ -648,7 +651,7 @@ which is now always enabled.
 The name of a (single) shared object to be profiled,
 specified either as a pathname or a soname.
 Profiling output is appended to the file whose name is:
-"\fI$LD_PROFILE_OUTPUT\fP/\fI$LD_PROFILE\fP.profile".
+.RI \(dq $LD_PROFILE_OUTPUT / $LD_PROFILE .profile\(dq.
 .IP
 Since glibc 2.2.5,
 .BR LD_PROFILE
diff --git a/man8/tzselect.8 b/man8/tzselect.8
index e9dcd1265..fd17bca53 100644
--- a/man8/tzselect.8
+++ b/man8/tzselect.8
@@ -34,14 +34,14 @@ Name of the directory containing timezone data files (default:
 .\" or perhaps /usr/local/etc/zoneinfo in some older systems.
 .SH FILES
 .TP
-\fBTZDIR\fP\fI/iso3166.tab\fP
+.BI TZDIR /iso3166.tab
 Table of ISO 3166 2-letter country codes and country names.
 .TP
-\fBTZDIR\fP\fI/zone.tab\fP
+.BI TZDIR /zone.tab
 Table of country codes, latitude and longitude, TZ values, and
 descriptive comments.
 .TP
-\fBTZDIR\fP\fI/\fP\fITZ\fP
+.BI TZDIR /TZ
 Timezone data file for timezone
 .IR TZ .
 .SH SEE ALSO
-- 
2.28.0

