Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 15656738BEB
	for <lists+linux-man@lfdr.de>; Wed, 21 Jun 2023 18:46:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229927AbjFUQqS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 21 Jun 2023 12:46:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230022AbjFUQqB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 21 Jun 2023 12:46:01 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8279D199D
        for <linux-man@vger.kernel.org>; Wed, 21 Jun 2023 09:45:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1687365915;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type;
        bh=EqoI/+AVa7q8eRCEDl057GY2XaeblfcXdi1f10Mrr7I=;
        b=KRnYzaQfq3ZmxOkSqa4UBwFRQrAgc2C98dwH6jSwPEta/orsE8O4vndW21YtQKPyHD7Y9J
        ZTrd0xhuGJUfQZarrA1+dSqqQKjdzXTbjDh74L/W4lfNpNzytlB6f6Udmt/Uy+gvPUayKs
        X6mGsjYzaTlA5woQTMkpr9igKa00gIc=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-106-YiKGShmEPrma0a11nMJJcA-1; Wed, 21 Jun 2023 12:45:13 -0400
X-MC-Unique: YiKGShmEPrma0a11nMJJcA-1
Received: by mail-ed1-f69.google.com with SMTP id 4fb4d7f45d1cf-50a16ab50e6so3165369a12.0
        for <linux-man@vger.kernel.org>; Wed, 21 Jun 2023 09:45:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687365912; x=1689957912;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EqoI/+AVa7q8eRCEDl057GY2XaeblfcXdi1f10Mrr7I=;
        b=fRZE3gmadiLKpcORAs4u5s3WBsV1XjNHdr88pDR01wn35YvYIEJS4Dm6IOaeJh+Ro5
         +wkUtzpRT3jfgprVLerX/4SsBPHPUBWbQGqj4FuoRaGU89yg7LzpDuIH1gKBq+D1c6qb
         N0q87aBzX+I5Mce5whcMQuXNZtm+/K5st9IPvU3HYjbiGzD5QbeWY/oRDc6LXbdh+vJs
         /i6RX26LLfi4FSMD1dC7dmPcIpskEf1d03bbZ5fRkB0ixyNLbOPsqQ4FnGZ+GpQxA1/+
         xOOBv3eu7FGEN4nmqfhh2ZaW8oAUUl6AnAFxT0WW+mnfKOLfhz54Qz7/Xd+RRTcSMkOm
         xtzg==
X-Gm-Message-State: AC+VfDxs2OC/R2xvS8gk+S2wSs9VSKS0HrmFWQq6dyLE7a1fTIUnUqAB
        PQLSKdXPukzfBlDoAPVLL5pgMKgS2jobkztyqriyqmVPif8WwuOnyICjMd7cTRGjGGeefAXGKn2
        UDoOSFYIpIdFQfbCLcoWiw83CbBZNrWd3BJ6sze/35w7QRw8=
X-Received: by 2002:a05:6402:1481:b0:51a:5ad7:effc with SMTP id e1-20020a056402148100b0051a5ad7effcmr6533115edv.32.1687365912663;
        Wed, 21 Jun 2023 09:45:12 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ62zEV3F+gM1v8KdZPiAbQAEaa/6B4u6Ct/5jsXhAEDf8UNohoQspjCnWxxfnS50MdvyIBjXCMNZFTSCz5Hb60=
X-Received: by 2002:a05:6402:1481:b0:51a:5ad7:effc with SMTP id
 e1-20020a056402148100b0051a5ad7effcmr6533103edv.32.1687365912399; Wed, 21 Jun
 2023 09:45:12 -0700 (PDT)
MIME-Version: 1.0
From:   Rob Linden <rlinden@redhat.com>
Date:   Wed, 21 Jun 2023 18:45:01 +0200
Message-ID: <CAP0H_AE9rZaDWst3JrE7NLdBo2M34QTgiaE-1SfXV72tCdu5BQ@mail.gmail.com>
Subject: [PATCH] recv.2: more explicit flag usage, MSG_ERRQUEUE
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro,

I think the flag MSG_ERRQUEUE, that is described on the man page
recv.2 is only applicable to recvmsg, and not recv or recvfrom. Maybe
it would be good to mention it, just like it is specified for
MSG_CMSG_CLOEXEC.
The following patch does that:

Signed-off-by: Rob Linden <rlinden@redhat.com>

From c3ec57d21d2b754ee05913cfa035f5e31aaaae95 Mon Sep 17 00:00:00 2001
From: rokkbert <rokkbert@gmail.com>
Date: Tue, 13 Jun 2023 17:45:32 +0200
Subject: [PATCH] recv.2: added note that flag MSG_ERRQUEUE is only applicable
 to recvmsg. Only recvmsg allows the caller to even pass the required struct
 msghdr to receive the error data.

---
 man2/recv.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/recv.2 b/man2/recv.2
index 62e43c9aa..3697d0c84 100644
--- a/man2/recv.2
+++ b/man2/recv.2
@@ -145,7 +145,7 @@ which will affect all threads in the calling process
 and as well as other processes that hold file descriptors
 referring to the same open file description.
 .TP
-.BR MSG_ERRQUEUE " (since Linux 2.2)"
+.BR MSG_ERRQUEUE " (" recvmsg "() only; since Linux 2.2)"
 This flag
 specifies that queued errors should be received from the socket error queue.
 The error is passed in
-- 
2.39.2


All the best,
rob

