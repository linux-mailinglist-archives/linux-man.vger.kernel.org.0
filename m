Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1719412B13
	for <lists+linux-man@lfdr.de>; Fri,  3 May 2019 11:52:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726267AbfECJwQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 3 May 2019 05:52:16 -0400
Received: from mx1.redhat.com ([209.132.183.28]:39506 "EHLO mx1.redhat.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725777AbfECJwQ (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 3 May 2019 05:52:16 -0400
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mx1.redhat.com (Postfix) with ESMTPS id 21E0730018E0;
        Fri,  3 May 2019 09:52:16 +0000 (UTC)
Received: from oldenburg2.str.redhat.com (ovpn-116-163.ams2.redhat.com [10.36.116.163])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 45DE460BF7;
        Fri,  3 May 2019 09:52:15 +0000 (UTC)
From:   Florian Weimer <fweimer@redhat.com>
To:     "Michael Kerrisk \(man-pages\)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] tsearch: Do not use const arguments in twalk callback
Date:   Fri, 3 May 2019 11:49:21 +0200
Message-ID: <87ftpvuape.fsf@oldenburg2.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.46]); Fri, 03 May 2019 09:52:16 +0000 (UTC)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The const specifier is not part of the prototype (it only applies to the
implementation), so showing it here confuses the reader.
---
 man3/tsearch.3 | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/man3/tsearch.3 b/man3/tsearch.3
index 33213a029..b64c9c6b7 100644
--- a/man3/tsearch.3
+++ b/man3/tsearch.3
@@ -39,8 +39,7 @@ tsearch, tfind, tdelete, twalk, tdestroy \- manage a binary search tree
 .BI "                int (*" compar ")(const void *, const void *));"
 .PP
 .BI "void twalk(const void *" root ", void (*" action ")(const void *" nodep ,
-.BI "                                   const VISIT " which ,
-.BI "                                   const int " depth "));"
+.BI "                                   VISIT " which ", int " depth "));"
 
 .BR "#define _GNU_SOURCE" "         /* See feature_test_macros(7) */"
 .B #include <search.h>
@@ -271,7 +270,7 @@ compare(const void *pa, const void *pb)
 }
 
 static void
-action(const void *nodep, const VISIT which, const int depth)
+action(const void *nodep, VISIT which, int depth)
 {
     int *datap;
 
-- 
2.20.1

