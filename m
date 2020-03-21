Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BEDD618E500
	for <lists+linux-man@lfdr.de>; Sat, 21 Mar 2020 23:08:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728056AbgCUWIO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 21 Mar 2020 18:08:14 -0400
Received: from mail.python.org ([188.166.95.178]:33810 "EHLO mail.python.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728054AbgCUWIO (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sat, 21 Mar 2020 18:08:14 -0400
Received: from auth1-smtp.messagingengine.com (auth1-smtp.messagingengine.com [66.111.4.227])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.python.org (Postfix) with ESMTPSA id 48lFC00KL3znfq2;
        Sat, 21 Mar 2020 18:08:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=python.org; s=200901;
        t=1584828492; bh=d4qwSoe4c37Nmp8Lm7ugkLLRbBaMcPMaczhj+OYb7ws=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=y6mKFUl556+8U7t1psHeTLkkJhSjEHk5dSET8fpPb3H/PH6xCksNJtoFgfb9CaGj7
         cOrK0SZ5tVYi9Lvude7JEvplYGR8x/k98lweWhAKEPVFbawzU95kX4fS4V+B+CFCwf
         eOTLcHOYlmafKKUNHl9nPs3J5v6go919QSXHi+Hk=
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
        by mailauth.nyi.internal (Postfix) with ESMTP id A12C627C0054;
        Sat, 21 Mar 2020 18:08:10 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Sat, 21 Mar 2020 18:08:10 -0400
X-ME-Sender: <xms:SpB2Xie7lWADA7hqI5qDDU-pog8Fz-n_h0EBqiKinV8SmtnSS4-oDA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrudegfedgudehkecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtke
    ertdertddtnecuhfhrohhmpeeuvghnjhgrmhhinhcurfgvthgvrhhsohhnuceosggvnhhj
    rghmihhnsehphihthhhonhdrohhrgheqnecukfhppeeiiedrgedurddutdegrddvtdenuc
    evlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegstghpodhm
    vghsmhhtphgruhhthhhpvghrshhonhgrlhhithihqddvtdduieekfeefjedqudduleeitd
    eiheefqdgsvghnjhgrmhhinheppehphihthhhonhdrohhrghesfhgrshhtmhgrihhlrdgt
    ohhm
X-ME-Proxy: <xmx:SpB2XitZR2WAHGufHjDniujrofAxzQoVJAYrG3Ui_-JxU3OCEExtFw>
    <xmx:SpB2XhikC1B5X0g6kVDznP5cdgcoQ6MGS_b_FMS4YD8X3je49ChT6Q>
    <xmx:SpB2Xiu6LK5pQO0huWMkxB1vtCa88nCkk5WhxH04JVxCTtcDUQ2flA>
    <xmx:SpB2Xqn2a2VAAcubSobuy-Y8an918KR1eFS14KxspUoFR9ZPOv_eyQ>
Received: from localhost.localdomain (c-66-41-104-20.hsd1.mn.comcast.net [66.41.104.20])
        by mail.messagingengine.com (Postfix) with ESMTPA id 474503061856;
        Sat, 21 Mar 2020 18:08:10 -0400 (EDT)
From:   Benjamin Peterson <benjamin@python.org>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] clock_getres.2: Document CLOCK_TAI
Date:   Sat, 21 Mar 2020 17:08:09 -0500
Message-Id: <20200321220809.3430-1-benjamin@python.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200321040358.19119-1-benjamin@python.org>
References: <20200321040358.19119-1-benjamin@python.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Benjamin Peterson <benjamin@python.org>
---
 man2/clock_getres.2 | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/man2/clock_getres.2 b/man2/clock_getres.2
index 3fb0ac61c..7b25b8f65 100644
--- a/man2/clock_getres.2
+++ b/man2/clock_getres.2
@@ -137,6 +137,16 @@ Requires per-architecture support,
 and probably also architecture support for this flag in the
 .BR vdso (7).
 .TP
+.BR CLOCK_TAI " (since Linux 3.10; Linux-specific)"
+.\" Added in commit 1ff3c9677bff7e468e0c487d0ffefe4e901d33f4
+System-wide clock derived from wall time but ignoring leap seconds. This clock does
+not experience discontinuities and backwards jumps caused by NTP inserting leap
+seconds as
+.BR CLOCK_REALTIME
+does.
+.IP
+The acronym TAI refers to International Atomic Time.
+.TP
 .B CLOCK_MONOTONIC
 Clock that cannot be set and represents monotonic time since\(emas described
 by POSIX\(em"some unspecified point in the past".
-- 
2.20.1

