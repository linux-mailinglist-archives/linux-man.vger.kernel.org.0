Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C99B4282A7F
	for <lists+linux-man@lfdr.de>; Sun,  4 Oct 2020 13:50:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725840AbgJDLuJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Oct 2020 07:50:09 -0400
Received: from mx1.riseup.net ([198.252.153.129]:45482 "EHLO mx1.riseup.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725907AbgJDLuI (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sun, 4 Oct 2020 07:50:08 -0400
Received: from capuchin.riseup.net (capuchin-pn.riseup.net [10.0.1.176])
        (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
        (Client CN "*.riseup.net", Issuer "Sectigo RSA Domain Validation Secure Server CA" (not verified))
        by mx1.riseup.net (Postfix) with ESMTPS id 4C422Z2Z0rzFf2r;
        Sun,  4 Oct 2020 04:44:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
        t=1601811878; bh=6XHsOE9CFZ1ZJJ7QhXOibFLomDa1VkTbbKn4U6xv9g4=;
        h=Date:From:To:Cc:Subject:From;
        b=QGR9217fVGO0OU5i8Q5xH+H3FLl3O8q/CisEI3JEjWZ32Gmx6C32flP4t+DjUlISu
         gfky6HxYHJKrWB/gSR+NxYrit8lsSoCL730gtv09hgggyS8wkmJg1rhqCjhvRFC2rU
         2zZvlLn47l8nz6zWWucAURMDl1YUW/GWI8/wvuR8=
X-Riseup-User-ID: C96D4632F9E13C5523BC7D9824D064BEE82AA691305499593879FDE14923A407
Received: from [127.0.0.1] (localhost [127.0.0.1])
         by capuchin.riseup.net (Postfix) with ESMTPSA id 4C422Y01g1z8vXV;
        Sun,  4 Oct 2020 04:44:36 -0700 (PDT)
Date:   Sun, 4 Oct 2020 11:44:34 +0000
From:   Samanta Navarro <ferivoz@riseup.net>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] mmap.2, proc.5, bpf-helpers.7, cpuset.7: tfix
Message-ID: <20201004114434.pbetrwdehhgzibuw@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

---
 man2/mmap.2        | 2 +-
 man5/proc.5        | 2 +-
 man7/bpf-helpers.7 | 2 +-
 man7/cpuset.7      | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/man2/mmap.2 b/man2/mmap.2
index 545597e..9393294 100644
--- a/man2/mmap.2
+++ b/man2/mmap.2
@@ -437,7 +437,7 @@ For other files, creating a mapping with this flag results in an
 error.
 .IP
 Shared file mappings with this flag provide the guarantee that while
-some memory is writably mapped in the address space of the process,
+some memory is mapped writable in the address space of the process,
 it will be visible in the same file at the same offset even after
 the system crashes or is rebooted.
 In conjunction with the use of appropriate CPU instructions,
diff --git a/man5/proc.5 b/man5/proc.5
index 67b9e7a..ed30938 100644
--- a/man5/proc.5
+++ b/man5/proc.5
@@ -114,7 +114,7 @@ specific program
 (so long as the program doesn't otherwise reveal itself by its behavior).
 .\" As an additional bonus, since
 .\" .IR /proc/[pid]/cmdline
-.\" is unaccessible for other users,
+.\" is inaccessible for other users,
 .\" poorly written programs passing sensitive information via
 .\" program arguments are now protected against local eavesdroppers.
 .TP
diff --git a/man7/bpf-helpers.7 b/man7/bpf-helpers.7
index a18be23..57d2185 100644
--- a/man7/bpf-helpers.7
+++ b/man7/bpf-helpers.7
@@ -2075,7 +2075,7 @@ egress path otherwise). This is the only flag supported for now.
 .B Description
 This helper is used in programs implementing policies at the
 skb socket level. If the sk_buff \fIskb\fP is allowed to pass (i.e.
-if the verdeict eBPF program returns \fBSK_PASS\fP), redirect it
+if the verdict eBPF program returns \fBSK_PASS\fP), redirect it
 to the socket referenced by \fImap\fP (of type
 \fBBPF_MAP_TYPE_SOCKHASH\fP) using hash \fIkey\fP\&. Both ingress and
 egress interfaces can be used for redirection. The
diff --git a/man7/cpuset.7 b/man7/cpuset.7
index cbc6cf7..1d6c5ea 100644
--- a/man7/cpuset.7
+++ b/man7/cpuset.7
@@ -317,7 +317,7 @@ Flag (0 or 1).
 If set (1), the kernel slab caches
 for file I/O (directory and inode structures) are
 uniformly spread across the cpuset.
-By defaultBy default, is off (0) in the top cpuset,
+By default, is off (0) in the top cpuset,
 and inherited from the parent cpuset in
 newly created cpusets.
 See the \fBMemory Spread\fR section, below.
-- 
2.28.0

