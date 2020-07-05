Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A5CAD214CCA
	for <lists+linux-man@lfdr.de>; Sun,  5 Jul 2020 15:38:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726915AbgGENis (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Jul 2020 09:38:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53258 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726833AbgGENis (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Jul 2020 09:38:48 -0400
Received: from inpost.hi.is (inpost.hi.is [IPv6:2a00:c88:4000:1650::165:62])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 343F0C061794
        for <linux-man@vger.kernel.org>; Sun,  5 Jul 2020 06:38:48 -0700 (PDT)
Received: from hekla.rhi.hi.is (hekla.rhi.hi.is [IPv6:2a00:c88:4000:1650::165:2])
        by inpost.hi.is (8.14.7/8.14.7) with ESMTP id 065DcjsG013894
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
        Sun, 5 Jul 2020 13:38:45 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 inpost.hi.is 065DcjsG013894
Received: from hekla.rhi.hi.is (localhost [127.0.0.1])
        by hekla.rhi.hi.is (8.14.4/8.14.4) with ESMTP id 065DcjHF010591;
        Sun, 5 Jul 2020 13:38:45 GMT
Received: (from bjarniig@localhost)
        by hekla.rhi.hi.is (8.14.4/8.14.4/Submit) id 065Dcj83010590;
        Sun, 5 Jul 2020 13:38:45 GMT
Date:   Sun, 5 Jul 2020 13:38:45 +0000
From:   Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] man2/*: srcfix: remove superfluous quotes around space-free
 arguments
Message-ID: <20200705133845.GA9966@rhi.hi.is>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

  Remove quotes around a space-free argument for the single-font macros.

Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
---
 man2/flock.2           | 2 +-
 man2/ioctl_tty.2       | 2 +-
 man2/perf_event_open.2 | 6 +++---
 man2/pipe.2            | 2 +-
 4 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/man2/flock.2 b/man2/flock.2
index 2dce918b0..16812c865 100644
--- a/man2/flock.2
+++ b/man2/flock.2
@@ -234,7 +234,7 @@ locks (and also
 .BR fcntl (2)
 byte region locks) to be treated as local;
 see the discussion of the
-.I "local_lock"
+.I local_lock
 option in
 .BR nfs (5).
 .SH SEE ALSO
diff --git a/man2/ioctl_tty.2 b/man2/ioctl_tty.2
index 3084f79bf..83efb5b8b 100644
--- a/man2/ioctl_tty.2
+++ b/man2/ioctl_tty.2
@@ -143,7 +143,7 @@ When
 is nonzero, nobody knows what will happen.
 .IP
 (SVr4, UnixWare, Solaris, Linux treat
-.I "tcsendbreak(fd,arg)"
+.I tcsendbreak(fd,arg)
 with nonzero
 .I arg
 like
diff --git a/man2/perf_event_open.2 b/man2/perf_event_open.2
index 7d24ba47d..16246a4c4 100644
--- a/man2/perf_event_open.2
+++ b/man2/perf_event_open.2
@@ -352,7 +352,7 @@ See fields
 for more details.
 .RE
 .TP
-.I "size"
+.I size
 The size of the
 .I perf_event_attr
 structure for forward/backward compatibility.
@@ -391,7 +391,7 @@ is 112 corresponding to the addition of
 in Linux 4.1.
 .\" commit 1a5941312414c71dece6717da9a0fa1303127afa
 .TP
-.I "config"
+.I config
 This specifies which event you want, in conjunction with
 the
 .I type
@@ -705,7 +705,7 @@ to try and achieve the desired rate.
 The rate of adjustment is a
 timer tick.
 .TP
-.I "sample_type"
+.I sample_type
 The various bits in this field specify which values to include
 in the sample.
 They will be recorded in a ring-buffer,
diff --git a/man2/pipe.2 b/man2/pipe.2
index 459593253..29fdf3116 100644
--- a/man2/pipe.2
+++ b/man2/pipe.2
@@ -43,7 +43,7 @@ pipe, pipe2 \- create pipe
 /* On Alpha, IA-64, MIPS, SuperH, and SPARC/SPARC64; see NOTES */
 .B struct fd_pair {
 .B "    long fd[2];"
-.B "};"
+.B };
 .B struct fd_pair pipe();
 .PP
 /* On all other architectures */
-- 
2.27.0
