Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2D9542DB31D
	for <lists+linux-man@lfdr.de>; Tue, 15 Dec 2020 18:58:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730578AbgLOR4S (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 15 Dec 2020 12:56:18 -0500
Received: from guitar.tcltek.co.il ([192.115.133.116]:39075 "EHLO
        mx.tkos.co.il" rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1731417AbgLORzy (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 15 Dec 2020 12:55:54 -0500
Received: from tarshish.tkos.co.il (unknown [10.0.8.2])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mx.tkos.co.il (Postfix) with ESMTPS id C07A94409D4;
        Tue, 15 Dec 2020 19:55:08 +0200 (IST)
From:   Baruch Siach <baruch@tkos.co.il>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Baruch Siach <baruch@tkos.co.il>
Subject: [PATCH] packet.7: Update references to kernel documentation
Date:   Tue, 15 Dec 2020 19:54:53 +0200
Message-Id: <6236cf778decc2cfd772a90a8812f5d28163a849.1608054892.git.baruch@tkos.co.il>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Files moved from .txt to .rst.

Also, drop / prefix from kernel source tree references.

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 man7/packet.7 | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/man7/packet.7 b/man7/packet.7
index ac1c609058b5..856c59e6bafb 100644
--- a/man7/packet.7
+++ b/man7/packet.7
@@ -405,7 +405,7 @@ equal to
 .IP
 Packet sockets implement multiple variants of the packet ring.
 The implementation details are described in
-.IR Documentation/networking/packet_mmap.txt
+.IR Documentation/networking/packet_mmap.rst
 in the Linux kernel source tree.
 .TP
 .BR PACKET_STATISTICS
@@ -431,7 +431,7 @@ By default, this is a software generated timestamp generated when the
 packet is copied into the ring.
 This integer option selects the type of timestamp.
 Besides the default, it support the two hardware formats described in
-.IR Documentation/networking/timestamping.txt
+.IR Documentation/networking/timestamping.rst
 in the Linux kernel source tree.
 .TP
 .BR PACKET_TX_RING " (since Linux 2.6.31)"
@@ -648,9 +648,9 @@ The
 include file for physical-layer protocols.
 .PP
 The Linux kernel source tree.
-.IR /Documentation/networking/filter.txt
+.IR Documentation/networking/filter.rst
 describes how to apply Berkeley Packet Filters to packet sockets.
-.IR /tools/testing/selftests/net/psock_tpacket.c
+.IR tools/testing/selftests/net/psock_tpacket.c
 contains example source code for all available versions of
 .BR PACKET_RX_RING
 and
-- 
2.29.2

