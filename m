Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7DDBD6FBC10
	for <lists+linux-man@lfdr.de>; Tue,  9 May 2023 02:44:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229677AbjEIAof (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 May 2023 20:44:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232723AbjEIAo0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 May 2023 20:44:26 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A93B059E8
        for <linux-man@vger.kernel.org>; Mon,  8 May 2023 17:43:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1683593017;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to; bh=lvDLPcBlCwIfbBJMyFmFvxVaaI/YntV+7kg+R2sL8P0=;
        b=Rnu/o1Y6XGw15fDKzWtOrZ2l6SZiov8TVm6SL4rCEcDNvnVPDV3sBku/S9mqlTjDbjtdbJ
        vxoAcNlcv1SAKO30w2HqSUX2pUtdWT+0O7MkGTSstoi0h/lSKRPoo7D/VsLsS6YTYWaKsX
        t+fkcy0wHMC/HvyU/fHQUWjIOS0FHsg=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-648-wQFrrsCKPFGsAegolKiTFw-1; Mon, 08 May 2023 20:43:36 -0400
X-MC-Unique: wQFrrsCKPFGsAegolKiTFw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
        (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
        (No client certificate requested)
        by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BD331100F651;
        Tue,  9 May 2023 00:43:35 +0000 (UTC)
Received: from greed.delorie.com (unknown [10.22.8.103])
        by smtp.corp.redhat.com (Postfix) with ESMTPS id A8C8414171BC;
        Tue,  9 May 2023 00:43:35 +0000 (UTC)
Received: from greed.delorie.com.redhat.com (localhost [127.0.0.1])
        by greed.delorie.com (8.15.2/8.15.2) with ESMTP id 3490hZRE1689207;
        Mon, 8 May 2023 20:43:35 -0400
From:   DJ Delorie <dj@redhat.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: aligned_alloc: update to match C17
In-Reply-To: <d8269a58-9206-f8b8-3a41-097185bc138e@gmail.com>
Date:   Mon, 08 May 2023 20:43:35 -0400
Message-ID: <xn4jome3m0.fsf@greed.delorie.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Alejandro Colomar <alx.manpages@gmail.com> writes:
> Thanks for the patch!  IIRC this is something that someone reported in
> the list a few months ago, right?

Years ago, actually.

> Would you mind mentioning the reporter
> and CC anyone involved in the discussion?  If it's difficult for you to
> find those, tell me and I'll do it.

I got them:

Link: <https://sourceware.org/pipermail/libc-alpha/2023-May/147810.html>
Link: <https://patchwork.sourceware.org/project/glibc/patch/33ec9e0c1e587813b90e8aa771c2c8e6e379dd48.camel@posteo.net/>
Cc: John Scott <jscott@posteo.net>
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

