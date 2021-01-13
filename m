Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6DB032F4773
	for <lists+linux-man@lfdr.de>; Wed, 13 Jan 2021 10:26:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726692AbhAMJXI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 13 Jan 2021 04:23:08 -0500
Received: from mail.kernel.org ([198.145.29.99]:48738 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726668AbhAMJXI (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 13 Jan 2021 04:23:08 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5DA7D2339F;
        Wed, 13 Jan 2021 09:22:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1610529747;
        bh=Ct9KmaJDkr5olRL5JyFWw8c6bHcdfOXMMwroqx5wzs8=;
        h=From:To:Subject:Date:From;
        b=U0S2VLP1HjnJVMcxpw6jY1A+VToUMxxvzro69Uir4oHLS16haTDG5SvbLLlZAtW5J
         fCKpRvQWOu/MmGkBwP5RhN7ujeNNV/YfLjJjEYQlz8AEzmK5R7bFjODx3PhbgvP2Dw
         fiRUMcTPwIzVVNcw4ZL+UkgpqGBd/2PW+IW4wU2GRHiZ4t9s9T/XCZGgCgDorbcjcV
         gZVKWFHzwq+uy7SWzcGsWzksG9dNESWQab8X2ARES/dErfJgdOteluxFbVjm7ZebrQ
         qvmb7qQuaGu/RQr0wrkCBxK9AD4yVBUv/29xLmT8jEYH3dHnQKcQRtGGTCQNf/fNPG
         bV4738sM4jS6g==
Received: by pali.im (Postfix)
        id CC48776D; Wed, 13 Jan 2021 10:22:24 +0100 (CET)
From:   =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH] rtnetlink.7: Remove IPv4 from description
Date:   Wed, 13 Jan 2021 10:22:12 +0100
Message-Id: <20210113092212.14562-1-pali@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

rtnetlink is not used only for IPv4

Signed-off-by: Pali Rohár <pali@kernel.org>
---
 man7/rtnetlink.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/rtnetlink.7 b/man7/rtnetlink.7
index cd6809320..aec005ff9 100644
--- a/man7/rtnetlink.7
+++ b/man7/rtnetlink.7
@@ -13,7 +13,7 @@
 .\"
 .TH RTNETLINK  7 2020-06-09 "Linux" "Linux Programmer's Manual"
 .SH NAME
-rtnetlink \- Linux IPv4 routing socket
+rtnetlink \- Linux routing socket
 .SH SYNOPSIS
 .nf
 .B #include <asm/types.h>
-- 
2.20.1

