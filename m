Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E71843FB48C
	for <lists+linux-man@lfdr.de>; Mon, 30 Aug 2021 13:27:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236438AbhH3L2g (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 30 Aug 2021 07:28:36 -0400
Received: from mail.kernel.org ([198.145.29.99]:58818 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S235387AbhH3L2g (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 30 Aug 2021 07:28:36 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9741561102;
        Mon, 30 Aug 2021 11:27:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1630322862;
        bh=iUGl4jiS78CqQfKPmW4ciU/WyFEUoICUhVdQrjVOsLg=;
        h=From:To:Cc:Subject:Date:From;
        b=nSMZmbDXd+TCe52+OtnJf1B1m6ov7FhRz2kpLDmklWpXs7OFO1pm1Ij2inGkO14Se
         Dp8MsxiCI1qqJ5jmUenQIr7mL/FpyIgY2tCEVHKcmdPsMV0vNedmpE5raqIDw150Iu
         0JuzhJOoz6DhaqqIc27MrGn50w2+cPQz906WvNF2E8sG8pRZbkxiQypL1vsGmlE9Zk
         70zeLKRm62evXpWvnlNgafRbLzz77cHx/kLV2B2pk8XpqwNRxIDCa4P+GBrGJptn6J
         RjfIKyTlCQytfxVSoHPyPO3FHdf3+CHyjgjSiyeC6GPiAiyuNavHIf2He13NuJAdGT
         YmhKk0zjy1MWw==
Received: by pali.im (Postfix)
        id 513207B8; Mon, 30 Aug 2021 13:27:40 +0200 (CEST)
From:   =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] termios.3: Use bold style for B0
Date:   Mon, 30 Aug 2021 13:27:11 +0200
Message-Id: <20210830112711.18542-1-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Pali Rohár <pali@kernel.org>
---
 man3/termios.3 | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man3/termios.3 b/man3/termios.3
index f888c15d754c..ee0b8cad9c33 100644
--- a/man3/termios.3
+++ b/man3/termios.3
@@ -987,7 +987,9 @@ constant is defined prior to using it.
 The zero baud rate,
 .BR B0 ,
 is used to terminate the connection.
-If B0 is specified, the modem control lines shall no longer be asserted.
+If
+.B B0
+is specified, the modem control lines shall no longer be asserted.
 Normally, this will disconnect the line.
 .B CBAUDEX
 is a mask
-- 
2.20.1

