Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DD2EF7636ED
	for <lists+linux-man@lfdr.de>; Wed, 26 Jul 2023 15:00:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233115AbjGZNAU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 26 Jul 2023 09:00:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231617AbjGZNAT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 26 Jul 2023 09:00:19 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7889E1BC2
        for <linux-man@vger.kernel.org>; Wed, 26 Jul 2023 05:59:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1690376374;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=bi4REzCmIaycJpy2pygWPbkNoJp/jBfKCE1mADq+MPM=;
        b=LbfkddZRxHgHL8NXowZVRfuSkliAtvmEc4q7Rxx+BGwnf2Q0KyivwxAcFlbIAgMWS65MOr
        0fyUQjSJR0MZDyPJcupTawUR1Eawk9CUSQOhMmt9Sqh33NLM0O5PBVhqmPNpb7+OpT18Zn
        UtnqPJ4MjSk4gqCgxh6RUVxa7z0fN+s=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-617-2k1uOaD6OT-7vyebwE1wvQ-1; Wed, 26 Jul 2023 08:59:32 -0400
X-MC-Unique: 2k1uOaD6OT-7vyebwE1wvQ-1
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-3fd2d331e1eso19775845e9.3
        for <linux-man@vger.kernel.org>; Wed, 26 Jul 2023 05:59:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690376371; x=1690981171;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bi4REzCmIaycJpy2pygWPbkNoJp/jBfKCE1mADq+MPM=;
        b=Hem5FAvYXGUsPmrXKFvgSEqGQZ8BfIjZklWGT2etdtzQjpjuJf1I6LC13Bz7ye5emY
         taJaZmJpZqfv4UQt+j/11CTY5yTTgyzyR7xEyUNKH3TXkkAsViiOPAywvyvlTkYaRqe+
         cavu3k+mlQ3jAxYwm37Qi6OSYkKhalcRz6Tnnaf3r+81NGjnLyFprdP8D/PPX3IMZPGM
         6L+ddtfB2BpI9BT0gjKPtkD0aS8IyrcfjEmPRTW7iAQn+F83COZt5Pwl4m//+dShJ0Ro
         76VwH/CoieqZbMpt+nYrwhhQUZdimwOjxM5+GCQ2j+ozODHPgoMhzPhVSoDcdFx1Han7
         QEQQ==
X-Gm-Message-State: ABy/qLaFMOCSZK+9iMiMkbLdycytPOWsx31nwVzdTya44MjRtChasCxV
        0kF2qCjCp4pWhjGbBjz9XzJ6/51sthULDk3SuvMvPBCKLe0YDY3TL489IAUYAP5GKUoE3n2NnR4
        M61OBJLPz9m5PqW82Yew2
X-Received: by 2002:a7b:c3cb:0:b0:3fb:e189:3532 with SMTP id t11-20020a7bc3cb000000b003fbe1893532mr1185746wmj.20.1690376371339;
        Wed, 26 Jul 2023 05:59:31 -0700 (PDT)
X-Google-Smtp-Source: APBJJlE5SRw8AbV5sgGO54Do1jcsskPzr3LLjeZUsRI/gLZCds2xPeR9HTAPOdfsgQ+VV4P9O9jmow==
X-Received: by 2002:a7b:c3cb:0:b0:3fb:e189:3532 with SMTP id t11-20020a7bc3cb000000b003fbe1893532mr1185734wmj.20.1690376371029;
        Wed, 26 Jul 2023 05:59:31 -0700 (PDT)
Received: from cremorrah.redhat.com (ip-86-49-233-183.bb.vodafone.cz. [86.49.233.183])
        by smtp.gmail.com with ESMTPSA id 1-20020a05600c248100b003fbb5142c4bsm1995233wms.18.2023.07.26.05.59.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jul 2023 05:59:30 -0700 (PDT)
From:   =?UTF-8?q?Tom=C3=A1=C5=A1=20Golembiovsk=C3=BD?= 
        <tgolembi@redhat.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org,
        =?UTF-8?q?Tom=C3=A1=C5=A1=20Golembiovsk=C3=BD?= 
        <tgolembi@redhat.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Stefan Puiu <stefan.puiu@gmail.com>
Subject: [PATCH v5] abort.3: clarify consequences of calling abort
Date:   Wed, 26 Jul 2023 14:59:30 +0200
Message-ID: <0a518bec28b5aa0b17e6a4aaf13afadea30d81d8.1690376284.git.tgolembi@redhat.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Clarify that atexit/on_exit are not called because those are called only
on normal process termination (as documented on their respective manual
pages).

Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Stefan Puiu <stefan.puiu@gmail.com>
Signed-off-by: Tomáš Golembiovský <tgolembi@redhat.com>
---

v5 changes:
* split .BR items to separate lines as sugested by G. Branden Robinson
* changed "abort" to "abort.3" in commit message title

 man3/abort.3 | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/man3/abort.3 b/man3/abort.3
index c63eace5e..3e1fbbbf5 100644
--- a/man3/abort.3
+++ b/man3/abort.3
@@ -47,6 +47,12 @@ function will still terminate the process.
 It does this by restoring the default disposition for
 .B SIGABRT
 and then raising the signal for a second time.
+.PP
+As with other cases of abnormal termination the functions registered with
+.BR atexit (3)
+and
+.BR on_exit (3)
+are not called.
 .SH RETURN VALUE
 The
 .BR abort ()
-- 
2.41.0

