Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B7A346D920B
	for <lists+linux-man@lfdr.de>; Thu,  6 Apr 2023 10:54:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231484AbjDFIy5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 6 Apr 2023 04:54:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229456AbjDFIyv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 6 Apr 2023 04:54:51 -0400
X-Greylist: delayed 598 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Thu, 06 Apr 2023 01:54:47 PDT
Received: from sosiego.soundray.org (sosiego.soundray.org [116.203.207.114])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1F794EFD
        for <linux-man@vger.kernel.org>; Thu,  6 Apr 2023 01:54:47 -0700 (PDT)
From:   Linus Heckemann <git@sphalerite.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sphalerite.org;
        s=sosiego; t=1680770687;
        bh=V30AxIokxsyExVrf7DdHfi77qcS/0LjPSOBtc5c67TI=;
        h=From:To:Cc:Subject:Date;
        b=IfIwP97BWHJIYeWAztkOhHNff8wYigcTaS6AKPWsSxzQ1RcP7dKZQN3SHMsQgn9mx
         +EdjOr04RwFSTUcutrrUXZF1E77LNU9Ci6d6HRsEogcteipBX7pgH8OXCJy7RVvkbp
         rfA2NGYfdWUQUi1RZgc/Acd/wHydvmMCIvL9M+sU=
To:     linux-man@vger.kernel.org, alx.manpages@gmail.com,
        mtk.manpages@gmail.com
Cc:     Linus Heckemann <git@sphalerite.org>
Subject: [PATCH] rtnetlink.7: Document IFLA_PERM_ADDRESS
Date:   Thu,  6 Apr 2023 10:44:45 +0200
Message-Id: <20230406084445.1416637-1-git@sphalerite.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

---
 man7/rtnetlink.7 | 1 +
 1 file changed, 1 insertion(+)

diff --git a/man7/rtnetlink.7 b/man7/rtnetlink.7
index 2ce541c37..6061b5fd4 100644
--- a/man7/rtnetlink.7
+++ b/man7/rtnetlink.7
@@ -105,6 +105,7 @@ IFLA_QDISC:asciiz string:Queueing discipline
 IFLA_STATS:T{
 see below
 T}:Interface Statistics
+IFLA_PERM_ADDRESS:hardware address:hardware address provided by device (since 5.5)
 .TE
 .IP
 The value type for
-- 
2.38.4

