Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 595DF3B7A27
	for <lists+linux-man@lfdr.de>; Tue, 29 Jun 2021 23:57:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235280AbhF2V7c (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Jun 2021 17:59:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32964 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235094AbhF2V7c (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Jun 2021 17:59:32 -0400
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A998C061760
        for <linux-man@vger.kernel.org>; Tue, 29 Jun 2021 14:57:03 -0700 (PDT)
Received: by mail-pl1-x632.google.com with SMTP id i4so295544plt.12
        for <linux-man@vger.kernel.org>; Tue, 29 Jun 2021 14:57:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Xm4XwEnWYNmqvRotFo4YNC8hYsjWQAo5fxJB9pF+KTk=;
        b=JcDglthdBzJSIWOfoEHqNaomkz9HbZhKUecQXZka2qDHUOLqrCetsjvOm9KOTW908y
         cyuAft2NDLJ+KSDBF9/mRVdozAYYFqlhHygeEHzN7JmSvZSf1G5gikjAzZqLwcScc8jY
         qLx5A+bLX8rysWF0z+SDZiqX3qb3I7znLrk5G/OWT6mdHgHvxkiERMg2Geiopo75moMY
         pvSZTk9cj9T+81zxzMTEmTOHIp6zpvjuCVo+71TKN5cqlWllkmnekAtOSW1jfI1ddtEk
         Fn9QwxCgBmX/w5kr68INjhgZ8+3itQNuvuE/1nKlSgfk7EWDd0Vyy+fjaylryqwvdpHm
         fxBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Xm4XwEnWYNmqvRotFo4YNC8hYsjWQAo5fxJB9pF+KTk=;
        b=I25HolhGJihBTHq4ZYiE9N7bTGHjDgTq7WRfR87hf7kwDZiZV7fA9BYcS2PLx+krAB
         8rpzoRw8m8EE+V/t+81s4/QRdRwQS+4jq/7qWWw6NaV448L8bvTeKm042khG8vdGy4N0
         p7imZytC21GtpGeXs+8rFF3bnMq35M3lWxjl40OMLsDNsW0NKUawtUjN1T9yQq2TmNno
         /Ew8o09eMNndW51ixljvc/y9mACs7jSK7WCOgXR09XOdAlDcnr6t0C8VNBrt7fi9Sg+U
         b3B9LNIjDOxd3nX/9hHulKjIOY8q9/Ll4Dm/MR5voFWKkd415D6dK6MY1SIY3pl5RzgM
         tjRQ==
X-Gm-Message-State: AOAM531XmQGqlhMVhqSCwA0smDRVIa0qva952K694HJLNtOPS3PoSmbK
        2OYYm+aIjKij3KGhbIcYWxwpUbDViapDmP5a
X-Google-Smtp-Source: ABdhPJyvd0AxAmsBe6E3XYyH2FKfnMfQwBh8lwcZFjHno9pb827cTmRTdxgQcaohmoKXOB05qncd3Q==
X-Received: by 2002:a17:90a:eb11:: with SMTP id j17mr10716328pjz.177.1625003822607;
        Tue, 29 Jun 2021 14:57:02 -0700 (PDT)
Received: from kir-rhat.lan (c-76-104-243-248.hsd1.wa.comcast.net. [76.104.243.248])
        by smtp.gmail.com with ESMTPSA id u23sm21885898pgk.38.2021.06.29.14.57.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Jun 2021 14:57:02 -0700 (PDT)
From:   Kir Kolyshkin <kolyshkin@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Kir Kolyshkin <kolyshkin@gmail.com>
Subject: [PATCH 1/3] capabilities.7: tfix
Date:   Tue, 29 Jun 2021 14:56:58 -0700
Message-Id: <20210629215700.137856-1-kolyshkin@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Add a missing comma.

Fixes: 3dcdef9437fafb
Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 man7/capabilities.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/capabilities.7 b/man7/capabilities.7
index cf9dc190f..9f8f0087f 100644
--- a/man7/capabilities.7
+++ b/man7/capabilities.7
@@ -215,7 +215,7 @@ Lock memory
 .BR shmctl (2));
 .IP *
 Allocate memory using huge pages
-.RB ( memfd_create (2)
+.RB ( memfd_create (2),
 .BR mmap (2),
 .BR shmctl (2)).
 .PD 0
-- 
2.31.1

