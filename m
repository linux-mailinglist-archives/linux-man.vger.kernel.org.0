Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 658446D7A1D
	for <lists+linux-man@lfdr.de>; Wed,  5 Apr 2023 12:44:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237457AbjDEKoc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 5 Apr 2023 06:44:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237435AbjDEKob (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 5 Apr 2023 06:44:31 -0400
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90EC04ECD
        for <linux-man@vger.kernel.org>; Wed,  5 Apr 2023 03:44:30 -0700 (PDT)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by smtp-out2.suse.de (Postfix) with ESMTPS id 2AD2F2065A;
        Wed,  5 Apr 2023 10:44:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
        t=1680691469; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:  content-transfer-encoding:content-transfer-encoding;
        bh=ocADRx04vq2VaDXRExNqYrfj54WlsI6jRT03552v8CY=;
        b=PdvBzTc9IE3qsyHQ92SsLcVSGTG1+dhG1m3E7G8f3FomxKbIv2C5VyZ56MGSULuOXqVlj0
        4qnzdfcyFlfxAXCzHt1A4Stpj6116J6TK/Z4SzwuadQIOJktW4XOGNqVv+cw922hutYmR8
        tFQbKuO5PbKBDpAE09K/z1pYZ3BX614=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
        s=susede2_ed25519; t=1680691469;
        h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:  content-transfer-encoding:content-transfer-encoding;
        bh=ocADRx04vq2VaDXRExNqYrfj54WlsI6jRT03552v8CY=;
        b=6SaNm4k/6U7baAyAmnUwMdwaKz4EPx+ZyuszzNr87cfCLgPho5mPkHBwi1tBDdT1cwu0yQ
        MFPuCbdavQavUyBQ==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id BA49E13A10;
        Wed,  5 Apr 2023 10:44:28 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
        by imap2.suse-dmz.suse.de with ESMTPSA
        id vus2JAxRLWRvDAAAMHmgww
        (envelope-from <akumar@suse.de>); Wed, 05 Apr 2023 10:44:28 +0000
From:   Avinesh Kumar <akumar@suse.de>
To:     alx@kernel.org
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] mlock.2: Improve wording
Date:   Wed,  5 Apr 2023 16:14:26 +0530
Message-Id: <20230405104426.5007-1-akumar@suse.de>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Avinesh Kumar <akumar@suse.de>
---
 man2/mlock.2 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man2/mlock.2 b/man2/mlock.2
index 30828fbdf..ecd7158e5 100644
--- a/man2/mlock.2
+++ b/man2/mlock.2
@@ -36,8 +36,8 @@ and
 .BR munlockall ()
 perform the converse operation,
 unlocking part or all of the calling process's virtual
-address space, so that pages in the specified virtual address range may
-once more be swapped out if required by the kernel memory manager.
+address space, so that pages in the specified virtual address range
+can be swapped out again if required by the kernel memory manager.
 .PP
 Memory locking and unlocking are performed in units of whole pages.
 .SS mlock(), mlock2(), and munlock()
-- 
2.40.0

