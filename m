Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7FB3F7558AB
	for <lists+linux-man@lfdr.de>; Mon, 17 Jul 2023 01:48:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229793AbjGPXsW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 16 Jul 2023 19:48:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46790 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229759AbjGPXsW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 16 Jul 2023 19:48:22 -0400
Received: from mail-yw1-x112b.google.com (mail-yw1-x112b.google.com [IPv6:2607:f8b0:4864:20::112b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9105C1B5
        for <linux-man@vger.kernel.org>; Sun, 16 Jul 2023 16:48:20 -0700 (PDT)
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-56fff21c2ebso39119187b3.3
        for <linux-man@vger.kernel.org>; Sun, 16 Jul 2023 16:48:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689551300; x=1692143300;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q+Vim2UGKuMMlOdg30+44pHiZp2WRvY73Y7YkfDcf80=;
        b=Rxb5bywO8Mq5hYAn8KXurqjLXmUJaDDOBlSCB8Wsgq4LrY5InoWDWVLgCdOGvCOBT8
         Jaw6TrjjPu7EnPp4ZJTuMiKbO+RAZsazEWQE1wcVY9uzwGChrYMPCR1PJvBm1gRNC/Es
         fmbl+RY8jLeg4UiVRLRI9tlLP2AdqjLWgjjobqS0dWoh2d3nWLPkrzUjzK+hICYkL8OG
         EgSQ4d6UXfRRg3/NMlYZWF6mL75AffOaNQBXB31Bk+3FBRZ7h3INjTdBO+GiIZiaLA3A
         uaRSg1N7/UzJZUWBzDIintmgf21779yc4FymZmHY04PNinDwpnhFJeJ9AFRAxP4sSLtc
         W69w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689551300; x=1692143300;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q+Vim2UGKuMMlOdg30+44pHiZp2WRvY73Y7YkfDcf80=;
        b=bWeg1mkDu7XJVdLFph5WV1D6O+550IvqQ7PcJvW0OWMExyGleGc/lI+HABYD3DyStF
         UyPxMBgIwElOngiWknF3e3ROaBCiZx4AD/qiGaeg+uzfIFj7VARg2N+yxnW2VNLRi6Lx
         bqV5sXj4Dz85/ycytlxWDGtueT2d6hQtYTAdhVoUw7KIGBq03NZuVqjjbHxltktGVfps
         nhhIiDvsJQ0M46PcqJu+qhmskMcJvSzeMGKk/qivsW12HpDTDHKbIeYiuKvIXSEl0jl1
         qwG95jjMU52sEbCHk6j+nn7dUu74u/x5RnFJse2ZjAPDY4ajD0QAcrejGBLJAxo3rNxr
         3E4Q==
X-Gm-Message-State: ABy/qLYpqRFa8IzrXs3dKFPKXbZiTXoAbU9hJcl2fZ3qmbP5h35jnR/u
        ZByXITlE89R0iw4oELZMl38=
X-Google-Smtp-Source: APBJJlGqabnww36HIcbNivk7k0WALG7avSLt6KE7jcocvDrq7vCXhxA6xOL7/YeE6KdmHUiWyCtSkQ==
X-Received: by 2002:a81:60c5:0:b0:559:f18d:ee94 with SMTP id u188-20020a8160c5000000b00559f18dee94mr10557120ywb.10.1689551299714;
        Sun, 16 Jul 2023 16:48:19 -0700 (PDT)
Received: from firmament.local (c-73-106-204-164.hsd1.ga.comcast.net. [73.106.204.164])
        by smtp.gmail.com with ESMTPSA id k1-20020a0dfa01000000b005771bb5a25dsm3508846ywf.61.2023.07.16.16.48.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Jul 2023 16:48:19 -0700 (PDT)
From:   Matthew House <mattlloydhouse@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2] recv.2: Document MSG_CMSG_CLOEXEC as returned in msg_flags
Date:   Sun, 16 Jul 2023 19:47:53 -0400
Message-ID: <20230716234803.851580-1-mattlloydhouse@gmail.com>
In-Reply-To: <363c0f82-969d-1927-1bd5-b664cfc83a87@kernel.org>
References: <20230709213358.389871-1-mattlloydhouse@gmail.com> <363c0f82-969d-1927-1bd5-b664cfc83a87@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Matthew House <mattlloydhouse@gmail.com>
---
Clarified that the argument comes from the recvmsg() call. It feels a bit
redundant to name recvmsg() again here, given that the list of flags is
immediately preceded by, "The msg_flags field in the msghdr is set on
return of recvmsg(). It can contain several flags: [...]" But I'll let you
be the judge of that.

 man2/recv.2 | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/man2/recv.2 b/man2/recv.2
index 660c103fb..1cd9f3e1b 100644
--- a/man2/recv.2
+++ b/man2/recv.2
@@ -412,6 +412,15 @@ is returned to indicate that expedited or out-of-band data was received.
 .B MSG_ERRQUEUE
 indicates that no data was received but an extended error from the socket
 error queue.
+.TP
+.BR MSG_CMSG_CLOEXEC " (since Linux 2.6.23)"
+.\" commit 4a19542e5f694cd408a32c3d9dc593ba9366e2d7
+indicates that
+.B MSG_CMSG_CLOEXEC
+was specified in the
+.I flags
+argument of
+.BR recvmsg ().
 .SH RETURN VALUE
 These calls return the number of bytes received, or \-1
 if an error occurred.
-- 
2.41.0

