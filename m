Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A6BD06FBB72
	for <lists+linux-man@lfdr.de>; Tue,  9 May 2023 01:32:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229491AbjEHXcT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 May 2023 19:32:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232230AbjEHXcS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 May 2023 19:32:18 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44BEC93CC
        for <linux-man@vger.kernel.org>; Mon,  8 May 2023 16:31:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1683588689;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc; bh=W1F51T8PSMGlCyI7oKFCKd8PeNUhQOrAAGKePvms3rQ=;
        b=O3rq89ddgvybkiQmBMIMi2ZHFd8eDdbaVtD6t3RgCSbxEpec1pTiqZYGK7TD667JwqjhmX
        LVFZ2ziEiYrUPczHlmgqvVokDpOM/HOjVZ1f0ur4Ukuau1gY/rHrW+klWMUnF/TGS0ZfC1
        8rweMPcl5J9wdIqaTducPX3b9IVay9M=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-122-Uzzd5STnPbe8yepZ2srA6Q-1; Mon, 08 May 2023 19:31:28 -0400
X-MC-Unique: Uzzd5STnPbe8yepZ2srA6Q-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EBF5D100815D
        for <linux-man@vger.kernel.org>; Mon,  8 May 2023 23:31:27 +0000 (UTC)
Received: from greed.delorie.com (unknown [10.22.8.103])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id D8CD540C6F41
        for <linux-man@vger.kernel.org>; Mon,  8 May 2023 23:31:27 +0000 (UTC)
Received: from greed.delorie.com.redhat.com (localhost [127.0.0.1])
        by greed.delorie.com (8.15.2/8.15.2) with ESMTP id 348NVRlC1686202
        for <linux-man@vger.kernel.org>; Mon, 8 May 2023 19:31:27 -0400
Date:   Mon, 08 May 2023 19:31:27 -0400
Message-Id: <xn7ctie6y8.fsf@greed.delorie.com>
From:   DJ Delorie <dj@redhat.com>
To:     linux-man@vger.kernel.org
Subject: aligned_alloc: update to match C17
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


Link: <https://sourceware.org/pipermail/libc-alpha/2023-May/147810.html>
Signed-off-by: DJ Delorie <dj@redhat.com>

diff --git a/man3/posix_memalign.3 b/man3/posix_memalign.3
index 9bc6eb9a4..88e4a8b63 100644
--- a/man3/posix_memalign.3
+++ b/man3/posix_memalign.3
@@ -91,9 +91,8 @@ The function
 is the same as
 .BR memalign (),
 except for the added restriction that
-.I size
-should be a multiple of
-.IR alignment .
+.I alignment
+must be a power of two.
 .PP
 The obsolete function
 .BR valloc ()

