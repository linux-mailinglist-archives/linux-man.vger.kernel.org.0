Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E8BBF7635BA
	for <lists+linux-man@lfdr.de>; Wed, 26 Jul 2023 13:56:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232271AbjGZL4b (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 26 Jul 2023 07:56:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53930 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232220AbjGZL4a (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 26 Jul 2023 07:56:30 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A49641B8
        for <linux-man@vger.kernel.org>; Wed, 26 Jul 2023 04:55:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1690372530;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=t/O9imrhhOtJ0reFi/g5hHP9pnquS4wBlBKHrKmVn9M=;
        b=Wt4IuMmXdJ+wgPBgq9VHzMFQubO//9+S+eNMCPDJA0nDoQ8KkIsCEZ3+GX0TSx2rGU4a2a
        DMP7H8NsW6viJz07EYAHGvPgOG2ev22nixSqPAkbf5F5nQQOcqpR5orCts87FPprHDi8Tr
        dcKCfCtSNs5n1WDgqZ0GFUYSoaOSOrc=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-650-Bbj4DJnVN3KuDNEogetZmA-1; Wed, 26 Jul 2023 07:55:29 -0400
X-MC-Unique: Bbj4DJnVN3KuDNEogetZmA-1
Received: by mail-ej1-f70.google.com with SMTP id a640c23a62f3a-993eeb3a950so20713666b.2
        for <linux-man@vger.kernel.org>; Wed, 26 Jul 2023 04:55:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690372528; x=1690977328;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t/O9imrhhOtJ0reFi/g5hHP9pnquS4wBlBKHrKmVn9M=;
        b=V1alP1RFrrEz6pUWO6nGfqvhy4wy+jYLMH0GLJ0LjNH0or+hsKgipW/4k3G3EwKSEk
         B4phBfS2JZ6wmueab9/IAYzdhj7YM4/7srd33q1NEkHgKjF6pRrDru81Bo9U+I3EHRlm
         cC26PKvb3x5JI9ozTg3jrdG8vjKavGMzAHplaKJ3OQIgfSfRPBIe1m3btdnrbdDMFxxd
         8+GVXOirvP5THOb6X0wlti8XOb++h7jOkXk0JG7kJhZtdD9tVRKreqpbhEFs+Hsib/qP
         fyhkR7St7pqSoQqd/rjPWSOVlB2uybtC3fJiuyCvHh/vSjrktcfQ64WnA89InF5dMjBz
         hDTw==
X-Gm-Message-State: ABy/qLYuxj0reazrAlyVkBigSduCkTMivcFtLkW5/8dpEJ/n+8O4Lx/8
        knotNkedWIcuPVde2cpft+fiKLxW8ta98dNB2wpE6XkJx20fbTLZe1IYI7JdN2w/nn1iXFITCxX
        1S1Th4VEXsuSEMpBzghO6
X-Received: by 2002:a17:906:76c2:b0:993:f081:2c58 with SMTP id q2-20020a17090676c200b00993f0812c58mr1396641ejn.4.1690372528497;
        Wed, 26 Jul 2023 04:55:28 -0700 (PDT)
X-Google-Smtp-Source: APBJJlHud0tMyAjeBR54NJbBM/sJgZUJzuDeD3ppRyCnApBvzVD5U0/lpLPe8rI9sAPAJ3H+91QbqA==
X-Received: by 2002:a17:906:76c2:b0:993:f081:2c58 with SMTP id q2-20020a17090676c200b00993f0812c58mr1396628ejn.4.1690372528106;
        Wed, 26 Jul 2023 04:55:28 -0700 (PDT)
Received: from localhost.localdomain (ip-86-49-233-183.bb.vodafone.cz. [86.49.233.183])
        by smtp.gmail.com with ESMTPSA id d10-20020a17090648ca00b0099b6b8a0d04sm8213346ejt.157.2023.07.26.04.55.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jul 2023 04:55:27 -0700 (PDT)
From:   =?UTF-8?q?Tom=C3=A1=C5=A1=20Golembiovsk=C3=BD?= 
        <tgolembi@redhat.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org,
        =?UTF-8?q?Tom=C3=A1=C5=A1=20Golembiovsk=C3=BD?= 
        <tgolembi@redhat.com>, Carlos O'Donell <carlos@redhat.com>,
        Glibc <libc-alpha@sourceware.org>
Subject: [PATCH] abort.3: Note that the glibc implementation is not async-signal-safe
Date:   Wed, 26 Jul 2023 13:55:27 +0200
Message-ID: <07404317c21c86c517bc84357f91c4e179542906.1690372376.git.tgolembi@redhat.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

See https://sourceware.org/bugzilla/show_bug.cgi?id=26275

Cc: Carlos O'Donell <carlos@redhat.com>
Cc: Glibc <libc-alpha@sourceware.org>
Signed-off-by: Tomáš Golembiovský <tgolembi@redhat.com>
---
 man3/abort.3         | 6 ++++++
 man7/signal-safety.7 | 5 +++++
 2 files changed, 11 insertions(+)

diff --git a/man3/abort.3 b/man3/abort.3
index 0b57e10ed..827d5c9db 100644
--- a/man3/abort.3
+++ b/man3/abort.3
@@ -85,6 +85,12 @@ terminates the process without flushing streams.
 POSIX.1 permits either possible behavior, saying that
 .BR abort ()
 "may include an attempt to effect fclose() on all open streams".
+.SH BUGS
+The glibc implementation of
+.BR abort ()
+is not async-signal-safe,
+.\" FIXME . https://sourceware.org/bugzilla/show_bug.cgi?id=26275
+in violation of the requirements of POSIX.1.
 .SH SEE ALSO
 .BR gdb (1),
 .BR sigaction (2),
diff --git a/man7/signal-safety.7 b/man7/signal-safety.7
index 3d6ddc7eb..431a22f89 100644
--- a/man7/signal-safety.7
+++ b/man7/signal-safety.7
@@ -335,6 +335,11 @@ The glibc implementation of
 is not async-signal-safe because it uses
 .BR pthread_mutex_lock (3)
 internally.
+.IP \[bu]
+.\" FIXME . https://sourceware.org/bugzilla/show_bug.cgi?id=26275
+The glibc implementation of
+.BR abort (3)
+is not async-signal-safe.
 .SH SEE ALSO
 .BR sigaction (2),
 .BR signal (7),
-- 
2.41.0

