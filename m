Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1DAA372246D
	for <lists+linux-man@lfdr.de>; Mon,  5 Jun 2023 13:18:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229794AbjFELSl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Jun 2023 07:18:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229611AbjFELSj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Jun 2023 07:18:39 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8FD610A
        for <linux-man@vger.kernel.org>; Mon,  5 Jun 2023 04:17:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1685963853;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type;
        bh=ctw6UDHPYRzArthPMRZORLUMiMFkd58bdtlQO99Y+0w=;
        b=SpAYqwH21SIOoCmCk09vKUwGYmjxIJt2+QVJYfsVe453xu+MNDYC8g2UnUbASIXTONtZjW
        07Gg0lc/M7PJRAAQTgvz6uuwr06BQqmb8+I6NEhC3KtT1KZRTtf4Cx/INc8UFUeVShiZFo
        B3cGG4BmQK58ud52/EE387zlbUgO/uA=
Received: from mail-yw1-f199.google.com (mail-yw1-f199.google.com
 [209.85.128.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-179-NckMKAy3Mgma1yKT3j_YtQ-1; Mon, 05 Jun 2023 07:17:32 -0400
X-MC-Unique: NckMKAy3Mgma1yKT3j_YtQ-1
Received: by mail-yw1-f199.google.com with SMTP id 00721157ae682-5651d8acfe2so80337727b3.2
        for <linux-man@vger.kernel.org>; Mon, 05 Jun 2023 04:17:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685963851; x=1688555851;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ctw6UDHPYRzArthPMRZORLUMiMFkd58bdtlQO99Y+0w=;
        b=iXngGv3rTPnk5PRAcqu1pP9j5wS7bInomcuObn3VGmpruDvgsiEh5Ztjjc3XH4Iu9e
         Y2UKKI5YXMsWd6xiUYMY+IUqQ2HUJqlBHhM9PaBM9mBU5HRjm8t1YdKYHLr5LaA/n9Y3
         B+EJSI4TL2GoDh4VB1ms8C/h8bjLhtnbOe9ekkjJ1U06Bog742lP2I71P0GoHTEzT9e7
         Yu/Y/OJQgrKzbEIZO5dPvmDZyGprhRXnfZ9dMbVu9b9UJStF+Ws9R1dXkBxTCM3rft7Y
         L17zBabW40GtoP6FbwqwGkACCT7w8T/8/+xQ0hxSCMOLvVYDdh6j4P5Ylu0wHKVT1Dp0
         IeZg==
X-Gm-Message-State: AC+VfDwnmfzy5ljtzeJguatKQu70tYUG71+vI38Oxh0N2+bM6ZjGEITM
        hVT2xY8ekkpDlTav0Ee1Oj4Ge3FCPLQk00F4D4knXjVSYCik6wtzIgFBanEbnyamuh2+EQfH65s
        m73qwFmLaudPocCjXmQvQfCMM83PKu7RKngkuoJ8EGOvA
X-Received: by 2002:a81:9251:0:b0:55a:7c7:6ff7 with SMTP id j78-20020a819251000000b0055a07c76ff7mr8882020ywg.11.1685963851382;
        Mon, 05 Jun 2023 04:17:31 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ6D20QiEu5s/ObBxX7spiiccsDBWBBbQyuHsb85nkMWrfIm4cMfKK0PfdCQOsIAwyWR25N+NRMctiXRJUEJlHs=
X-Received: by 2002:a81:9251:0:b0:55a:7c7:6ff7 with SMTP id
 j78-20020a819251000000b0055a07c76ff7mr8882006ywg.11.1685963851160; Mon, 05
 Jun 2023 04:17:31 -0700 (PDT)
MIME-Version: 1.0
From:   Yedidyah Bar David <didi@redhat.com>
Date:   Mon, 5 Jun 2023 14:17:20 +0300
Message-ID: <CAHRwYXsxK-vyOLpDXk7V5F0fvit7O2s0Dj28M5aqXh8vxLdChA@mail.gmail.com>
Subject: [PATCH] isalpha.3: behavior is undefined if c is out-of-range
To:     Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Clarify that the behavior of these functions is undefined if c is
neither in the unsigned char range nor EOF.

I copied the added text from toupper.3.

In practice, calling them on out-of-range values - tested with recent
glibc/gcc - is simply reading from random process memory - meaning, you
either get some garbage, if the memory was readable, or a segmentation
fault. See also:

https://stackoverflow.com/questions/65514890/glibcs-isalpha-function-and-the-en-us-utf-8-locale

Signed-off-by: Yedidyah Bar David <didi@redhat.com>
---
 man3/isalpha.3 | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/man3/isalpha.3 b/man3/isalpha.3
index 443c2aa09..8ad997c29 100644
--- a/man3/isalpha.3
+++ b/man3/isalpha.3
@@ -145,6 +145,15 @@ is the special locale object
 .BR duplocale (3))
 or is not a valid locale object handle.
 .PP
+If
+.I c
+is neither an
+.I "unsigned char"
+value nor
+.BR EOF ,
+the behavior of these functions
+is undefined.
+.PP
 The list below explains the operation of the functions without
 the "_l" suffix;
 the functions with the "_l" suffix differ only in using the locale object
--
2.31.1

Best regards,
--
Didi

