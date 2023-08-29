Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA95478C89F
	for <lists+linux-man@lfdr.de>; Tue, 29 Aug 2023 17:31:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236112AbjH2Paf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Aug 2023 11:30:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39968 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237283AbjH2PaG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Aug 2023 11:30:06 -0400
Received: from smtp-out1.suse.de (smtp-out1.suse.de [IPv6:2001:67c:2178:6::1c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA7FB99
        for <linux-man@vger.kernel.org>; Tue, 29 Aug 2023 08:30:03 -0700 (PDT)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by smtp-out1.suse.de (Postfix) with ESMTPS id 5E61E21853;
        Tue, 29 Aug 2023 15:30:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
        t=1693323002; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=PQ379Jbw9D7uYxhQ1Nx9tZozX1AmzyeBv7jPLOnIOKg=;
        b=MnzsPD5qVFmzD80TS6+I2VVqZMyuwmYVKs7HzB8B8G5I+37R0p2fpv6WOXpjppeXtqwlBB
        LHJ5ABfAhAEr1lhDwmg4our2ds1Cj2BiSTVSWkL34dmI7lvLjXIr5GdqL38XRjQXVJEwQJ
        v/0gA/LpbyvnbSB6F8oqgZ+bwJfRS0I=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
        s=susede2_ed25519; t=1693323002;
        h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=PQ379Jbw9D7uYxhQ1Nx9tZozX1AmzyeBv7jPLOnIOKg=;
        b=dKzNt51bnNnPvyQXfa1so8iLFW7nxgC0yaORdrIQ7Q9VG3cVis6H1l3oRf7dtgPhJ2lUVn
        uOPYleNQ0930CqAg==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id F12B413301;
        Tue, 29 Aug 2023 15:30:01 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
        by imap2.suse-dmz.suse.de with ESMTPSA
        id lxj5L/kO7mTFIwAAMHmgww
        (envelope-from <akumar@suse.de>); Tue, 29 Aug 2023 15:30:01 +0000
From:   Avinesh Kumar <akumar@suse.de>
To:     alx@kernel.org
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v3] mmap.2: fix missing text
Date:   Tue, 29 Aug 2023 20:59:59 +0530
Message-ID: <20230829152959.31056-1-akumar@suse.de>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230829102137.17409-1-akumar@suse.de>
References: <20230829102137.17409-1-akumar@suse.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Fixes: 090fdddb43 ("memfd_create.2, mmap.2, shmget.2: Document the EPERM
for huge page allocations")
Signed-off-by: Avinesh Kumar <akumar@suse.de>
---
 man2/mmap.2 | 1 +
 1 file changed, 1 insertion(+)

diff --git a/man2/mmap.2 b/man2/mmap.2
index d0530be0f..f7e32013a 100644
--- a/man2/mmap.2
+++ b/man2/mmap.2
@@ -629,6 +629,7 @@ and is not a member of the
 group; see the description of
 .I /proc/sys/vm/sysctl_hugetlb_shm_group
 in
+.BR proc_sys (5).
 .TP
 .B ETXTBSY
 .B MAP_DENYWRITE
-- 
2.41.0

