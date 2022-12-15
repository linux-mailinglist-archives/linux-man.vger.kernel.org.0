Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2DF2264D6E2
	for <lists+linux-man@lfdr.de>; Thu, 15 Dec 2022 08:03:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229784AbiLOHDo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 15 Dec 2022 02:03:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229996AbiLOHCE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 15 Dec 2022 02:02:04 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2B09B1CA
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 22:58:28 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 7AF96617DE
        for <linux-man@vger.kernel.org>; Thu, 15 Dec 2022 06:58:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB588C4332D
        for <linux-man@vger.kernel.org>; Thu, 15 Dec 2022 06:58:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1671087507;
        bh=1omupT6rUrMvG++CUNANTk4GM5ke+lVDAyoKSQKLEQc=;
        h=From:To:Subject:Date:From;
        b=WGCQQZhv6O9yRj72FyDN9z4ps7vd3KaiXxMbsBUVFWRfKbRxUXK3AJX4V/uuLaUOD
         1YiKLIlXSINRQUHC5xvbVJZ1Byg76aMmVxI1tlLNwsIB3nl2zE7Cm5sEN9s2bv2D22
         a7EEZ8f0pMYtz04de4XSeQS4781mYYXCa/FUiWZgRh8EUEwrmNqwn3QgmWz2+6BWAl
         IbJu3VdGg+rzvQWXsUTsf13uY3anW33/55Nflcs9ipq14ogpxpxqGj0bDu2lP3vrWc
         +bwHemBlKjWxCdDwglD3qBvwqmYU2c/orw3Uh8/rpAKpTV4m8CThkeMQBYPZgMnaM7
         RT2EEHJc7xLww==
From:   Eric Biggers <ebiggers@kernel.org>
To:     linux-man@vger.kernel.org
Subject: [PATCH] INSTALL: tfix
Date:   Wed, 14 Dec 2022 22:58:16 -0800
Message-Id: <20221215065816.65765-1-ebiggers@kernel.org>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Eric Biggers <ebiggers@google.com>

Signed-off-by: Eric Biggers <ebiggers@google.com>
---
 INSTALL | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/INSTALL b/INSTALL
index d2367883b..eb90c5b30 100644
--- a/INSTALL
+++ b/INSTALL
@@ -47,7 +47,7 @@ Description
            -  DESTDIR
            -  prefix
 
-       Comand Variables
+       Command Variables
            Some commands use flags.  A command named 'command' will have a
            variable COMMAND to specify an alternative command name.  To append
            flags to the default ones, set the variable EXTRA_COMMANDFLAGS.  To
-- 
2.38.1

