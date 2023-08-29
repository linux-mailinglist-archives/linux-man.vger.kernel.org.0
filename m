Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DD9AF78C248
	for <lists+linux-man@lfdr.de>; Tue, 29 Aug 2023 12:22:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231260AbjH2KWA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Aug 2023 06:22:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232990AbjH2KVs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Aug 2023 06:21:48 -0400
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.220.28])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95A8791
        for <linux-man@vger.kernel.org>; Tue, 29 Aug 2023 03:21:41 -0700 (PDT)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by smtp-out1.suse.de (Postfix) with ESMTPS id 4C2732185E;
        Tue, 29 Aug 2023 10:21:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
        t=1693304500; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:  content-transfer-encoding:content-transfer-encoding;
        bh=u2/eHsWpL22QEhQERwPRT6ju7nBgcpYEvuDF9d/TbBk=;
        b=vQU8adZqW3/JfvUddb5d9b937KEIna50MfqRGJASH/RtV9Qt0oDrjFOgwXBLqPX/refnIj
        40q/MgncVUD9i9LylY8IFuEKaKU0ySOX9YY+oqYfesYj3kPkCBXaqtLUpJlKdeLpfpTjfZ
        LXwpAbV/gyXZMwkGVZfTrEeWB3xi/8o=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
        s=susede2_ed25519; t=1693304500;
        h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:  content-transfer-encoding:content-transfer-encoding;
        bh=u2/eHsWpL22QEhQERwPRT6ju7nBgcpYEvuDF9d/TbBk=;
        b=xApaYIeM5zhiqjtkqk099jks0ohqujJS0PPrvQBXTlmqfReDQ5NUXqkvBAfn0wL8hN9TEz
        Y7tt74cqkNnOT9Cg==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id DC44B138E2;
        Tue, 29 Aug 2023 10:21:39 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
        by imap2.suse-dmz.suse.de with ESMTPSA
        id ddvAKrPG7WR7dgAAMHmgww
        (envelope-from <akumar@suse.de>); Tue, 29 Aug 2023 10:21:39 +0000
From:   Avinesh Kumar <akumar@suse.de>
To:     alx@kernel.org
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2] mmap.2: fix missing text
Date:   Tue, 29 Aug 2023 15:51:34 +0530
Message-ID: <20230829102137.17409-1-akumar@suse.de>
X-Mailer: git-send-email 2.41.0
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
index d0530be0f..9de6b2796 100644
--- a/man2/mmap.2
+++ b/man2/mmap.2
@@ -629,6 +629,7 @@ and is not a member of the
 group; see the description of
 .I /proc/sys/vm/sysctl_hugetlb_shm_group
 in
+.BR proc (5).
 .TP
 .B ETXTBSY
 .B MAP_DENYWRITE
-- 
2.41.0

