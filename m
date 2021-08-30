Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2AED13FB9D7
	for <lists+linux-man@lfdr.de>; Mon, 30 Aug 2021 18:09:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237661AbhH3QKU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 30 Aug 2021 12:10:20 -0400
Received: from mail.kernel.org ([198.145.29.99]:46118 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S237620AbhH3QKS (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 30 Aug 2021 12:10:18 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id E87FE60F5E;
        Mon, 30 Aug 2021 16:09:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1630339765;
        bh=XL12H4+Ff1iGzjELsw4cfuQbxWHGyRqZmGEYU6aGAJI=;
        h=From:To:Cc:Subject:Date:From;
        b=H+LhhANuEHqhp0I/T981sV2m6KiIOipN0BcI/ZeIXsS8dpbghnwMlg1KfktyuLgV4
         +A8ZbUDWj06+H6tlGQRfLLmviKn3jtkGBKLeb9DybqnT2OB45fmO85zE6M4QjE+zN3
         Jq+DtIGHZPOWE1iV4UhiOVgRCfQIKq+gv0YtUam+/CXhlE2WG6RbtCTkUFfJ17NZcl
         HniG4Mj+1tsjrmrxJGNQhkvLAQk8ctH7qA/ZCnxs4xcite4bfMv5+j49rcIEc5j8P6
         BRXiS/8oOs0yT9PtsrYW1nYjgrLS4YehgwGyE0sAjeH+2zIhxfWmVDzhM6cexxriVe
         Q8RDIbaIqthlg==
Received: by pali.im (Postfix)
        id ADA787B8; Mon, 30 Aug 2021 18:09:22 +0200 (CEST)
From:   =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
Subject: [PATCH] ioctl_tty.2: TIOCGSID is equivalent to tcgetsid()
Date:   Mon, 30 Aug 2021 18:08:57 +0200
Message-Id: <20210830160857.25574-1-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Pali Rohár <pali@kernel.org>
---
 man2/ioctl_tty.2 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man2/ioctl_tty.2 b/man2/ioctl_tty.2
index c7a8aad7b395..6ba18f337e8f 100644
--- a/man2/ioctl_tty.2
+++ b/man2/ioctl_tty.2
@@ -401,6 +401,9 @@ Set the foreground process group ID of this terminal.
 Argument:
 .BI "pid_t *" argp
 .IP
+When successful, equivalent to
+.IR "*argp = tcgetsid(fd)" .
+.IP
 Get the session ID of the given terminal.
 This fails with the error
 .B ENOTTY
-- 
2.20.1

