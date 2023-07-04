Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 169B1747507
	for <lists+linux-man@lfdr.de>; Tue,  4 Jul 2023 17:12:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231626AbjGDPMg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 4 Jul 2023 11:12:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231658AbjGDPMg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 4 Jul 2023 11:12:36 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2F57E6D
        for <linux-man@vger.kernel.org>; Tue,  4 Jul 2023 08:11:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1688483511;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=/9nObfsaA6vBT4dwgMIKsYprRxmNeTDzP0j6qBk3sgg=;
        b=iWD6yOQzmx2oee0HMql8HXmiFozhV8UyqIBKfWLpzRz+yb4wmUbU2mI9R1ZFxcR1LPUaX3
        v/uZAnaHadrKWlNqcycaBEbmryOH0yyLRnAvn3OArpafOfavGwN/c0/hwGPlnzbugjtPsi
        xIX8MQUL4UPF9zpzEcXL/OIhJzT4npY=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-500-K2HaNgZMNr6mqwkuXeX_Hw-1; Tue, 04 Jul 2023 11:11:49 -0400
X-MC-Unique: K2HaNgZMNr6mqwkuXeX_Hw-1
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7656a0f8565so296606985a.1
        for <linux-man@vger.kernel.org>; Tue, 04 Jul 2023 08:11:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688483509; x=1691075509;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/9nObfsaA6vBT4dwgMIKsYprRxmNeTDzP0j6qBk3sgg=;
        b=A93p5FZ+BLYDrpJjDIjndCZfyPL89U5WylpG4nGmLjfvM3EcRYXposl4pxYGXd5J+5
         TgyAqJkG8srsw4XZQJaQzrtbw+M2hjQNJx5y0UNuE77lqHo2WWKWqexAp/HSfeeEWOBP
         pqN2za0ypzbte58O/G7YlUzbfqIKvguAJ9P9sYZDHjQG6ar44M4z5lPUi0cGceevEE+L
         3RV3C6QadYqcdpUgUP5QHRxCxVazAvY7ANqkzSaTQRP3M9HJ8b2brSF7KrBenRks+Fbv
         meHq8xy7DI404th9mCdZNwSYqKQ9EdKSg8xP2JhvuaEFDiQ1mmTtWYlFMCG3CTIIy88L
         SRxw==
X-Gm-Message-State: AC+VfDyTybZnBJZU6g4Ubn293JL7RFifx7zrpOQ8XQw2APvRrv/9MJR2
        3f7hsIH6KZ7Y+qDOXYBcEXQUigM14zHkI/83xgBWYe8dX5O/v5koI+WSTyRfRecAGR7trWk4TU5
        llbyaUn9OZ2i20n6RjpFc
X-Received: by 2002:a05:620a:294a:b0:767:c30:517 with SMTP id n10-20020a05620a294a00b007670c300517mr25345406qkp.3.1688483509200;
        Tue, 04 Jul 2023 08:11:49 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ4aXSyQL8cB7XMmszUJUDIgAtonRNEvBA3Lsl/TkYwg3UY+PHTBd9watT+XSVJD3nr5vpiROg==
X-Received: by 2002:a05:620a:294a:b0:767:c30:517 with SMTP id n10-20020a05620a294a00b007670c300517mr25345389qkp.3.1688483508974;
        Tue, 04 Jul 2023 08:11:48 -0700 (PDT)
Received: from cremorrah.redhat.com (ip-86-49-233-183.bb.vodafone.cz. [86.49.233.183])
        by smtp.gmail.com with ESMTPSA id n1-20020a05620a152100b0076706e76e75sm8419174qkk.79.2023.07.04.08.11.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jul 2023 08:11:48 -0700 (PDT)
From:   =?UTF-8?q?Tom=C3=A1=C5=A1=20Golembiovsk=C3=BD?= 
        <tgolembi@redhat.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org,
        =?UTF-8?q?Tom=C3=A1=C5=A1=20Golembiovsk=C3=BD?= 
        <tgolembi@redhat.com>
Subject: [PATCH] abort: clarify consequences of calling abort
Date:   Tue,  4 Jul 2023 17:09:41 +0200
Message-ID: <a1efcd54c02faa51a7a25b9211b3f1f6bd38429f.1688483306.git.tgolembi@redhat.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Clarify that atexit/on_exit are not called because those are called only
on normal process termination (as documented on their respective manual
pages).

Clarify the status reported by wait*() functions. The requirement comes
from POSIX specification.

Signed-off-by: Tomáš Golembiovský <tgolembi@redhat.com>
---
 man3/abort.3 | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/man3/abort.3 b/man3/abort.3
index c63eace5e..6d1638033 100644
--- a/man3/abort.3
+++ b/man3/abort.3
@@ -47,6 +47,16 @@ function will still terminate the process.
 It does this by restoring the default disposition for
 .B SIGABRT
 and then raising the signal for a second time.
+.PP
+As with other cases of abnormal termination the functions registered with
+.BR atexit "(3) and " on_exit (3)
+are not called. The status made available to
+.BR wait "(2), " waitid "(2), or " waitpid (2)
+by
+.BR abort ()
+shall be that of a process terminated by the
+.BR SIGABRT
+signal.
 .SH RETURN VALUE
 The
 .BR abort ()
-- 
2.41.0

