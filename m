Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3FEFB12B2D
	for <lists+linux-man@lfdr.de>; Fri,  3 May 2019 12:04:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727122AbfECKEZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 3 May 2019 06:04:25 -0400
Received: from mx1.redhat.com ([209.132.183.28]:44212 "EHLO mx1.redhat.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726835AbfECKEZ (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 3 May 2019 06:04:25 -0400
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mx1.redhat.com (Postfix) with ESMTPS id 74C2830018F6;
        Fri,  3 May 2019 10:04:25 +0000 (UTC)
Received: from oldenburg2.str.redhat.com (ovpn-116-163.ams2.redhat.com [10.36.116.163])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 903445D9C4;
        Fri,  3 May 2019 10:04:24 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     "Michael Kerrisk \(man-pages\)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] tsearch.3: Document twalk_r function added in glibc 2.30
Date:   Fri, 3 May 2019 12:01:59 +0200
Message-ID: <87a7g3ua55.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.46]); Fri, 03 May 2019 10:04:25 +0000 (UTC)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

---
 man3/tsearch.3 | 26 ++++++++++++++++++++++++--
 1 file changed, 24 insertions(+), 2 deletions(-)

diff --git a/man3/tsearch.3 b/man3/tsearch.3
index b64c9c6b7..c832b7009 100644
--- a/man3/tsearch.3
+++ b/man3/tsearch.3
@@ -40,6 +40,10 @@ tsearch, tfind, tdelete, twalk, tdestroy \- manage a binary search tree
 .PP
 .BI "void twalk(const void *" root ", void (*" action ")(const void *" nodep ,
 .BI "                                   VISIT " which ", int " depth "));"
+.PP
+.BI "void twalk_r(const void *" root ", void (*" action ")(const void *" np ,
+.BI "                                   VISIT " which ", void *" closure "),
+.BI "                                   void *" closure);"
 
 .BR "#define _GNU_SOURCE" "         /* See feature_test_macros(7) */"
 .B #include <search.h>
@@ -151,6 +155,16 @@ Thus, the choice of name
 .B post\%order
 is rather confusing.)
 .PP
+.BR twalk_r ()
+is similar to
+.BR twalk (),
+but instead of the leval argument, the
+.I closure
+argument pointer is passed to each invocation of the action callback,
+unchanged.  This pointer can be used to pass information to and from
+to the callback function in a thread-safe fashion, without resorting
+to global variables.
+.PP
 .BR tdestroy ()
 removes the whole tree pointed to by
 .IR root ,
@@ -191,6 +205,9 @@ also
 return NULL if
 .I rootp
 was NULL on entry.
+.SH VERSIONS
+.BR twalk_r ()
+is available since glibc 2.30.
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
 .BR attributes (7).
@@ -209,14 +226,19 @@ T{
 .BR twalk ()
 T}	Thread safety	MT-Safe race:root
 T{
+.BR twalk_r ()
+T}	Thread safety	MT-Safe race:root
+T{
 .BR tdestroy ()
 T}	Thread safety	MT-Safe
 .TE
 .SH CONFORMING TO
 POSIX.1-2001, POSIX.1-2008, SVr4.
-The function
+The functions
 .BR tdestroy ()
-is a GNU extension.
+and
+.BR twalk_r ()
+are GNU extensions.
 .SH NOTES
 .BR twalk ()
 takes a pointer to the root, while the other functions
-- 
2.20.1

