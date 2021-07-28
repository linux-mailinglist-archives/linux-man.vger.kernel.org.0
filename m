Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0A5853D9690
	for <lists+linux-man@lfdr.de>; Wed, 28 Jul 2021 22:20:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231519AbhG1UUe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Jul 2021 16:20:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231359AbhG1UUe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Jul 2021 16:20:34 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14B25C061757
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:31 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id r2so4044043wrl.1
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=7SGIbjH+FgzP3TwtmKBI05PCmhiULK3U4QjrlysVGnA=;
        b=F54nlS8P713iuUHaF4oKmkhT7FVaO4dj539kCLC7DNPiUh4YQt+rq0ySoO+MabKzP0
         NqqaOV8bIL94JVbh7ZuDsS8U9Skg8BvVLwJsICn0fyF4EKL/LZupc5Eyjs6YruVmGb8o
         PhFhZFajGQqfTzdhFAxYMfi7BV3VvMpKTGRucXVs7bBtfAzETjgI0Z/xvZTj5+Ubc+dj
         yvk+3hRLSAAksq68B86DMU2XFLRcQONEx4LQlNJj4lR8JlL/ZgT3dcYHxGuHu58ycYzG
         AiemRD1m8cAGrIIymFLQkNBwT56aj/X5ntei+K92KymaMd95iXWgwb/UUWWQiiy6ACah
         zaPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7SGIbjH+FgzP3TwtmKBI05PCmhiULK3U4QjrlysVGnA=;
        b=mEoVfEMtaV1mDRsBu1F6WrOaIou4ZudYRfUqew72duiqVZTs4rMPWmWtAnCYLX0Y8o
         GfaFLAAuTkfYgICZ/UXOAYG+/S+hfRuHgnkkYirB/Zq1vtnH/AQn2FKz2Zl8bOrg1tTg
         dZYWDxm6XP0qFFKSSCWpBYYIl8Q2Au5BdyqgF/kEMMh6cc7dbWGOCR+HJ2KQKDp59f/r
         B37iTYQuwwEAtEy0VvnYspelfOrGW7O1s6IAfU3zwH7Xd0PefN9ikcvuwazEdoPzTVRJ
         xxUGkpStILxCwKX2TPKRpDo/iDub0vVPEX9lNNCr/lyPo050oImA2zabMAtkesjQlUVP
         7mMw==
X-Gm-Message-State: AOAM531e8iQ08roiYp5/Uo1JMQL5aszejMt2p++dFNTttUUgWfk8KLro
        2WCrwXut6yRbFzDz6TLim48=
X-Google-Smtp-Source: ABdhPJwSz6tR9hej5v2SDuQWbIOKeDwjAswK7YtIEQgViYwcomYR9SVH8J2muH2UVEhTk28wUVkf3A==
X-Received: by 2002:a5d:6111:: with SMTP id v17mr1129851wrt.204.1627503629743;
        Wed, 28 Jul 2021 13:20:29 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id o29sm879703wms.13.2021.07.28.13.20.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 13:20:29 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 17/32] seccomp_unotify.2: Minor tweaks to Rodrigo's patch
Date:   Wed, 28 Jul 2021 22:19:53 +0200
Message-Id: <20210728202008.3158-18-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210728202008.3158-1-alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/seccomp_unotify.2 | 32 +++++++++++++++++---------------
 1 file changed, 17 insertions(+), 15 deletions(-)

diff --git a/man2/seccomp_unotify.2 b/man2/seccomp_unotify.2
index 9bd27214f..ae449ae36 100644
--- a/man2/seccomp_unotify.2
+++ b/man2/seccomp_unotify.2
@@ -740,16 +740,18 @@ use the file descriptor number specified in the
 .I newfd
 field.
 .TP
-.BR SECCOMP_ADDFD_FLAG_SEND
-Available since Linux 5.14, combines the
+.BR SECCOMP_ADDFD_FLAG_SEND " (since Linux 5.14)"
+Combines the
 .B SECCOMP_IOCTL_NOTIF_ADDFD
 ioctl with
 .B SECCOMP_IOCTL_NOTIF_SEND
-into an atomic operation. On successful invocation, the target process's
-errno will be 0 and the return value will be the file descriptor number that was
-installed in the target. If allocating the file descriptor in the tatget fails,
-the target's syscall continues to be blocked until a successful response is
-sent.
+into an atomic operation.
+On successful invocation, the target process's errno will be 0
+and the return value will be the file descriptor number
+that was installed in the target.
+If allocating the file descriptor in the tatget fails,
+the target's syscall continues to be blocked
+until a successful response is sent.
 .RE
 .TP
 .I srcfd
@@ -1149,14 +1151,6 @@ that would
 normally be restarted by the
 .BR SA_RESTART
 flag.
-.PP
-Furthermore, if the supervisor response is a file descriptor
-added with
-.B SECCOMP_IOCTL_NOTIF_ADDFD,
-then the flag
-.B SECCOMP_ADDFD_FLAG_SEND
-can be used to atomically add the file descriptor and return that value,
-making sure no file descriptors are inadvertently leaked into the target.
 .\" FIXME
 .\" About the above, Kees Cook commented:
 .\"
@@ -1176,6 +1170,14 @@ making sure no file descriptors are inadvertently leaked into the target.
 .\" calls because it's impossible for the kernel to restart the call
 .\" with the right timeout value. I wonder what happens when those
 .\" system calls are restarted in the scenario we're discussing.)
+.PP
+Furthermore, if the supervisor response is a file descriptor
+added with
+.B SECCOMP_IOCTL_NOTIF_ADDFD,
+then the flag
+.B SECCOMP_ADDFD_FLAG_SEND
+can be used to atomically add the file descriptor and return that value,
+making sure no file descriptors are inadvertently leaked into the target.
 .SH BUGS
 If a
 .BR SECCOMP_IOCTL_NOTIF_RECV
-- 
2.32.0

