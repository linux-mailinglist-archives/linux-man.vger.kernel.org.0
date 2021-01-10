Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 13EBA2F077B
	for <lists+linux-man@lfdr.de>; Sun, 10 Jan 2021 15:01:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726365AbhAJOBZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 10 Jan 2021 09:01:25 -0500
Received: from mail.kernel.org ([198.145.29.99]:33634 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726250AbhAJOBZ (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sun, 10 Jan 2021 09:01:25 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5FDC122D75;
        Sun, 10 Jan 2021 14:00:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1610287244;
        bh=9SKRoZR/VqLM2NzosYKzZYZBjpMzZ9jec6peBU4lI+A=;
        h=From:To:Subject:Date:From;
        b=pICid+ZM4ZYMXioneaIRKmX5JWi/7Uyo4JrmuuEY+7CuuIfjjEFh7yqNQr7frjHCP
         cU9723YTgqM7PIkQgr9cM/qZDNWmh2TRKI67pjZO4MvgtYF2FcoYhbdKzOxBSAlFVg
         pIsVmMUd8h4KPLu6jb2jb8S2ee2uh82skVNXI/pKecL/S4OrsAQI8G0p+Bi+jwuHbm
         vjWaISZY4bHQLccWgPSraKXuSsWldLjRivMjypmLPn4nGN/FMrYmNXdQObwpijwhrb
         W7eX0niXfMFjTUUC1KBL871rHT6xNMI3d4K+3agy9N8y9Jo4PJRF3bwT75Ew6RwiNf
         DfYusPcwnIz8g==
Received: by pali.im (Postfix)
        id 079897C5; Sun, 10 Jan 2021 15:00:42 +0100 (CET)
From:   =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH] netlink.7: Fix minimal Linux version for NETLINK_CAP_ACK
Date:   Sun, 10 Jan 2021 15:00:27 +0100
Message-Id: <20210110140027.14937-1-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

NETLINK_CAP_ACK option was introduced in commit 0a6a3a23ea6e which first
appeared in Linux version 4.3 and not 4.2.

Signed-off-by: Pali Rohár <pali@kernel.org>
---
 man7/netlink.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/netlink.7 b/man7/netlink.7
index b14e981d1..ec5d0e71f 100644
--- a/man7/netlink.7
+++ b/man7/netlink.7
@@ -491,7 +491,7 @@ The
 .I nsid
 is sent to user space via an ancillary data.
 .TP
-.BR NETLINK_CAP_ACK " (since Linux 4.2)"
+.BR NETLINK_CAP_ACK " (since Linux 4.3)"
 .\"	commit 0a6a3a23ea6efde079a5b77688541a98bf202721
 .\"	Author: Christophe Ricard <christophe.ricard@gmail.com>
 The kernel may fail to allocate the necessary room for the acknowledgment
-- 
2.20.1

