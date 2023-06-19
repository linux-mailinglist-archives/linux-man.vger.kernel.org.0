Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 46BFD735626
	for <lists+linux-man@lfdr.de>; Mon, 19 Jun 2023 13:50:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229950AbjFSLuY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 19 Jun 2023 07:50:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59468 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229810AbjFSLuX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 19 Jun 2023 07:50:23 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2F10E4D
        for <linux-man@vger.kernel.org>; Mon, 19 Jun 2023 04:49:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1687175368;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type;
        bh=irdUnLLDJUH0TysVjlJPImD2S14SKzgR/qKpqM2VYQk=;
        b=O0yvxTj3eGyUbdr7f6mfrEXsYPOMbM+M1/F4o0wacB6aVpvDu+gjVMpZZmWzJDIZ71sWs/
        79zWMVG1Yvd45QDU4XtAnQuHks+5d96/spiHLcE4wvT0buqZzPmDoN+Hk69EryvdMU4evO
        pKpp2Aoi0MFrCRCcWiTPISCfJ5+Jnw4=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-230-TeWJGSmvMGOp7jOrmn7ZJA-1; Mon, 19 Jun 2023 07:49:25 -0400
X-MC-Unique: TeWJGSmvMGOp7jOrmn7ZJA-1
Received: by mail-ed1-f71.google.com with SMTP id 4fb4d7f45d1cf-514abe67064so2442702a12.0
        for <linux-man@vger.kernel.org>; Mon, 19 Jun 2023 04:49:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687175363; x=1689767363;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=irdUnLLDJUH0TysVjlJPImD2S14SKzgR/qKpqM2VYQk=;
        b=A+ZAZVBQz6ZFWG6Zz+DXAipgYcAQuM54MY4M9/t0aMh4RXcymcY17XY23+rvHLzOMr
         Kgr5GpjR0Frka7ca8yA7y8EKm8aH7JPnOie6LeuIju5m7mVWo4AxQjNR5c1sCKlZwwDn
         bO53PCi6QJ3i6tCc+tgBcWKlWuHiBOGJRuKRw+nwoJLh+kIER2ozJEpLitDJF48i5DKt
         E2agM4vHrb3S8FQiVnDTbCZWrxwTU9wpZ6Ym+duAgen1FtJQN/vVz/y0TGmNf+uPUxjw
         XXZduJY/hjADJ457mpAqakeAw9jsR3lFb+PMRDiiAFXjE8X+Zdw2IbftvGjagcDRvLgY
         dtsQ==
X-Gm-Message-State: AC+VfDzF15K6pVJVyTM5KAeiesBEvUrMYMk0BPhxqGyjKXA5vhc/6+ci
        pSnXEibffaqc+Zv0TbUc9xx4KXT+j69nlXJAVZ0oqkA8Rkll0hZW+c0/tXwmOkSgRODVXsIhp+z
        8plJ7/iwjNudIOwYoYcrImgYI7NoXhUEDZG/X
X-Received: by 2002:a05:6402:2cd:b0:51a:2125:74d5 with SMTP id b13-20020a05640202cd00b0051a212574d5mr6292205edx.20.1687175363263;
        Mon, 19 Jun 2023 04:49:23 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ72ZQL7Y2L2ppE0d3ntR9ZZzkVpsADwWZ0UN8Qec7mmr+YV3KRFBmF/UEtyKox/3l364VcUAUFIIx5yi7hiD1w=
X-Received: by 2002:a05:6402:2cd:b0:51a:2125:74d5 with SMTP id
 b13-20020a05640202cd00b0051a212574d5mr6292193edx.20.1687175362972; Mon, 19
 Jun 2023 04:49:22 -0700 (PDT)
MIME-Version: 1.0
From:   Rob Linden <rlinden@redhat.com>
Date:   Mon, 19 Jun 2023 13:49:12 +0200
Message-ID: <CAP0H_AFpK56deW+_Lb0Q3-51Z6kiL_G-SBYmC2GDnpTmrWj0FQ@mail.gmail.com>
Subject: [patch] recv.2: correct non-existent name msg_iovec
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

Hello Alejandro!

I think there is a mistake on the manpage for recv. In the description of
the flag MSG_ERRQUEUE it says that data is passed via "msg_iovec". This is
probably referring to msg_iov in struct msghdr
(from /usr/include/bits/socket.h). A "msg_iovec" doesn't seem to exist.
Maybe it was spelled wrong because it's of type struct iovec.
If it is indeed wrong then the following patch corrects it:

Signed-off-by: Rob Linden <rlinden@redhat.com>

From 830a1b1233eb69bd8a4a64296581d094fb0edc46 Mon Sep 17 00:00:00 2001
From: rokkbert <rokkbert@gmail.com>
Date: Tue, 6 Jun 2023 10:00:20 +0200
Subject: [PATCH] recv.2: field msg_iov in struct msghdr is wrongly called
 msg_iovec. Corrected to msg_iov.

---
 man2/recv.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/recv.2 b/man2/recv.2
index 27d6d612c..62e43c9aa 100644
--- a/man2/recv.2
+++ b/man2/recv.2
@@ -159,7 +159,7 @@ and
 for more information.
 The payload of the original packet that caused the error
 is passed as normal data via
-.IR msg_iovec .
+.IR msg_iov .
 The original destination address of the datagram that caused the error
 is supplied via
 .IR msg_name .
--
2.39.2


All the best,
rob

