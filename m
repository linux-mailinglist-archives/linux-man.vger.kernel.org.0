Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 25EA5301D10
	for <lists+linux-man@lfdr.de>; Sun, 24 Jan 2021 16:13:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726298AbhAXPN1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 24 Jan 2021 10:13:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726302AbhAXPM2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 24 Jan 2021 10:12:28 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9B9BC0613ED
        for <linux-man@vger.kernel.org>; Sun, 24 Jan 2021 07:11:47 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id g10so9770790wrx.1
        for <linux-man@vger.kernel.org>; Sun, 24 Jan 2021 07:11:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2dH/AnIKGD78Wvb6nm+25r2o7zcq5zifnjOd4aJrWHE=;
        b=YqrDGUDZ3rZ+FcKB4zeOdI1c3beQPed6Y+1jvRl45tH+tTIuSDRm3PuPv4wI7I04B7
         FY0XFvp5djmJlIXLs+sj36fmDzQHpn4KfrWC7HSS4IJGwWHTIYz1Y+aTV0b3SHClmqer
         6UjLIqLTprQRpdoXWFfjE2uWeb8FHBkeyTj6emm3v8KVLFgGT+fEdVEOhMT+GuphfkkU
         Pj0+P3L36LHjTphLvoDRhdL1yobJMaNlidx7St+JIkVpOrWraVX11HvPj4V7B2gdy+J5
         7irtEEIr6LoHWXfyz9cjS9TNfu2iDqbaQ3wZWJco07xxhxPvkDRH0NY6gJCGxrb27crr
         a5zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2dH/AnIKGD78Wvb6nm+25r2o7zcq5zifnjOd4aJrWHE=;
        b=Q7UyCVQm6O5FvZze3og5IhoSeApGJwuzTv6iY6+gYiiZ4fSGxU6r8ac+B2sbaCvW4O
         woTIEJKFjua40SbLU/WDhnDSUaHNkTGHqQzyABNACxOuZRG25IaD7+19C1XtHtoWrKEr
         PYKk4BnCyLpSAcXcQsfgFeoywB6vqZlPm/hoiJySP5Dd59GOQ2/0erti5pW9899catIx
         6KZtjPecn6enl1SrW3f7ZrycERu5oXX3tz2/G7RhQin3+IUH3euCz6ER5gFoP/D7iaKp
         Fi8LIDlLaer1o1HX6Z2DyI7WH/WaC+upg4/vwQ7W3ZifBpEFL23VwsoA9bDAobU42kOF
         z+ig==
X-Gm-Message-State: AOAM530XWKnhiXkTyP8DPKH6x6C6KkuikalqkzXTnuwX/eog9mE+GEYI
        1eUBxXZCpKA5hAAtvViLGJk=
X-Google-Smtp-Source: ABdhPJxoxSNre+i6iQQB1sHDLkfWMOx7j/h8WQNH3IERQmFSohdC5J6Ea774OR6JhAB0DX7t4q0qDw==
X-Received: by 2002:a5d:5051:: with SMTP id h17mr1000765wrt.164.1611501106619;
        Sun, 24 Jan 2021 07:11:46 -0800 (PST)
Received: from debian.vlc ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id j2sm18480099wrh.78.2021.01.24.07.11.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Jan 2021 07:11:46 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH] sock_diag.7: Fix recvmsg() usage in the example
Date:   Sun, 24 Jan 2021 16:10:39 +0100
Message-Id: <20210124151035.70536-6-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Pali Rohár <pali@kernel.org>

The msg_name field for recvmsg() call points to a caller-allocated buffer
nladdr that is used to return the source address of the (netlink) socket.

As recvmsg() does not read this buffer and fills it for a caller, do not
initialize it and instead check its value in the example.

Signed-off-by: Pali Rohár <pali@kernel.org>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man7/sock_diag.7 | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/man7/sock_diag.7 b/man7/sock_diag.7
index b732b2571..569106dd6 100644
--- a/man7/sock_diag.7
+++ b/man7/sock_diag.7
@@ -753,9 +753,7 @@ static int
 receive_responses(int fd)
 {
     long buf[8192 / sizeof(long)];
-    struct sockaddr_nl nladdr = {
-        .nl_family = AF_NETLINK
-    };
+    struct sockaddr_nl nladdr;
     struct iovec iov = {
         .iov_base = buf,
         .iov_len = sizeof(buf)
@@ -782,6 +780,11 @@ receive_responses(int fd)
         if (ret == 0)
             return 0;
 
+        if (nladdr.nl_family != AF_NETLINK) {
+            fputs("!AF_NETLINK\en", stderr);
+            return \-1;
+        }
+
         const struct nlmsghdr *h = (struct nlmsghdr *) buf;
 
         if (!NLMSG_OK(h, ret)) {
-- 
2.30.0

