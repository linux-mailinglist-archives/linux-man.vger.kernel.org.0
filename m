Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B58485F6769
	for <lists+linux-man@lfdr.de>; Thu,  6 Oct 2022 15:09:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229543AbiJFNI7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 6 Oct 2022 09:08:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231623AbiJFNIm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 6 Oct 2022 09:08:42 -0400
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.220.28])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4AFC4A5989
        for <linux-man@vger.kernel.org>; Thu,  6 Oct 2022 06:08:12 -0700 (PDT)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by smtp-out1.suse.de (Postfix) with ESMTPS id E28E021A55;
        Thu,  6 Oct 2022 13:08:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
        t=1665061690; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:  content-transfer-encoding:content-transfer-encoding;
        bh=kxJU+J0oQn9MCd4+JuiTF89xADBl/P8WhwozN42PluU=;
        b=dLmF81KuxbbUAQM94B275JL/qHD7fq+sJOvo6WhfffXDjcRCj7Pby1bmHYNx9/7scitR+x
        VrPnWXveciKOhBBlHWzx4GnrpcCwAVz2cBI//UV7I9DxQ8uYchS/1S9+GpqJ5dfyvfMeHk
        OTNP8nonbIe6jH04o1Vyrv/Er/Lp9i8=
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id A4DC21376E;
        Thu,  6 Oct 2022 13:08:10 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
        by imap2.suse-dmz.suse.de with ESMTPSA
        id T9TbJTrTPmMXQAAAMHmgww
        (envelope-from <andrea.cervesato@suse.com>); Thu, 06 Oct 2022 13:08:10 +0000
From:   Andrea Cervesato <andrea.cervesato@suse.com>
To:     linux-man@vger.kernel.org
Cc:     Andrea Cervesato <andrea.cervesato@suse.com>
Subject: [patch] proc.5: tfix
Date:   Thu,  6 Oct 2022 15:06:56 +0200
Message-Id: <20221006130656.25124-1-andrea.cervesato@suse.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

"KernelPageSize" and "MMUPageSize" are repeated in the
/proc/[pid]/smaps format example.

Signed-off-by: Andrea Cervesato <andrea.cervesato@suse.com>
---
 man5/proc.5 | 2 --
 1 file changed, 2 deletions(-)

diff --git a/man5/proc.5 b/man5/proc.5
index 1fc6cd03d..d8bbec3aa 100644
--- a/man5/proc.5
+++ b/man5/proc.5
@@ -1959,8 +1959,6 @@ ShmemPmdMapped:        0 kB
 Swap:                  0 kB
 KernelPageSize:        4 kB
 MMUPageSize:           4 kB
-KernelPageSize:        4 kB
-MMUPageSize:           4 kB
 Locked:                0 kB
 ProtectionKey:         0
 VmFlags: rd ex mr mw me dw
-- 
2.35.3

