Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AC06E2F8EB9
	for <lists+linux-man@lfdr.de>; Sat, 16 Jan 2021 19:47:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725964AbhAPSqs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 16 Jan 2021 13:46:48 -0500
Received: from mail.kernel.org ([198.145.29.99]:47128 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727057AbhAPSqs (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sat, 16 Jan 2021 13:46:48 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0072223106;
        Sat, 16 Jan 2021 18:46:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1610822768;
        bh=bE0kwGR2/4kn2qhgidlPEBNqd3TIfX7fXnrcNRRa8/k=;
        h=From:To:Subject:Date:From;
        b=gx4yIlS+4xiMSIiiauNjARHMYT0x6Dvg87m9Y8QAeti3gfu3+LQOjCFV4KA8cg/GN
         vbf8dDG9cZhzeOmxqWYdz6Wzn4ySmZipN69jxIB+sPZP98wQQAjKZ28XPRuRkmikcj
         RhW5tdJxkC7uMrOfBzR2AQjk6APbk+UhiwmLOOnGa6Pap/HkXJfGU8YNa1O7HaqnnN
         GPN1w9RSpj3/FaLaZlp7TWU5dueSvSeYEZLoZM226/Pqec8l2A5WIC9lsfm436sa09
         rBPp1N5JN/zyD78PHZjNgZLiAH25u1eehgo1wO/HWwa1ywZ6ou3bWqA9UFGo2E4OOu
         bttylgPp6ibIQ==
Received: by pali.im (Postfix)
        id 970B860E; Sat, 16 Jan 2021 19:46:05 +0100 (CET)
From:   =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH] sock_diag.7: Fix recvmsg() usage in the example
Date:   Sat, 16 Jan 2021 19:45:54 +0100
Message-Id: <20210116184554.30730-1-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The msg_name field for recvmsg() call points to a caller-allocated buffer
nladdr that is used to return the source address of the (netlink) socket.

As recvmsg() does not read this buffer and fills it for a caller, do not
initialize it and instead check its value in the example.

Signed-off-by: Pali Rohár <pali@kernel.org>
---
 man7/sock_diag.7 | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/man7/sock_diag.7 b/man7/sock_diag.7
index 91ccf3ac5..191e6ac49 100644
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
2.20.1

