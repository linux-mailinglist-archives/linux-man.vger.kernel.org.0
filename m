Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E8CD77CC710
	for <lists+linux-man@lfdr.de>; Tue, 17 Oct 2023 17:09:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344027AbjJQPJU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 17 Oct 2023 11:09:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45024 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343616AbjJQPJT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 17 Oct 2023 11:09:19 -0400
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A928FED
        for <linux-man@vger.kernel.org>; Tue, 17 Oct 2023 08:09:17 -0700 (PDT)
Received: from localhost.localdomain (unknown [39.45.48.178])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        (Authenticated sender: usama.anjum)
        by madras.collabora.co.uk (Postfix) with ESMTPSA id 70CD1660297B;
        Tue, 17 Oct 2023 16:09:14 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1697555356;
        bh=wyqAsdBJnTIx4NkzOJPXfkGQTSEwkKSvgMdCBEkuZu4=;
        h=From:To:Cc:Subject:Date:From;
        b=LexEreaA4x4X5bSkXjf+KsGpgEkjfeHnFBMsXAs/TvINEfKvu4wgB7G1QGdvjG2/6
         9cCcJDC3BZinFWFVwSlFz++zMExWQ6qao3D1AcEOHhm8sOb7HGi+5nJbZbY1qzD/Ac
         yNj/cTQVk6yBV2LHNYV5AuA08mEj+51XutYzPwHC1mwxSbwTA7HBhj73/g/POt7E4d
         I1YFLEu9go7hFVsUpM0znMVuYibaRuN4GH5HuJqOMm/9kB+fnT91WBYj78vjtUGNtD
         9VROIpulflo00D6Nj0/AKWa5Q9BX2ey2jdGeapBoLmQltt4GJmqJyKV0A8gJ60xcv3
         30pb/tu4Lw5qw==
From:   Muhammad Usama Anjum <usama.anjum@collabora.com>
To:     alx@kernel.org
Cc:     Muhammad Usama Anjum <usama.anjum@collabora.com>,
        kernel@collabora.com, linux-man@vger.kernel.org
Subject: [PATCH 1/2] ioctl_userfaultfd.2: add UFFD_FEATURE_WP_ASYNC
Date:   Tue, 17 Oct 2023 20:01:31 +0500
Message-ID: <20231017150138.3406580-1-usama.anjum@collabora.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Muhammad Usama Anjum <usama.anjum@collabora.com>
---
 man2/ioctl_userfaultfd.2 | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/man2/ioctl_userfaultfd.2 b/man2/ioctl_userfaultfd.2
index e68085262..cdf90882a 100644
--- a/man2/ioctl_userfaultfd.2
+++ b/man2/ioctl_userfaultfd.2
@@ -244,6 +244,11 @@ If this feature bit is set,
 the kernel supports resolving faults with the
 .B UFFDIO_POISON
 ioctl.
+.TP
+.BR UFFD_FEATURE_WP_ASYNC " (since Linux 6.7)"
+If this feature bit is set,
+the write protection faults would be asynchronously resolved by the
+kernel.
 .PP
 The returned
 .I ioctls
-- 
2.40.1

