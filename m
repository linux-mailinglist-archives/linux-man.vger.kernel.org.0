Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EAAB859F0C6
	for <lists+linux-man@lfdr.de>; Wed, 24 Aug 2022 03:21:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233254AbiHXBVn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 23 Aug 2022 21:21:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38152 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231830AbiHXBVl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 23 Aug 2022 21:21:41 -0400
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.220.28])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F031B9FC8
        for <linux-man@vger.kernel.org>; Tue, 23 Aug 2022 18:21:40 -0700 (PDT)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by smtp-out1.suse.de (Postfix) with ESMTPS id A836B224F0;
        Wed, 24 Aug 2022 01:21:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
        t=1661304099; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=poQDs59xIU6t57CbaCXsACqS10ybs92DtADLtLIcFeI=;
        b=AziDPC2JV+Ps2KqfbCM4VlIS1DkyD0cBkSrHcDzgOPysnEJFsOA1PuVo5vwBVdhn2SlNpt
        5PdlZqbXUg8ibeukS8/pC/QUJECpJjKSL3vTD6RLsJtvJa4L48xI3v6JDn1vPaXQlzyj6s
        rCRTFz5L3udlqJFLfF1ZTEpv/X4rOxE=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
        s=susede2_ed25519; t=1661304099;
        h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=poQDs59xIU6t57CbaCXsACqS10ybs92DtADLtLIcFeI=;
        b=F3XReInxH+cXynqAKIt7/ilA/YEzIEvqen7UtQt329xsbUU5EYeggFNma341qqAd+Dwddr
        XPKZ7yhp8x/tl/CQ==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 265FD13A89;
        Wed, 24 Aug 2022 01:21:37 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
        by imap2.suse-dmz.suse.de with ESMTPSA
        id MFA8NCF9BWN9WgAAMHmgww
        (envelope-from <neilb@suse.de>); Wed, 24 Aug 2022 01:21:37 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
MIME-Version: 1.0
From:   "NeilBrown" <neilb@suse.de>
To:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Cc:     Jeff Layton <jlayton@kernel.org>
Subject: [PATCH] utime.2, utimensat.2: explicitly mention ctime changing.
Date:   Wed, 24 Aug 2022 11:21:34 +1000
Message-id: <166130409455.27490.3548169201261980550@noble.neil.brown.name>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


utime and related calls always change the ctime.  It is worth making
this explicit.
This is clear from the code (vfs_utimes() in fs/utimes.c always sets
ATTR_CTIME) and is documented in
  https://pubs.opengroup.org/onlinepubs/007904875/functions/utimes.html

Signed-off-by: NeilBrown <neilb@suse.de>
---
 man2/utime.2     | 2 ++
 man2/utimensat.2 | 3 +++
 2 files changed, 5 insertions(+)

diff --git a/man2/utime.2 b/man2/utime.2
index 5338723574e2..7557d680afa3 100644
--- a/man2/utime.2
+++ b/man2/utime.2
@@ -39,6 +39,8 @@ to the
 fields of
 .I times
 respectively.
+The status change time (ctime) will be set to the current time, even if the
+other time stamps don't actually change.
 .PP
 If
 .I times
diff --git a/man2/utimensat.2 b/man2/utimensat.2
index 11cf3ee24129..2abf8e196ee1 100644
--- a/man2/utimensat.2
+++ b/man2/utimensat.2
@@ -101,6 +101,9 @@ If
 .I times
 is NULL, then both timestamps are set to the current time.
 .\"
+.PP
+The status change time (ctime) will be set to the current time, even if the
+other time stamps don't actually change.
 .SS Permissions requirements
 To set both file timestamps to the current time (i.e.,
 .I times
-- 
2.37.1

