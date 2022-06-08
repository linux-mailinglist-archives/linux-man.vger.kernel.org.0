Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A9445430AB
	for <lists+linux-man@lfdr.de>; Wed,  8 Jun 2022 14:44:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239480AbiFHMoy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Jun 2022 08:44:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239409AbiFHMow (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Jun 2022 08:44:52 -0400
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.220.28])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E6AB1451D8
        for <linux-man@vger.kernel.org>; Wed,  8 Jun 2022 05:44:51 -0700 (PDT)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by smtp-out1.suse.de (Postfix) with ESMTPS id 2B7AF21C87;
        Wed,  8 Jun 2022 12:44:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
        t=1654692290; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:  content-transfer-encoding:content-transfer-encoding;
        bh=R3EDJX/EEDho5gUvUXpR5EANkrVpNKpbrK7jS4T3j4I=;
        b=0H0xnXM5kherXr6G4X5UqD4hG6ZxJm6rovbvuHtjbUl2/whKa8F+ouBMZM0Bl+T2KXSoUK
        4yTOfcu/0FoAtLq3C7Ezv00NcjUAvId9lwzo7hx0rnK3O8r1h/HVXLhJ9BOghq1Rm6llxQ
        Jz8BD3CUklBI05sKQG12gvbExiyIJIs=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
        s=susede2_ed25519; t=1654692290;
        h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:  content-transfer-encoding:content-transfer-encoding;
        bh=R3EDJX/EEDho5gUvUXpR5EANkrVpNKpbrK7jS4T3j4I=;
        b=JCornp+eskGO+80eGvYVO46jI1KwBWZu94d//1kIp8XF+o7NhjGs+WZSE2mL4YITsfMqsw
        aAu/OoBYiXwWblBg==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 151F313AD9;
        Wed,  8 Jun 2022 12:44:50 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
        by imap2.suse-dmz.suse.de with ESMTPSA
        id loPsA8KZoGINRQAAMHmgww
        (envelope-from <chrubis@suse.cz>); Wed, 08 Jun 2022 12:44:50 +0000
From:   chrubis@suse.cz
To:     linux-man@vger.kernel.org
Cc:     alx.manpages@gmail.com, mtk.manpages@gmail.com,
        Cyril Hrubis <chrubis@suse.cz>
Subject: [PATCH v2] pipe.2: Add mention of O_NOTIFICATION_PIPE flag
Date:   Wed,  8 Jun 2022 14:46:45 +0200
Message-Id: <20220608124645.12622-1-chrubis@suse.cz>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Cyril Hrubis <chrubis@suse.cz>

This adds very basic information about the notification pipe that have
been added into Linux 5.8.

There is some description about the interface at:

https://www.kernel.org/doc/html/latest/core-api/watch_queue.html

(I think that there is at least on bug in that page, since the
notification pipe has to be opened with O_NOTIFICATION_PIPE which is
defined to O_EXCL not O_TMPFILE)

The ENOPKG error should be clear from this header (see
watch_queue_init() at the end):

https://github.com/torvalds/linux/blob/5bfc75d92efd494db37f5c4c173d3639d4772966/include/linux/watch_queue.h

Signed-off-by: Cyril Hrubis <chrubis@suse.cz>
---
 man2/pipe.2 | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/man2/pipe.2 b/man2/pipe.2
index 41a482f37..bd01b8da0 100644
--- a/man2/pipe.2
+++ b/man2/pipe.2
@@ -149,6 +149,15 @@ referred to by the new file descriptors.
 Using this flag saves extra calls to
 .BR fcntl (2)
 to achieve the same result.
+.TP
+.B O_NOTIFICATION_PIPE
+Since Linux 5.8,
+.\" commit c73be61cede5882f9605a852414db559c0ebedfd
+general notification mechanism is built on the top of the pipe where kernel
+splices notification messages into pipes opened by user space.
+The owner of the pipe has to tell the kernel which sources of events to watch
+and filters can also be applied to select which subevents should be placed into
+the pipe.
 .SH RETURN VALUE
 On success, zero is returned.
 On error, \-1 is returned,
@@ -191,6 +200,15 @@ The system-wide limit on the total number of open files has been reached.
 The user hard limit on memory that can be allocated for pipes
 has been reached and the caller is not privileged; see
 .BR pipe (7).
+.TP
+.B ENOPKG
+.RB ( pipe2 ())
+.B O_NOTIFICATION_PIPE
+was passed in
+.I flags
+and support for notifications
+.RB ( CONFIG_WATCH_QUEUE )
+is not compiled into the kernel.
 .SH VERSIONS
 .BR pipe2 ()
 was added to Linux in version 2.6.27;
-- 
2.35.1

