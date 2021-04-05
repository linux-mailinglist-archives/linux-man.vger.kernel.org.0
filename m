Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 528D635424A
	for <lists+linux-man@lfdr.de>; Mon,  5 Apr 2021 15:13:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233790AbhDENN1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Apr 2021 09:13:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237306AbhDENNZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Apr 2021 09:13:25 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 91D52C061756
        for <linux-man@vger.kernel.org>; Mon,  5 Apr 2021 06:13:18 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id 5-20020a05600c0245b029011a8273f85eso1493885wmj.1
        for <linux-man@vger.kernel.org>; Mon, 05 Apr 2021 06:13:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PPUe12HJoR5iqcYMxYUMYUkPJyoqdNAf9ff8oamCd5E=;
        b=YS4J95xCxZNDUcnTGZrqoeDYKxS+KMwuLN0+miqtqjtZhgwzPRhI/RFL92nReWPL74
         +c41na3yh6Uc089J12BtepII2eISGwEPyuZ2ILJzajewdUuP+7q0w6X0Srh16aaK8nn7
         Dp513SJa+82hoIdB545DxCPZRd3CsLTXleOP+nZdQlOR4pug+cPChwpieQn4YKg5bvNM
         wNePDuhMQje7o+9bD13N5N7mKnGeecJj8wl5UAY/Q4JD7WZURiXD+sZojjYdbF4cNxjV
         AzY9tFnmuDJP+FvI5bN/9XcpTIqHi27Spsyc1Uj2doNdou/y7E2lhMLCyGV9hlTBKAm+
         v0Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PPUe12HJoR5iqcYMxYUMYUkPJyoqdNAf9ff8oamCd5E=;
        b=rtcWNVEjRrHiwfEYNEZ8UDLVQQ9fyySeOznAHFfgWd7NF43hXFHYvPIQn0TN0ZJ/UB
         tfy33ACmL7EgMAr3p9mVDEYjWaAw31yaQPSM5DwVel7QSqi/hjN3qOmdS37+ppKmQWaa
         tJZRA0o1GWRaO0A7TkjdP6gyRhL5eUv/W9P8fK/ZOoHYAtAviwe7rv6VYzb+F4AyXtb2
         bLoFXlP4OnRpf+Fe2wUvEpZP1bdMwDMCcSHFX7DjC2oem5kHzMP36vgH3Y4KH+fgm3Q8
         vcO9HIbtbAgmyUdRM/578g691azWKcsJ4wJLZqNcosg9nPHNvBXaeQ+wwRaqbXGJgQi6
         f2og==
X-Gm-Message-State: AOAM530OIJgB0x33m7deKU7vf9saTEuq4fLMYJQR7sHek6mLyK+1Z6Xx
        8v6inpwu2QTyIasIqwKKF17OPwDZSMQ=
X-Google-Smtp-Source: ABdhPJxjFXV5eJ0uJJbYyGHWmM5uHNq/q5xp+OKcGftiazeGiohraiRyUT02naLc4BmIKEyPiHB8ig==
X-Received: by 2002:a7b:c316:: with SMTP id k22mr24909714wmj.176.1617628397373;
        Mon, 05 Apr 2021 06:13:17 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id p12sm27657929wrx.28.2021.04.05.06.13.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Apr 2021 06:13:16 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Peter Xu <peterx@redhat.com>, linux-man@vger.kernel.org,
        Mike Rapoport <rppt@linux.vnet.ibm.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 4/5] ioctl_userfaultfd.2: Add UFFD_FEATURE_THREAD_ID docs
Date:   Mon,  5 Apr 2021 15:13:07 +0200
Message-Id: <20210405131307.2892-5-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210405131307.2892-1-alx.manpages@gmail.com>
References: <20210405131307.2892-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Peter Xu <peterx@redhat.com>

UFFD_FEATURE_THREAD_ID is supported in Linux 4.14.

Acked-by: Mike Rapoport <rppt@linux.vnet.ibm.com>
Signed-off-by: Peter Xu <peterx@redhat.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/ioctl_userfaultfd.2 | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/man2/ioctl_userfaultfd.2 b/man2/ioctl_userfaultfd.2
index 9120bdf40..014c0b5c1 100644
--- a/man2/ioctl_userfaultfd.2
+++ b/man2/ioctl_userfaultfd.2
@@ -208,6 +208,11 @@ signal will be sent to the faulting process.
 Applications using this
 feature will not require the use of a userfaultfd monitor for processing
 memory accesses to the regions registered with userfaultfd.
+.TP
+.BR UFFD_FEATURE_THREAD_ID " (since Linux 4.14)"
+If this feature bit is set,
+.I uffd_msg.pagefault.feat.ptid
+will be set to the faulted thread ID for each page fault message.
 .PP
 The returned
 .I ioctls
-- 
2.31.0

