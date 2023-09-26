Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 334997AE661
	for <lists+linux-man@lfdr.de>; Tue, 26 Sep 2023 09:04:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231224AbjIZHER (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 26 Sep 2023 03:04:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229742AbjIZHEO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 26 Sep 2023 03:04:14 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FF50F3
        for <linux-man@vger.kernel.org>; Tue, 26 Sep 2023 00:04:08 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-9ad8d47ef2fso972569366b.1
        for <linux-man@vger.kernel.org>; Tue, 26 Sep 2023 00:04:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ionos.com; s=google; t=1695711847; x=1696316647; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=09Dbusezuzmtem8SHw0UyQKQ5oAulzPz0jwJbZlkunI=;
        b=HAkA3s+P3M+hafygvEvUzSsb2wvidXrDzQjfxfzXxpHpksPN4H7N0tMVM5RgjMLYXT
         KxvqBUqNJIU6DYPWL/qIwTnt95EhcM01gC2fFFkf21lgraTp0PTzptYmaPa/vF186rW7
         Q3reu1Qigtrh1QzMRHLmFXAvPDgib2nFCS7F1RfDk75zDKqFMWKMqJsLSQ4f+SsEgQfh
         352hMqOwtR5464bwHxOGnFRun0FrVkvlX9qgMvTRDknz+ixeyYTpLEWsp1d0vL+ctxeQ
         zziO1vAx1GINKM39dZXOnn/kvksBmDwN3bW2F/Z/vTd1Y1BG/tAKJdaip1mdVrbNWqAV
         HuOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695711847; x=1696316647;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=09Dbusezuzmtem8SHw0UyQKQ5oAulzPz0jwJbZlkunI=;
        b=txzBSBYB+14qa7ytdzl7vr8dj2rTKr5FHCvQ3nvsCpq7iJGx0eY8Mo/mq4gn2zyx8O
         jyQVlVQapAnMTRbwKsKU6bboSRZYyfRD9qsS7dKF8JxLG88/Dnb3s97paex55lXTihl5
         Tkj2yipQ1hE4Hvt8Tf9FMTsBBgFpR7ZPKjfZuqEUDpx1T6onYLTXuLFVB/6+oYap0D4n
         1pS++bJO7xvc+0/Mmu6Q+P1rrBGSVux7TcXNNapSd0rh2d3lm/bI/NxsFZFf3mPEOIUP
         uF6NwsHF0t3+PMuLCRgE5DV9l15nE4GSRE+ezIQu6PBhzovf1e4xLcOsbQVWf0Iq7/Ub
         gRDA==
X-Gm-Message-State: AOJu0Yzy9RE7+Habtdx8HsE+nISPmuLfWdhn8cIVH8vLEVAghSJvNEtf
        TxxoBd2qTB43mvPj0P3cNydQ7hwGb8icVdYOJaU=
X-Google-Smtp-Source: AGHT+IFkDpIma3t+/zuXOt8GN+pMsASgXkfBA+WDQYHttvUk1ozw24xulRvXJIA0TTUhcKtepHK5vQ==
X-Received: by 2002:a17:907:1dd7:b0:9a1:f5b1:c864 with SMTP id og23-20020a1709071dd700b009a1f5b1c864mr7364977ejc.10.1695711846644;
        Tue, 26 Sep 2023 00:04:06 -0700 (PDT)
Received: from heron.intern.cm-ag (p200300dc6f49a600529a4cfffe3dd983.dip0.t-ipconnect.de. [2003:dc:6f49:a600:529a:4cff:fe3d:d983])
        by smtp.gmail.com with ESMTPSA id q9-20020a170906540900b009930042510csm7387982ejo.222.2023.09.26.00.04.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Sep 2023 00:04:06 -0700 (PDT)
From:   Max Kellermann <max.kellermann@ionos.com>
To:     alx@kernel.org, linux-man@vger.kernel.org, brauner@kernel.org,
        axboe@kernel.dk
Cc:     linux-kernel@vger.kernel.org, linux-api@vger.kernel.org,
        libc-alpha@sourceware.org,
        Max Kellermann <max.kellermann@ionos.com>
Subject: [PATCH] man2/splice.2: document SPLICE_F_NOWAIT
Date:   Tue, 26 Sep 2023 09:04:02 +0200
Message-Id: <20230926070402.2452760-1-max.kellermann@ionos.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Patch for SPLICE_F_NOWAIT submitted to LKML:
 https://lore.kernel.org/lkml/20230926063609.2451260-1-max.kellermann@ionos.com/

In the HISTORY section, I declared Linux 6.7 as the first version to
have this feature, but this is only speculation, because
SPLICE_F_NOWAIT is still under discussion and has not yet been merged.

Signed-off-by: Max Kellermann <max.kellermann@ionos.com>
---
 man2/splice.2 | 23 +++++++++++++++++++++--
 1 file changed, 21 insertions(+), 2 deletions(-)

diff --git a/man2/splice.2 b/man2/splice.2
index e9a18e668..1e686b858 100644
--- a/man2/splice.2
+++ b/man2/splice.2
@@ -89,13 +89,27 @@ call);
 in the future, a correct implementation may be restored.
 .TP
 .B SPLICE_F_NONBLOCK
-Do not block on I/O.
+Do not block on I/O on pipes.
 This makes the splice pipe operations nonblocking, but
 .BR splice ()
 may nevertheless block because the file descriptors that
 are spliced to/from may block (unless they have the
 .B O_NONBLOCK
-flag set).
+flag set or
+.B SPLICE_F_NOWAIT
+is specified).
+.TP
+.B SPLICE_F_NOWAIT
+If no data is immediately available on
+.I fd_in
+and it is not a pipe, do not wait (e.g. for backing storage or locks),
+but return immediately with
+.B EAGAIN.
+This is analogous to the
+.B RWF_NOWAIT
+flag of
+.BR preadv2()
+.
 .TP
 .B SPLICE_F_MORE
 More data will be coming in a subsequent splice.
@@ -138,6 +152,8 @@ is set to indicate the error.
 .TP
 .B EAGAIN
 .B SPLICE_F_NONBLOCK
+or
+.B SPLICE_F_NOWAIT
 was specified in
 .I flags
 or one of the file descriptors had been marked as nonblocking
@@ -192,6 +208,9 @@ was required to be a pipe.
 Since Linux 2.6.31,
 .\" commit 7c77f0b3f9208c339a4b40737bb2cb0f0319bb8d
 both arguments may refer to pipes.
+.PP
+.B SPLICE_F_NOWAIT
+was added in Linux 6.7.
 .SH NOTES
 The three system calls
 .BR splice (),
-- 
2.39.2

