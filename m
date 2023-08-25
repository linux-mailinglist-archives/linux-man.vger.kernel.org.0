Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8E991788CE5
	for <lists+linux-man@lfdr.de>; Fri, 25 Aug 2023 18:00:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233028AbjHYQAG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Aug 2023 12:00:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245203AbjHYP74 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 25 Aug 2023 11:59:56 -0400
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.220.28])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F04822107
        for <linux-man@vger.kernel.org>; Fri, 25 Aug 2023 08:59:54 -0700 (PDT)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by smtp-out1.suse.de (Postfix) with ESMTPS id AB61E22332;
        Fri, 25 Aug 2023 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
        t=1692979193; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:  content-transfer-encoding:content-transfer-encoding;
        bh=1LJmZQcobjZlXMefXCQjfprRn3YPNzmaCTCgAXkXTHg=;
        b=IMwWO4eKVZpDWb3J72+vvqXHn7LxTMaym+FeitmASYxTNtsDHavIt72JORQdXhULZUCKOk
        VMYUTKonWx/AiZ85gcOd4XUhhUysU1MklTkx9PPyWOfvqQ8aooJG3BNxsu2CK1+oG7ho+C
        i8GrLU6nfVlaRZxA4U8K/tO13GBr08Y=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
        s=susede2_ed25519; t=1692979193;
        h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:  content-transfer-encoding:content-transfer-encoding;
        bh=1LJmZQcobjZlXMefXCQjfprRn3YPNzmaCTCgAXkXTHg=;
        b=cQ63MK0eU0J/iSt8BYVPNi7+0btU7Btqnks6JDlY7L9vMQ5sqcWI5pQouMIupw3sdOa05w
        P3JUNiGskxqWDlAQ==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 2E8CA138F9;
        Fri, 25 Aug 2023 15:59:52 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
        by imap2.suse-dmz.suse.de with ESMTPSA
        id 4FaEN/jP6GQVQgAAMHmgww
        (envelope-from <akumar@suse.de>); Fri, 25 Aug 2023 15:59:52 +0000
From:   Avinesh Kumar <akumar@suse.de>
To:     alx@kernel.org
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] mmap.2: fix missing text
Date:   Fri, 25 Aug 2023 21:29:48 +0530
Message-ID: <20230825155950.17010-1-akumar@suse.de>
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

