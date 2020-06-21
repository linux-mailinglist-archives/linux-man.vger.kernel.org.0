Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 530F2202785
	for <lists+linux-man@lfdr.de>; Sun, 21 Jun 2020 02:07:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728496AbgFUAHR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Jun 2020 20:07:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728480AbgFUAHR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 Jun 2020 20:07:17 -0400
Received: from inpost.hi.is (inpost.hi.is [IPv6:2a00:c88:4000:1650::165:62])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2F60C061794
        for <linux-man@vger.kernel.org>; Sat, 20 Jun 2020 17:07:16 -0700 (PDT)
Received: from hekla.rhi.hi.is (hekla.rhi.hi.is [IPv6:2a00:c88:4000:1650::165:2])
        by inpost.hi.is (8.14.7/8.14.7) with ESMTP id 05L07D9M031323
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
        Sun, 21 Jun 2020 00:07:13 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 inpost.hi.is 05L07D9M031323
Received: from hekla.rhi.hi.is (localhost [127.0.0.1])
        by hekla.rhi.hi.is (8.14.4/8.14.4) with ESMTP id 05L07Dbt010348;
        Sun, 21 Jun 2020 00:07:13 GMT
Received: (from bjarniig@localhost)
        by hekla.rhi.hi.is (8.14.4/8.14.4/Submit) id 05L07Dpd010347;
        Sun, 21 Jun 2020 00:07:13 GMT
Date:   Sun, 21 Jun 2020 00:07:13 +0000
From:   Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] man5/*: srcfix, fix warnings from "mandoc -Tlint"
Message-ID: <20200621000713.GA10250@rhi.hi.is>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

  Remove superfluous paragraph macros.

  The output from "nroff" and "groff" is unchanged.

###

  Some examples of warnings:

mandoc: core.5:576:2: WARNING: skipping paragraph macro: PP empty

mandoc: elf.5:564:2: WARNING: skipping paragraph macro: IP empty

mandoc: utmp.5:229:2: WARNING: skipping paragraph macro: PP after SH

###

Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
---
 man5/core.5     | 1 -
 man5/elf.5      | 3 ---
 man5/locale.5   | 2 --
 man5/networks.5 | 1 -
 man5/proc.5     | 3 ---
 man5/utmp.5     | 2 --
 6 files changed, 12 deletions(-)

diff --git a/man5/core.5 b/man5/core.5
index 53d173a0c..458a84ee9 100644
--- a/man5/core.5
+++ b/man5/core.5
@@ -573,7 +573,6 @@ as well as the number of the signal which triggered the core dump):
 # \fBsysctl \-w kernel.core_pattern="%e\-%s.core"\fP
 .EE
 .in
-.PP
 .\"
 .SH NOTES
 The
diff --git a/man5/elf.5 b/man5/elf.5
index 3be909870..eb84ab3c8 100644
--- a/man5/elf.5
+++ b/man5/elf.5
@@ -561,7 +561,6 @@ This is defined as 0xffff, the largest number
 can have, specifying where the actual number of program headers is assigned.
 .PD
 .RE
-.IP
 .TP
 .I e_shentsize
 This member holds a sections header's size in bytes.
@@ -2129,7 +2128,6 @@ A version string of some sort.
 Architecture information.
 .PD
 .RE
-.PP
 .RE
 .SH NOTES
 .\" OpenBSD
@@ -2190,4 +2188,3 @@ Sun Microsystems,
 .PP
 AMD64 ABI Draft,
 .IR "System V Application Binary Interface AMD64 Architecture Processor Supplement" .
-.PP
diff --git a/man5/locale.5 b/man5/locale.5
index be1308b6e..d63488b87 100644
--- a/man5/locale.5
+++ b/man5/locale.5
@@ -104,7 +104,6 @@ the GNU C library supports the following nonstandard categories:
 See
 .BR locale (7)
 for a more detailed description of each category.
-.PP
 .SS LC_ADDRESS
 The definition starts with the string
 .I LC_ADDRESS
@@ -1125,7 +1124,6 @@ Each string has the following format:
 .IR direction ":" offset ":" start_date ":" end_date ":" era_name ":" era_format
 .PP
 The fields are to be defined as follows:
-.PP
 .TP 4
 .I direction
 Either
diff --git a/man5/networks.5 b/man5/networks.5
index 75ad20fc9..b85dac3e0 100644
--- a/man5/networks.5
+++ b/man5/networks.5
@@ -59,7 +59,6 @@ The trailing ".0" (for the host component of the network address) may be omitted
 .I aliases
 Optional aliases for the network.
 .PP
-.PP
 This file is read by the
 .BR route (8)
 and
diff --git a/man5/proc.5 b/man5/proc.5
index 6645a1ae8..45c921b49 100644
--- a/man5/proc.5
+++ b/man5/proc.5
@@ -2080,7 +2080,6 @@ check (refer to
 .BR ptrace (2)).
 If the check denies access, then the field value is displayed as 0.
 The affected fields are indicated with the marking [PT].
-.IP
 .RS
 .TP 10
 (1) \fIpid\fP \ %d
@@ -2826,7 +2825,6 @@ In a multithreaded process, the contents of the
 directory are not available if the main thread has already terminated
 (typically by calling
 .BR pthread_exit (3)).
-.IP
 .TP
 .IR /proc/[pid]/task/[tid]/children " (since Linux 3.5)"
 .\" commit 818411616baf46ceba0cff6f05af3a9b294734f7
@@ -3984,7 +3982,6 @@ sl  local_address rem_address   st tx_queue rx_queue tr rexmits  tm\->when uid
  1: 00000000:0201 00000000:0000 0A 00000000:00000000 00:00000000 00000000 0
 .EE
 .in
-.IP
 .TP
 .I /proc/net/unix
 Lists the UNIX domain sockets present within the system and their
diff --git a/man5/utmp.5 b/man5/utmp.5
index 425e805d0..2ed616761 100644
--- a/man5/utmp.5
+++ b/man5/utmp.5
@@ -226,7 +226,6 @@ removed, record-keeping is turned off.
 .br
 .I /var/log/wtmp
 .SH CONFORMING TO
-.PP
 POSIX.1 does not specify a
 .I utmp
 structure, but rather one named
@@ -278,7 +277,6 @@ Linux uses the BSD conventions for line contents, as documented above.
 .\" informative messages such as \fB"new time"\fP in the line field.
 System V has no \fIut_host\fP or \fIut_addr_v6\fP fields.
 .SH NOTES
-.PP
 Unlike various other
 systems, where utmp logging can be disabled by removing the file, utmp
 must always exist on Linux.
-- 
2.27.0
