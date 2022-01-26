Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 781D849CA89
	for <lists+linux-man@lfdr.de>; Wed, 26 Jan 2022 14:15:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238259AbiAZNPq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 26 Jan 2022 08:15:46 -0500
Received: from smtp-out1.suse.de ([195.135.220.28]:50836 "EHLO
        smtp-out1.suse.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238272AbiAZNPq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 26 Jan 2022 08:15:46 -0500
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by smtp-out1.suse.de (Postfix) with ESMTPS id 8A1AC218ED;
        Wed, 26 Jan 2022 13:15:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
        t=1643202944; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:  content-transfer-encoding:content-transfer-encoding;
        bh=SKYkLpu4HWhzgoFzKM67wucyktBBp7WU9PIQ+LgFJBU=;
        b=zxc1zHJBCvEaBFkok6oOghJk8kX3QlEDAesoMTN1Fi3eA5SNV80h4E1ikw+zAci7mkGqeP
        3EjqWkhKW8WK2avBaWI0ENXEjSzCtMdEa5HEzA1BFysuP0UpcsM3kWXFGDbfOwdwNgI/wt
        EwWm7M56i0wXkXBV30uDY7E4PMptzL4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
        s=susede2_ed25519; t=1643202944;
        h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:  content-transfer-encoding:content-transfer-encoding;
        bh=SKYkLpu4HWhzgoFzKM67wucyktBBp7WU9PIQ+LgFJBU=;
        b=4xOCtKiiJLpML6RYfrv67g+0AEKHYX1mQdSMoDCorXaIL+dBS/f6/2+AYbd4ZsFvh4p5KK
        mIiS7l05Yj+MxBAQ==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 7349813E1E;
        Wed, 26 Jan 2022 13:15:44 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
        by imap2.suse-dmz.suse.de with ESMTPSA
        id uGVhGoBJ8WEqUgAAMHmgww
        (envelope-from <chrubis@suse.cz>); Wed, 26 Jan 2022 13:15:44 +0000
From:   chrubis@suse.cz
To:     linux-man@vger.kernel.org
Cc:     alx.manpages@gmail.com, mtk.manpages@gmail.com,
        Cyril Hrubis <chrubis@suse.cz>
Subject: [PATCH] pipe.2: Add mention of O_NOTIFICATION_PIPE flag
Date:   Wed, 26 Jan 2022 14:17:19 +0100
Message-Id: <20220126131719.12211-1-chrubis@suse.cz>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Cyril Hrubis <chrubis@suse.cz>

This adds very basic information about the notification pipe that have
been added into Linux 5.8.

There is some description about the interface at:

https://www.kernel.org/doc/html/latest/watch_queue.html

(I think that there is at least on bug in that page, since the
notification pipe has to be opened with O_NOTIFICATION_PIPE which is
defined to O_EXCL not O_TMPFILE)

The ENOPKG error should be clear from this header (see
watch_queue_init() at the end):

https://github.com/torvalds/linux/blob/5bfc75d92efd494db37f5c4c173d3639d4772966/include/linux/watch_queue.h

TODO:

Where to place the info about the structures and ioctls()? Does that
belong into pipe.2 as well?

Signed-off-by: Cyril Hrubis <chrubis@suse.cz>
---
 man2/pipe.2 | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/man2/pipe.2 b/man2/pipe.2
index 41a482f37..7d4db0323 100644
--- a/man2/pipe.2
+++ b/man2/pipe.2
@@ -149,6 +149,14 @@ referred to by the new file descriptors.
 Using this flag saves extra calls to
 .BR fcntl (2)
 to achieve the same result.
+.TP
+.BR O_NOTIFICATION_PIPE
+Since Linux 5.8,
+.\" commit c73be61cede5882f9605a852414db559c0ebedfd
+general notification mechanims is build on the top of the pipe where kernel
+splices notification messages into pipes opened by userspace. The owner of the
+pipe has to tell the kernel which sources of events to watch and filters can also
+be applied to select which subevents should be placed into the pipe.
 .SH RETURN VALUE
 On success, zero is returned.
 On error, \-1 is returned,
@@ -191,6 +199,15 @@ The system-wide limit on the total number of open files has been reached.
 The user hard limit on memory that can be allocated for pipes
 has been reached and the caller is not privileged; see
 .BR pipe (7).
+.TP
+.B ENOPKG
+.RB ( pipe2 ())
+.B O_NOTIFICATION_PIPE
+was passed in
+.IR flags
+and support for notifications
+.RB ( CONFIG_WATCH_QUEUE )
+is not compiled into the kernel.
 .SH VERSIONS
 .BR pipe2 ()
 was added to Linux in version 2.6.27;
-- 
2.34.1

