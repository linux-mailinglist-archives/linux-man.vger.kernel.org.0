Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 17D8D64D6F7
	for <lists+linux-man@lfdr.de>; Thu, 15 Dec 2022 08:06:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230010AbiLOHGN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 15 Dec 2022 02:06:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57512 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229619AbiLOHF0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 15 Dec 2022 02:05:26 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD5AC6C734
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 23:00:05 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 5965D61CEF
        for <linux-man@vger.kernel.org>; Thu, 15 Dec 2022 07:00:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9EF56C433B0
        for <linux-man@vger.kernel.org>; Thu, 15 Dec 2022 07:00:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1671087604;
        bh=OBRkJW329KBnNn03hN7E2+dto4YYWCsgANu927bs+PA=;
        h=From:To:Subject:Date:From;
        b=feE5HL7Yw+tA3Qy9f0NY5wTj6AVelzOVlmQbGhjD1K54pzz4TeX8G0IKkPJ8vGXf/
         eGoIbrY0ekxCHGyFfL4kznIHOmrdWyXnADtDnkpEBuaG19YPF49yqjurLcuzmMGGrt
         ksVKyj5rpVVmAot0lft6yxmG+dW8N0T5oiCIVNG6kUSoC5OjHBTN7ChBTQV6Gj5af8
         a4MFUNOAD4bpw6K7DZE+66RXkpYkRoqTQS8Tj+l1qjjOVe6qyuSRH1xhFFRjklcWQx
         dyZcij0hlRUMIyNrtqJ2BHaZlhazQaI1+JU6zUbzvpAVUKJ0cSJfilpmym9u929wi6
         JJHbH0lqag9hQ==
From:   Eric Biggers <ebiggers@kernel.org>
To:     linux-man@vger.kernel.org
Subject: [PATCH] ioctl_userfaultfd.2: tfix
Date:   Wed, 14 Dec 2022 22:59:58 -0800
Message-Id: <20221215065958.65921-1-ebiggers@kernel.org>
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
 man2/ioctl_userfaultfd.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/ioctl_userfaultfd.2 b/man2/ioctl_userfaultfd.2
index cb56315f2..a78353c54 100644
--- a/man2/ioctl_userfaultfd.2
+++ b/man2/ioctl_userfaultfd.2
@@ -321,7 +321,7 @@ Track minor page faults.
 Since Linux 5.13,
 only hugetlbfs ranges are compatible.
 Since Linux 5.14,
-compatiblity with shmem ranges was added.
+compatibility with shmem ranges was added.
 .PP
 If the operation is successful, the kernel modifies the
 .I ioctls
-- 
2.38.1

