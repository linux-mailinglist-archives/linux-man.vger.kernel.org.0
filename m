Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C9FF378C253
	for <lists+linux-man@lfdr.de>; Tue, 29 Aug 2023 12:31:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231243AbjH2Kag (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Aug 2023 06:30:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53238 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235120AbjH2KaK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Aug 2023 06:30:10 -0400
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.220.28])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC73F103
        for <linux-man@vger.kernel.org>; Tue, 29 Aug 2023 03:30:07 -0700 (PDT)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by smtp-out1.suse.de (Postfix) with ESMTPS id B2581212AE;
        Tue, 29 Aug 2023 10:30:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
        t=1693305006; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:  content-transfer-encoding:content-transfer-encoding;
        bh=RZ9Nl+ph6InrtJ2dNClqEKmHy4gZLi5Pb6qJFU7J97A=;
        b=SMb6/U/oNDsthlDIvwemy+e7jfX4OH67qZ21DGvHAZ4s+S/gksqdyxUqjv8WVvM7Z2mHQm
        siQ9g4T05q4O3KxP6H1JQEHWT3KsoOgQ0VSyMAHzKo6Au7szQr7puFHhHugwrASJalqFEp
        CCVQEhugnQxQ+hVayOzhKrsmnUWsTbI=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
        s=susede2_ed25519; t=1693305006;
        h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:  content-transfer-encoding:content-transfer-encoding;
        bh=RZ9Nl+ph6InrtJ2dNClqEKmHy4gZLi5Pb6qJFU7J97A=;
        b=pgrCCF2jtk2Gy0CLOSJldrsTZfAcs38mu2JqXM1vfrpoScvShs4eNCfR70hUOnF7xrO1cu
        t8POvUfY5E2QGTBg==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 4F80B138E2;
        Tue, 29 Aug 2023 10:30:06 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
        by imap2.suse-dmz.suse.de with ESMTPSA
        id pS9OCK7I7WTZegAAMHmgww
        (envelope-from <akumar@suse.de>); Tue, 29 Aug 2023 10:30:06 +0000
From:   Avinesh Kumar <akumar@suse.de>
To:     alx@kernel.org
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2 1/2] inode.7: Remove duplicate field name
Date:   Tue, 29 Aug 2023 16:00:00 +0530
Message-ID: <20230829103004.18459-1-akumar@suse.de>
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

Fixes: b48c75727c64 ("inode.7: New page with information about inodes")
Signed-off-by: Avinesh Kumar <akumar@suse.de>
---
 man7/inode.7 | 1 -
 1 file changed, 1 deletion(-)

diff --git a/man7/inode.7 b/man7/inode.7
index 2fc4fde3c..5140fb069 100644
--- a/man7/inode.7
+++ b/man7/inode.7
@@ -56,7 +56,6 @@ Additional links to an existing file are created using
 .BR link (2).
 .TP
 User ID
-.I st_uid
 \fIstat.st_uid\fP; \fIstatx.stx_uid\fP
 .IP
 This field records the user ID of the owner of the file.
-- 
2.41.0

