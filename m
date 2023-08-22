Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A5397784551
	for <lists+linux-man@lfdr.de>; Tue, 22 Aug 2023 17:21:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236933AbjHVPVX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 22 Aug 2023 11:21:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56952 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233283AbjHVPVW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 22 Aug 2023 11:21:22 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12901CEA
        for <linux-man@vger.kernel.org>; Tue, 22 Aug 2023 08:20:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1692717629;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=2Mr1EzuvtdM2rzMtwKRQWHS1qVijj2U98tSAeNhpa60=;
        b=H17WfSrZwGSELQgcnrktjQHiK49W/V50Hqn53Q7ZW1x/9R46ybFMJRLN4QGZ9Y0hU/mrdu
        /qBaX3aAxyYm1Od9KRGooBrJgmYHv7nBYtUWdrieaa1BpIJ4/p34UUmBjyJbWJP9JWcR1f
        qG7nDoydrnJk6t0EVbDT2ZIz4mbtUhY=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-531-ENuYSu0rMcqybH3sYaXVTw-1; Tue, 22 Aug 2023 11:20:27 -0400
X-MC-Unique: ENuYSu0rMcqybH3sYaXVTw-1
Received: by mail-ed1-f72.google.com with SMTP id 4fb4d7f45d1cf-523204878d9so3030469a12.0
        for <linux-man@vger.kernel.org>; Tue, 22 Aug 2023 08:20:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692717626; x=1693322426;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2Mr1EzuvtdM2rzMtwKRQWHS1qVijj2U98tSAeNhpa60=;
        b=WMd3EpJBs4BGoy6DSAaKtgI6YQcpMvUTfkHLdRPEEYUoFsR7g2mJtUKepdU+h7/Ijm
         VbRstsA68JAb7oD0Y7g4w9x9XDs66X3I50Dz+xC5NaO6PWOmInoyNBFMolgty4+U/4aD
         M/O7bRfPv6kH9IyJkCCt0YsYnQTSTCcCZyIjFusj2iBCQDish8eAaxLg4vNrvMbrthud
         /Q8Pt3kqX5DrrX+A0LLKI1WEwI4qc//3IHOKHgREetAnjSTQUfFacsl3flS9tH6yvclz
         GTZ7/TDh3GblDzFq7GCejmojttzw6gewF6KZS4zKuSigRm/sGq8qjbtr5rz8hJoiXNyH
         wf0w==
X-Gm-Message-State: AOJu0YwX4275aJw0XYMHfChcr2676kywf4stFbbUWw8HT7oi5y0jByym
        iSLvXTgcHOOM5/kFH4e+BHsWcTWc7t0irttBsw3JhudM78iSIc426p1dtDAP2q5KFrwE8y22Glz
        hnLLZqdnQYvavOQoBYUp+PM5/eRt4
X-Received: by 2002:aa7:d952:0:b0:523:33eb:1103 with SMTP id l18-20020aa7d952000000b0052333eb1103mr7930968eds.14.1692717626643;
        Tue, 22 Aug 2023 08:20:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH59RgeT6MHH8U9+FYYLBoxFRcRHOT79+eRsKETD8NeaGWbsup1sweddrpFTruLFGrqjwIcPA==
X-Received: by 2002:aa7:d952:0:b0:523:33eb:1103 with SMTP id l18-20020aa7d952000000b0052333eb1103mr7930955eds.14.1692717626426;
        Tue, 22 Aug 2023 08:20:26 -0700 (PDT)
Received: from cremorrah.redhat.com (ip-86-49-234-148.bb.vodafone.cz. [86.49.234.148])
        by smtp.gmail.com with ESMTPSA id e8-20020aa7d7c8000000b005231e1780aasm7711204eds.91.2023.08.22.08.20.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Aug 2023 08:20:26 -0700 (PDT)
From:   =?UTF-8?q?Tom=C3=A1=C5=A1=20Golembiovsk=C3=BD?= 
        <tgolembi@redhat.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org,
        =?UTF-8?q?Tom=C3=A1=C5=A1=20Golembiovsk=C3=BD?= 
        <tgolembi@redhat.com>
Subject: [PATCH] close.2: Warn more clearly about the risks of close(2) and record locks
Date:   Tue, 22 Aug 2023 17:20:25 +0200
Message-ID: <56472a7881dd44f18ad642ab978b705ef08e1651.1692717623.git.tgolembi@redhat.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The consequences of using close(2) together with advisory record locks
are quite serious. Make the warning more explicit.

Signed-off-by: Tomáš Golembiovský <tgolembi@redhat.com>
---
 man2/close.2 | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/man2/close.2 b/man2/close.2
index 68211bc58..f8a4ccc2d 100644
--- a/man2/close.2
+++ b/man2/close.2
@@ -32,8 +32,14 @@ may be reused.
 Any record locks (see
 .BR fcntl (2))
 held on the file it was associated with,
-and owned by the process, are removed (regardless of the file
-descriptor that was used to obtain the lock).
+and owned by the process,
+are removed regardless of the file descriptor that was used to obtain the lock.
+This has some unfortunate consequences
+and one should be extra careful when using advisory record locking.
+See
+.BR fcntl (2)
+for discussion of the risks and consequences
+as well as for the (probably preferred) open file description locks.
 .PP
 If
 .I fd
-- 
2.41.0

