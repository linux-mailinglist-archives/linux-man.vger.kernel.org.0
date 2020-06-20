Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6EF5A202507
	for <lists+linux-man@lfdr.de>; Sat, 20 Jun 2020 18:03:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726065AbgFTQDm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Jun 2020 12:03:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725880AbgFTQDm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 Jun 2020 12:03:42 -0400
Received: from inpost.hi.is (inpost.hi.is [IPv6:2a00:c88:4000:1650::165:62])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3D7BC06174E
        for <linux-man@vger.kernel.org>; Sat, 20 Jun 2020 09:03:41 -0700 (PDT)
Received: from hekla.rhi.hi.is (hekla.rhi.hi.is [IPv6:2a00:c88:4000:1650::165:2])
        by inpost.hi.is (8.14.7/8.14.7) with ESMTP id 05KG3cUZ008002
        (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
        Sat, 20 Jun 2020 16:03:38 GMT
DKIM-Filter: OpenDKIM Filter v2.11.0 inpost.hi.is 05KG3cUZ008002
Received: from hekla.rhi.hi.is (localhost [127.0.0.1])
        by hekla.rhi.hi.is (8.14.4/8.14.4) with ESMTP id 05KG3c1X020703;
        Sat, 20 Jun 2020 16:03:38 GMT
Received: (from bjarniig@localhost)
        by hekla.rhi.hi.is (8.14.4/8.14.4/Submit) id 05KG3crr020702;
        Sat, 20 Jun 2020 16:03:38 GMT
Date:   Sat, 20 Jun 2020 16:03:38 +0000
From:   Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] man5/proc.5: srcfix, trim trailing space
Message-ID: <20200620160338.GA20693@rhi.hi.is>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Output is from: test-groff -b -mandoc -T utf8 -rF0 -t -w w -z

  [ "test-groff" is a developmental version of "groff" ]

Input file is ./proc.5

troff: <proc.5>:4410: warning: trailing space
troff: <proc.5>:5206: warning: trailing space
troff: <proc.5>:5488: warning: trailing space

###

  There is no change in the output from "nroff" and "groff".

Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
---
 man5/proc.5 | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/man5/proc.5 b/man5/proc.5
index 0e9d56fec..6645a1ae8 100644
--- a/man5/proc.5
+++ b/man5/proc.5
@@ -4407,7 +4407,7 @@ on older kernels).
 This file contains information about the status of the
 directory cache (dcache).
 The file contains six numbers,
-.IR nr_dentry ", " nr_unused ", " age_limit " (age in seconds), "
+.IR nr_dentry ", " nr_unused ", " age_limit " (age in seconds),"
 .I want_pages
 (pages requested by system) and two dummy values.
 .RS
@@ -5203,7 +5203,7 @@ This file is documented in the Linux kernel source file
 .I Documentation/initrd.txt
 before Linux 4.10).
 .TP
-.IR /proc/sys/kernel/reboot\-cmd " (Sparc only) "
+.IR /proc/sys/kernel/reboot\-cmd " (Sparc only)"
 This file seems to be a way to give an argument to the SPARC
 ROM/Flash boot loader.
 Maybe to tell it what to do after
@@ -5485,7 +5485,7 @@ is reduced accordingly.
 See
 .BR ptrace (2).
 .TP
-.IR /proc/sys/kernel/zero\-paged " (PowerPC only) "
+.IR /proc/sys/kernel/zero\-paged " (PowerPC only)"
 This file
 contains a flag.
 When enabled (nonzero), Linux-PPC will pre-zero pages in
-- 
2.27.0
