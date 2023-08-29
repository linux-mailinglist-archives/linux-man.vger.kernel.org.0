Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E44E478C0EC
	for <lists+linux-man@lfdr.de>; Tue, 29 Aug 2023 11:04:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231704AbjH2JDn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Aug 2023 05:03:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47840 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231786AbjH2JDl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Aug 2023 05:03:41 -0400
Received: from smtp-out2.suse.de (smtp-out2.suse.de [IPv6:2001:67c:2178:6::1d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D234107
        for <linux-man@vger.kernel.org>; Tue, 29 Aug 2023 02:03:39 -0700 (PDT)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by smtp-out2.suse.de (Postfix) with ESMTPS id 05D0F1F8AE;
        Tue, 29 Aug 2023 09:03:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
        t=1693299818; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:  content-transfer-encoding:content-transfer-encoding;
        bh=GuPGYVwyy6Ct5i38h01e8fqcw32QxRbe0aQhtc/m2ck=;
        b=j57GTjgjb4n9usOAzG/IM/cciCZFAOUpeaVLsrQrXW13RYGoJvV+uYHygthnA1nL28CYXQ
        E4fpS1AutQG+uurFlEwJOjfpkAih8ofLwMBOFc6s6TI5SrirF/Qn7cyXQNOVvcelVHzmlQ
        Dd8UWvFa0DUwjUBuLbpneIS5XG8gvrA=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
        s=susede2_ed25519; t=1693299818;
        h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:  content-transfer-encoding:content-transfer-encoding;
        bh=GuPGYVwyy6Ct5i38h01e8fqcw32QxRbe0aQhtc/m2ck=;
        b=QtMMC0vR5BbrZ2jloELZOH3sGwm0qnAWplubRd5M5mINhlbP0HUdKPB+pGJhVnSEe5rYSF
        0HnVFUGomODuriDw==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 988AD13301;
        Tue, 29 Aug 2023 09:03:37 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
        by imap2.suse-dmz.suse.de with ESMTPSA
        id Vj8tGmm07WSyTgAAMHmgww
        (envelope-from <akumar@suse.de>); Tue, 29 Aug 2023 09:03:37 +0000
From:   Avinesh Kumar <akumar@suse.de>
To:     alx@kernel.org
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 1/2] inode.7: Remove duplicate field name
Date:   Tue, 29 Aug 2023 14:33:30 +0530
Message-ID: <20230829090335.14051-1-akumar@suse.de>
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

