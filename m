Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E4636F9365
	for <lists+linux-man@lfdr.de>; Sat,  6 May 2023 19:38:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229628AbjEFRib (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 6 May 2023 13:38:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229441AbjEFRia (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 6 May 2023 13:38:30 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 155FE156B2
        for <linux-man@vger.kernel.org>; Sat,  6 May 2023 10:37:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1683394662;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=hSZVeXrhjJ1wyymdqNYTMKbuIEr2CQe7BZYx74dbQL8=;
        b=K/0ltnBhXS8ZzonqPdxcZnri8WC0VD+1rgbfm9GuxZpYFaevciDkn2DG5gML5Ca+De5Pu8
        S59pgsSMtHcakbwtRmj01/NL8bOCCvR0w5vcMj9bI4A87OASWwuHTo4Bc8eBeHLIuURRWr
        qAVyj1pL6yD++nOyAXsxq9DmCc+Ig6M=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-102-WzscXduzNZe3vkBAH1UXlg-1; Sat, 06 May 2023 13:37:39 -0400
X-MC-Unique: WzscXduzNZe3vkBAH1UXlg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BBCA185A588;
        Sat,  6 May 2023 17:37:38 +0000 (UTC)
Received: from dev64.localdomain.com (unknown [10.64.240.3])
        by smtp.corp.redhat.com (Postfix) with ESMTP id B5D0FC15BA0;
        Sat,  6 May 2023 17:37:37 +0000 (UTC)
From:   Masatake YAMATO <yamato@redhat.com>
To:     linux-man@vger.kernel.org
Cc:     alx.manpages@gmail.com, mtk.manpages@gmail.com, yamato@redhat.com
Subject: [PATCH] malloc.3: write about another possible reason for ENOMEM
Date:   Sun,  7 May 2023 02:37:19 +0900
Message-Id: <20230506173719.2731564-1-yamato@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Spam-Status: No, score=-2.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Masatake YAMATO <yamato@redhat.com>
---
 man3/malloc.3 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man3/malloc.3 b/man3/malloc.3
index 0ada87a92..4129a55bd 100644
--- a/man3/malloc.3
+++ b/man3/malloc.3
@@ -226,6 +226,9 @@ or
 .B RLIMIT_DATA
 limit described in
 .BR getrlimit (2).
+Another reason could be that the number of mappings created by the
+caller process exceeded the limit specified by
+.IR /proc/sys/vm/max_map_count .
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
 .BR attributes (7).
-- 
2.40.0

