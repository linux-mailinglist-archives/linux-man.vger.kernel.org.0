Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9E501320706
	for <lists+linux-man@lfdr.de>; Sat, 20 Feb 2021 21:13:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229809AbhBTUN3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Feb 2021 15:13:29 -0500
Received: from out4-smtp.messagingengine.com ([66.111.4.28]:46007 "EHLO
        out4-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229808AbhBTUN3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 Feb 2021 15:13:29 -0500
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
        by mailout.nyi.internal (Postfix) with ESMTP id 3E4F85C0081;
        Sat, 20 Feb 2021 15:12:43 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Sat, 20 Feb 2021 15:12:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=edef.eu; h=from
        :to:cc:subject:date:message-id:mime-version
        :content-transfer-encoding; s=fm2; bh=wq7SiLIou1nG93Yd9yqstc+qQt
        iy0eIWvhgCyCJ7Pdw=; b=xnAE6qko0CAWcEc5KOYTTlq77LsHMSSiA3ow4zn49i
        M1VDTaOP6B5YqXeZGM3Wf4bGcAL0wP1U1X5DE9Utk5R5n4M4wQ4wgdL8pXLhqJLs
        dPmLhuq/8pYkXyEToY0bWKvD0taTWbW0r65plJxCtp1+NmKhDWw1kLXacueoGLfx
        LTgfurxu7lXZvqrHDJS9Mjx7A0I/gYrdW+VYwVpmsZ5HmLure0VuLUCvq/jlcw83
        oClFM/+oQfoJaigfqGIEdMEa3PgxnnUOH4ywV0tw6MBoWSrYXqSioxYliyy68l9k
        82ZhsdPgIu+FHtXusS1NeTXGq6iUyCXU6ZHpmOL51OoA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
        :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=wq7SiLIou1nG93Yd9
        yqstc+qQtiy0eIWvhgCyCJ7Pdw=; b=lhLFuGV5zj7wzLm3OZAyl3YCRKousyuxg
        2tf76krNDYLmK2B1y5RfCsiIcb1T446YyCKhv+3I2ksJdXlOftG2oIxxUBOwTmmt
        gOhHgaJYsvHnUzkW8BLAqEHFQHgWUWSvv7k3cWnaVfM4xhLwwe9L5DfkaAvk9sTd
        MxLlkcCzv5YAgs13cizBcgKHGZx12UtwwpOGsynJF8HvrbQd0jmT7nzI/adrOS8p
        5b2vnlQYnVrnzWBJBpOiZ9D6yIgCGxw52noUEZ60IwG5960R9B7pvLxPVbLpwIIs
        3mUSxqBPtgLESbZkEzntAPgTkptE2hpcO+N8Kpi3zkIz7UdXIIaNQ==
X-ME-Sender: <xms:O20xYPWvX87KBkCp2ohejgk0d7FIosGzMdfHdLHYMzY42e61YqH5RA>
    <xme:O20xYHklpsrwhyL0Iw3GBTHGvHCqsfRGMOhV9ZwmfKIAeTt9HlytMwRVmnjDP6RSO
    G61Q4m89HAvoROVFA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrjeekgdduvdelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
    dttdenucfhrhhomhepvgguvghfuceovgguvghfsegvuggvfhdrvghuqeenucggtffrrght
    thgvrhhnpeffteetheefleejveelffefheeiuddtgffhfeejlefhvefhueejuddvgeejfe
    ehudenucfkphepudelhedrvddtuddrvddtiedrudejfeenucevlhhushhtvghrufhiiigv
    pedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegvuggvfhesvgguvghfrdgvuh
X-ME-Proxy: <xmx:O20xYLYCVf9SNFSm37jDbCsEcNqOX_RzggOcL5pjXfdmIc__0lqPAw>
    <xmx:O20xYKUXTbAaPfiW4qy7qByzV6whmmPZ1fwsp95XmWm1jo7buLPVng>
    <xmx:O20xYJkTcXJA9Asjd-1KzK4swWLOrvO-DPnwgyC_U9t6dX0aqR7DaQ>
    <xmx:O20xYIuAP009AYZ273ftLATgofduh4uRzHIg2xhsZPAkEqhqf5Mccw>
Received: from localhost (uhura.edef.eu [195.201.206.173])
        by mail.messagingengine.com (Postfix) with ESMTPA id C4DAC240057;
        Sat, 20 Feb 2021 15:12:42 -0500 (EST)
From:   edef <edef@edef.eu>
To:     linux-man@vger.kernel.org
Cc:     mtk.manpages@gmail.com, edef <edef@edef.eu>
Subject: [PATCH] futex.2: tfix
Date:   Sat, 20 Feb 2021 20:12:23 +0000
Message-Id: <20210220201221.67968-1-edef@edef.eu>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: edef <edef@edef.eu>
---
 man2/futex.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/futex.2 b/man2/futex.2
index 60b3e08dd..e698178d2 100644
--- a/man2/futex.2
+++ b/man2/futex.2
@@ -1573,7 +1573,7 @@ and the kernel state;
 that is, the kernel detected a waiter which waits via
 .BR FUTEX_WAIT
 or
-.BR FUTEX_WAIT_BITESET
+.BR FUTEX_WAIT_BITSET
 on
 .IR uaddr .
 .TP
-- 
2.30.0

