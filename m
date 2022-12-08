Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E8E14646BBC
	for <lists+linux-man@lfdr.de>; Thu,  8 Dec 2022 10:16:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229976AbiLHJQQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 8 Dec 2022 04:16:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230303AbiLHJPz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 8 Dec 2022 04:15:55 -0500
Received: from smtp.gentoo.org (mail.gentoo.org [IPv6:2001:470:ea4a:1:5054:ff:fec7:86e4])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1FA8E6F0C4
        for <linux-man@vger.kernel.org>; Thu,  8 Dec 2022 01:14:49 -0800 (PST)
Received: by smtp.gentoo.org (Postfix, from userid 559)
        id 8C9CE340DFF; Thu,  8 Dec 2022 09:14:47 +0000 (UTC)
From:   Mike Frysinger <vapier@gentoo.org>
To:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH/RFC] popen.3: change wait4(2) references to wait(2) family
Date:   Thu,  8 Dec 2022 04:14:42 -0500
Message-Id: <20221208091442.10595-1-vapier@gentoo.org>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Mike Frysinger <vapier@chromium.org>

Since wait4(2) is deprecated and people should use waitpid(2) instead,
and the specific wait function used is largely an internal detail,
update the references to talk about the wait "family" of functions.

Signed-off-by: Mike Frysinger <vapier@gentoo.org>
---
 man3/popen.3 | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/man3/popen.3 b/man3/popen.3
index bfa88f522665..5be8b783909e 100644
--- a/man3/popen.3
+++ b/man3/popen.3
@@ -92,8 +92,9 @@ streams are block buffered by default.
 The
 .BR pclose ()
 function waits for the associated process to terminate and returns the exit
-status of the command as returned by
-.BR wait4 (2).
+status of the command as returned by one of the
+.BR wait (2)
+family of calls.
 .SH RETURN VALUE
 .BR popen ():
 on success, returns a pointer to an open stream that
@@ -106,15 +107,15 @@ calls fail, or if the function cannot allocate memory,
 NULL is returned.
 .PP
 .BR pclose ():
-on success, returns the exit status of the command; if
+on success, returns the exit status of the command; if one of the
 .\" These conditions actually give undefined results, so I commented
 .\" them out.
 .\" .I stream
 .\" is not associated with a "popen()ed" command, if
 .\".I stream
 .\" already "pclose()d", or if
-.BR wait4 (2)
-returns an error, or some other error is detected,
+.BR wait (2)
+family of calls returns an error, or some other error is detected,
 \-1 is returned.
 .PP
 On failure, both functions set
@@ -201,7 +202,7 @@ The only hint is an exit status of 127.
 .BR sh (1),
 .BR fork (2),
 .BR pipe (2),
-.BR wait4 (2),
+.BR wait (2),
 .BR fclose (3),
 .BR fflush (3),
 .BR fopen (3),
-- 
2.38.1

