Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BA92C22326C
	for <lists+linux-man@lfdr.de>; Fri, 17 Jul 2020 06:36:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725936AbgGQEgs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Jul 2020 00:36:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725300AbgGQEgs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Jul 2020 00:36:48 -0400
X-Greylist: delayed 598 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Thu, 16 Jul 2020 21:36:47 PDT
Received: from mail.python.org (mail.python.org [IPv6:2a03:b0c0:2:d0::71:1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3CC1C061755
        for <linux-man@vger.kernel.org>; Thu, 16 Jul 2020 21:36:47 -0700 (PDT)
Received: from auth1-smtp.messagingengine.com (auth1-smtp.messagingengine.com [66.111.4.227])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.python.org (Postfix) with ESMTPSA id 4B7J3p4H99zpFJF;
        Fri, 17 Jul 2020 00:26:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=python.org; s=200901;
        t=1594960006; bh=uG6/FKMXQxgmoSgry6uU8lqi5nHXFrSxKjOceFzZCdk=;
        h=From:To:Cc:Subject:Date:From;
        b=th57CzEXF+kuQAmdT3qKmSscwCCUj6qc36FSwzDrgslXdPSYw7GQmrISfkkfollJy
         +4tGdOVc9Yet7N2QPX66mVoPUBKCzoDcKHXTi3MzCTCvQVct/+Ed9e0/ZKjr/BAwjH
         bwbKnI/XAEbEEPqiN+/LBrAtoQfGSE2iasuQEFSU=
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
        by mailauth.nyi.internal (Postfix) with ESMTP id 7596027C0054;
        Fri, 17 Jul 2020 00:26:45 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Fri, 17 Jul 2020 00:26:45 -0400
X-ME-Sender: <xms:hSgRX0OzhVLAGc5Ufg96Pj_4dn8BfPSxfrAYOsEipSWpl-mZQH0ufw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduiedrfeehgdekhecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffoggfgsedtkeertdertd
    dtnecuhfhrohhmpeeuvghnjhgrmhhinhcurfgvthgvrhhsohhnuceosggvnhhjrghmihhn
    sehphihthhhonhdrohhrgheqnecuggftrfgrthhtvghrnheptdejveevteffjedvhfelfe
    etuddvheeigeeiudeuhfejudekteeuveefteehkeeknecukfhppeeiiedrgedurddutdeg
    rddvtdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    gstghpodhmvghsmhhtphgruhhthhhpvghrshhonhgrlhhithihqddvtdduieekfeefjedq
    udduleeitdeiheefqdgsvghnjhgrmhhinheppehphihthhhonhdrohhrghesfhgrshhtmh
    grihhlrdgtohhm
X-ME-Proxy: <xmx:hSgRX6-hteXytJTS3ZcJoe8tn3fj85TaALQoICBLvshV0FPpD0wZlA>
    <xmx:hSgRX7RpTcT354RC1Mo_-_qTJT_RD-Q18faVyr94gDr5LQRRdP2F9w>
    <xmx:hSgRX8slwfDPycNkQ4OhAmq-rrVZl463KQV-T34nJttCegAAe_JOmQ>
    <xmx:hSgRX2ojkr-TQYFercXC40qeZGJJU5tOJ3BfxOTmzb1UN3ORfnjlAg>
Received: from localhost.localdomain (c-66-41-104-20.hsd1.mn.comcast.net [66.41.104.20])
        by mail.messagingengine.com (Postfix) with ESMTPA id 139263280065;
        Fri, 17 Jul 2020 00:26:45 -0400 (EDT)
From:   Benjamin Peterson <benjamin@python.org>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] cgroup_namespaces.7: wfix
Date:   Thu, 16 Jul 2020 23:26:43 -0500
Message-Id: <20200717042643.1013586-1-benjamin@python.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Benjamin Peterson <benjamin@python.org>
---
 man7/cgroup_namespaces.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/cgroup_namespaces.7 b/man7/cgroup_namespaces.7
index 773379aeb..1acb82feb 100644
--- a/man7/cgroup_namespaces.7
+++ b/man7/cgroup_namespaces.7
@@ -235,7 +235,7 @@ In the absence of cgroup namespacing, because the cgroup directory
 .IR /cg/1
 is owned (and writable) by UID 9000 and process
 .I X
-is also owned by user ID 9000, then process
+is also owned by user ID 9000, process
 .I X
 would be able to modify the contents of cgroups files
 (i.e., change cgroup settings) not only in
-- 
2.25.1

