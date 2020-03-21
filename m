Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1F63D18DDD9
	for <lists+linux-man@lfdr.de>; Sat, 21 Mar 2020 05:11:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725763AbgCUELs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 21 Mar 2020 00:11:48 -0400
Received: from mail.python.org ([188.166.95.178]:45770 "EHLO mail.python.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725440AbgCUELs (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sat, 21 Mar 2020 00:11:48 -0400
X-Greylist: delayed 464 seconds by postgrey-1.27 at vger.kernel.org; Sat, 21 Mar 2020 00:11:47 EDT
Received: from auth1-smtp.messagingengine.com (auth1-smtp.messagingengine.com [66.111.4.227])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.python.org (Postfix) with ESMTPSA id 48kn822ZS3znd4l;
        Sat, 21 Mar 2020 00:04:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=python.org; s=200901;
        t=1584763442; bh=wh02HqX9pdbDbEYUv1AYywDpIPUqHuf2fzXXLSJfi60=;
        h=From:To:Cc:Subject:Date:From;
        b=gk+Tbhx0mxLKTLSkkSw8DLQk6fC/a6lAsZV9Uu407MEEnmNfoTFJk61Mt9NJ6Omd5
         wo99FEIU5e45+KmbgS6lqFdoq1AYUDwA32sSGKC5rsaqQojfFNrMBsVKsivpztCaU0
         dR+vqotkNiTU3gjtXOdjwabqlNAY2H43gHsm8oUM=
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
        by mailauth.nyi.internal (Postfix) with ESMTP id 41EEB27C0054;
        Sat, 21 Mar 2020 00:04:00 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Sat, 21 Mar 2020 00:04:00 -0400
X-ME-Sender: <xms:MJJ1XkppIHBZg1-B-R7GalV52n-MgY0ZPNXaYiM52-oabXmviHAKOQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrudegvddgieefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
    dttdenucfhrhhomhepuegvnhhjrghmihhnucfrvghtvghrshhonhcuoegsvghnjhgrmhhi
    nhesphihthhhohhnrdhorhhgqeenucfkphepieeirdeguddruddtgedrvddtnecuvehluh
    hsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepsggtphdomhgvshhm
    thhprghuthhhphgvrhhsohhnrghlihhthidqvddtudeikeeffeejqdduudeliedtieehfe
    dqsggvnhhjrghmihhnpeepphihthhhohhnrdhorhhgsehfrghsthhmrghilhdrtghomh
X-ME-Proxy: <xmx:MJJ1XgOwUMwqg6vZgmdpE6-9bOD0qn2XyZurxOd-VffQIMIXm2A3qw>
    <xmx:MJJ1Xiwrk21fWjh4n53BdEiZMBoqHEz7bVxYofQsbQgmgHXo_g__Cg>
    <xmx:MJJ1XswnibS2F5ETQOL6lM5kQ16jnRIbTNIiHrv_dKWR1lq9QcE3oQ>
    <xmx:MJJ1XjnemXCX1i0nF_qVSCBWKYEHoCVl2acX39ghdNCnz4JHLX_NSA>
Received: from localhost.localdomain (c-66-41-104-20.hsd1.mn.comcast.net [66.41.104.20])
        by mail.messagingengine.com (Postfix) with ESMTPA id E01D730614FA;
        Sat, 21 Mar 2020 00:03:59 -0400 (EDT)
From:   Benjamin Peterson <benjamin@python.org>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] clock_getres.2: Document CLOCK_TAI
Date:   Fri, 20 Mar 2020 23:03:58 -0500
Message-Id: <20200321040358.19119-1-benjamin@python.org>
X-Mailer: git-send-email 2.20.1
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
index 3fb0ac61c..0f619ab0b 100644
--- a/man2/clock_getres.2
+++ b/man2/clock_getres.2
@@ -137,6 +137,16 @@ Requires per-architecture support,
 and probably also architecture support for this flag in the
 .BR vdso (7).
 .TP
+.BR CLOCK_TAI " (since Linux 3.10; Linux-specific)"
+.\" Added in commit 1ff3c9677bff7e468e0c487d0ffefe4e901d33f4
+System-wide clock derived from wall time ignoring leap seconds. This clock does
+experience discontinuities and backwards jumps caused by NTP inserting leap
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

