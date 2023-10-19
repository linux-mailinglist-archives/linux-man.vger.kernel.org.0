Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A8F1A7CFA9A
	for <lists+linux-man@lfdr.de>; Thu, 19 Oct 2023 15:13:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345641AbjJSNNn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 19 Oct 2023 09:13:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345824AbjJSNNm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 19 Oct 2023 09:13:42 -0400
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3972F131
        for <linux-man@vger.kernel.org>; Thu, 19 Oct 2023 06:13:40 -0700 (PDT)
Received: from localhost.localdomain (unknown [39.45.48.178])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        (Authenticated sender: usama.anjum)
        by madras.collabora.co.uk (Postfix) with ESMTPSA id 6EC676607328;
        Thu, 19 Oct 2023 14:13:37 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1697721219;
        bh=FGcTnUgcmsob1qcp1vchDI9aTWtfFoDUSeIjnnNliyo=;
        h=From:To:Cc:Subject:Date:From;
        b=Ifc4r9m5q9yjsnHd8rHZfHk8WV5fbkVKI+qpy2lVP0YzLSivkhtnN/cGuvT6OlYyd
         ScnbAd8+D0w0IBjJUfcUhwVsLui/ruaNrJ/xTaV0r+73DL+mn35mzWnLMnDOUTOx80
         SRq2lgIf8Rw5ZvEyHqrrAesHiQJNNSCIsvcfvuO8fgsBXaCIFTKXObHiw0/GHhy9cp
         B0uQpI5EX6TkOGG1UnprSRwL/f+2uAfNklVz2jrwPkatlGRCV8R3ILl78drp27VhV/
         KoBWlNYIS9H02mGXg+RCcEAP2u/XxSB30mKdVlNE8RZsqgIC77oWksrKKKSrhE4v+f
         9SZ9ocC5T75Jw==
From:   Muhammad Usama Anjum <usama.anjum@collabora.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     Muhammad Usama Anjum <usama.anjum@collabora.com>,
        kernel@collabora.com, linux-man@vger.kernel.org
Subject: [PATCH 1/2] ioctl_userfaultfd.2: add UFFD_FEATURE_WP_ASYNC
Date:   Thu, 19 Oct 2023 18:12:44 +0500
Message-ID: <20231019131252.2368728-1-usama.anjum@collabora.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Muhammad Usama Anjum <usama.anjum@collabora.com>
---
Changes since v1:
- Employ sementic new lines by breaking sentence before "by"
---
 man2/ioctl_userfaultfd.2 | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/man2/ioctl_userfaultfd.2 b/man2/ioctl_userfaultfd.2
index e68085262..f6cafd9a2 100644
--- a/man2/ioctl_userfaultfd.2
+++ b/man2/ioctl_userfaultfd.2
@@ -244,6 +244,11 @@ If this feature bit is set,
 the kernel supports resolving faults with the
 .B UFFDIO_POISON
 ioctl.
+.TP
+.BR UFFD_FEATURE_WP_ASYNC " (since Linux 6.7)"
+If this feature bit is set,
+the write protection faults would be asynchronously resolved
+by the kernel.
 .PP
 The returned
 .I ioctls
-- 
2.42.0

