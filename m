Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 695824FE343
	for <lists+linux-man@lfdr.de>; Tue, 12 Apr 2022 15:56:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1356152AbiDLN6O (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 12 Apr 2022 09:58:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1356488AbiDLN5w (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 12 Apr 2022 09:57:52 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 2092B5F95
        for <linux-man@vger.kernel.org>; Tue, 12 Apr 2022 06:55:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1649771733;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=DryO9o3h8DdJ7OKPTCk6vR2g7q8n5OI79qGZDX0ru7M=;
        b=D5El+Ao3RXb3JUMnQQe/dcbOVt9B7gMjNNAfvmD5k+SELCZIWacfvk/wiLEVp76Gzq4W4w
        Hzpn6dKgoWpp9hignwrDGjh5ok+wrgrKUIJNDNiKKRGHf95bEGzc6ABnsF9XDosKaxiuDk
        QPceTXsmSvjtvIcG+gwLcm4y/AwjiWI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-486-uQKBqyvsOcOEufdJ_mMTiw-1; Tue, 12 Apr 2022 09:55:31 -0400
X-MC-Unique: uQKBqyvsOcOEufdJ_mMTiw-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 71FD7101A52C;
        Tue, 12 Apr 2022 13:55:31 +0000 (UTC)
Received: from x1carbon.redhat.com (unknown [10.40.192.176])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id 79317416159;
        Tue, 12 Apr 2022 13:55:30 +0000 (UTC)
From:   Arjun Shankar <arjun@redhat.com>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH] pthread_atfork.3: Remove a confusing reference to the current thread
Date:   Tue, 12 Apr 2022 15:55:20 +0200
Message-Id: <20220412135520.2388424-1-arjun@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The reference to "this thread" in the DESCRIPTION of pthread_atfork(3)
could be incorrectly interpreted to mean that only handlers registered
by the thread calling fork(2) are executed.  Therefore, remove the
reference.

Signed-off-by: Arjun Shankar <arjun@redhat.com>
---
 man3/pthread_atfork.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/pthread_atfork.3 b/man3/pthread_atfork.3
index b727cb48e..db5e210d4 100644
--- a/man3/pthread_atfork.3
+++ b/man3/pthread_atfork.3
@@ -39,7 +39,7 @@ The
 .BR pthread_atfork ()
 function registers fork handlers that are to be executed when
 .BR fork (2)
-is called by this thread.
+is called.
 The handlers are executed in the context of the thread that calls
 .BR fork (2).
 .PP
-- 
2.34.1

