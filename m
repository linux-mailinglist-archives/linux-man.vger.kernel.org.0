Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 48E3778C254
	for <lists+linux-man@lfdr.de>; Tue, 29 Aug 2023 12:31:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234001AbjH2Kah (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Aug 2023 06:30:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40052 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235133AbjH2KaN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Aug 2023 06:30:13 -0400
Received: from smtp-out1.suse.de (smtp-out1.suse.de [IPv6:2001:67c:2178:6::1c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D3D118F
        for <linux-man@vger.kernel.org>; Tue, 29 Aug 2023 03:30:11 -0700 (PDT)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by smtp-out1.suse.de (Postfix) with ESMTPS id 97D1921864;
        Tue, 29 Aug 2023 10:30:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
        t=1693305009; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=/5Z7B6OF5rYPd7mdxHMX+kshLkufFnjnmg+RTEAPtYQ=;
        b=Zx2Bs8rkSTfLfJVmtfNQDpDW19QWHmSAzgXCMuRyP0ILjEL91U5/RV0nQGkG9Yf/TvRXBM
        Sj8xkygnBVWPqYk0Ozm71fCAlp8TOsr93cGfjPuD9A8pCLjXLSrmX5gnX3Tdbuen5XIAXD
        L97rcxK4CR2bPyORWhIfnPZNspjDjrI=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
        s=susede2_ed25519; t=1693305009;
        h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=/5Z7B6OF5rYPd7mdxHMX+kshLkufFnjnmg+RTEAPtYQ=;
        b=eceE7Y0lVubx/L4SQWnWgjmeXusQTOpdimskWuAQs/3yjwQxbZ65e8OAlNCGyj89i/2br9
        Ek3ASiC5vzTc+SCQ==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 36760138E2;
        Tue, 29 Aug 2023 10:30:09 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
        by imap2.suse-dmz.suse.de with ESMTPSA
        id p7xQArHI7WTkegAAMHmgww
        (envelope-from <akumar@suse.de>); Tue, 29 Aug 2023 10:30:09 +0000
From:   Avinesh Kumar <akumar@suse.de>
To:     alx@kernel.org
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2 2/2] inode.7: correct the field name for number of blocks
Date:   Tue, 29 Aug 2023 16:00:01 +0530
Message-ID: <20230829103004.18459-2-akumar@suse.de>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230829103004.18459-1-akumar@suse.de>
References: <20230829103004.18459-1-akumar@suse.de>
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

Fixes: b48c75727c64 ("inode.7: New page with information about inodes")
Signed-off-by: Avinesh Kumar <akumar@suse.de>
---
 man7/inode.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/inode.7 b/man7/inode.7
index 5140fb069..7b7e4dcd9 100644
--- a/man7/inode.7
+++ b/man7/inode.7
@@ -98,7 +98,7 @@ This field gives the "preferred" blocksize for efficient filesystem I/O.
 an inefficient read-modify-rewrite.)
 .TP
 Number of blocks allocated to the file
-\fIstat.st_blocks\fP; \fIstatx.stx_size\fP
+\fIstat.st_blocks\fP; \fIstatx.stx_blocks\fP
 .IP
 This field indicates the number of blocks allocated to the file,
 512-byte units,
-- 
2.41.0

