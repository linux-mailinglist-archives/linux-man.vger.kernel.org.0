Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E1D937224C7
	for <lists+linux-man@lfdr.de>; Mon,  5 Jun 2023 13:39:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231886AbjFELjS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Jun 2023 07:39:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232682AbjFELjO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Jun 2023 07:39:14 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6021F4
        for <linux-man@vger.kernel.org>; Mon,  5 Jun 2023 04:39:08 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-3f7368126a6so12105765e9.0
        for <linux-man@vger.kernel.org>; Mon, 05 Jun 2023 04:39:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685965147; x=1688557147;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CJm9VerPprP20j7Fsz2xx5dvjJtNntmzfitHUd1wSFQ=;
        b=Vd3lTDU48ctsL6L3cVrG/IkrX0S0MZM5qK2uG+2scbj/s/Zn4XlvMh7gLxEFPUcTkr
         8Q1MF+xzU56zGfe7NLA6B0sjjtra4wskwJ2S+hQ0UXnLW7fUSpBGIjMDSwtt2hmvKDu5
         UlzxmrtjLZWvq+QMlFiobttXZHFFZ2PO3eSX5ERVs3MLkgfmK/OTyQ3JAixrDevhdB4q
         Ek8W5iOfXfBSytdRezjCNAJX+Ft9Gq6momcjXaJwsuBFYnIJHFB79AQb+8w0NPX6xSvz
         hanwM/LiRLtzoxR2w0spKfgNsDjZBqXbNJrnP8C1HPtb4zsibCqTqq52cVDpeLEWYhyB
         NTOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685965147; x=1688557147;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CJm9VerPprP20j7Fsz2xx5dvjJtNntmzfitHUd1wSFQ=;
        b=O0OUpg6u/JxXJA0/wlBzBcqRVWAsyNbjaN2CrzRqFyd6hsW7F7JqdZtqgpM/avQFXm
         Tlir9kx/0TuyznDz1OjL/zXxFzTxRbPccgKxzKWJT6RIyvat5esPIuUUmUi0TDjniLfO
         OuYx9sflV/GzPGSIgA4LdAlIN12P59CSIKVSvZO2lA3XnZchIBp5GyDV5/auv6FfT745
         E6voYhrdUKNkV+kGxvHEF1435F9oYMug+LDIW2iUHXwNt9J3CvOnzxHjD5VdKolDS+hR
         ERdsBh7NHy0zABPJheHYy7rL22xdwBk28BYXM/+hCoRxje9yEft1v9P5DJwRrV4YSumR
         Gh4g==
X-Gm-Message-State: AC+VfDxfIWdqDvlvsKIL/bO+sISaVlJoBYdpXeRulnoVbM6T0PEJ3UYQ
        dwq4fq3DBVD6mutbAPsJKXmJMTkRg6w=
X-Google-Smtp-Source: ACHHUZ5IWUo7/NyI8lQ6uzUElzQAvmAMkC5c4xDfLKZJED+HYRJDONT7HnjNXwwwQ4G5PRrqBamClw==
X-Received: by 2002:a1c:4c15:0:b0:3f7:e70c:8eb0 with SMTP id z21-20020a1c4c15000000b003f7e70c8eb0mr690624wmf.2.1685965147157;
        Mon, 05 Jun 2023 04:39:07 -0700 (PDT)
Received: from asus5775.alejandro-colomar.es ([170.253.51.134])
        by smtp.googlemail.com with ESMTPSA id m11-20020a7bce0b000000b003f1958eeadcsm14038493wmc.17.2023.06.05.04.39.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jun 2023 04:39:06 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>,
        Yedidyah Bar David <didi@redhat.com>
Subject: [PATCH v1b] isalpha.3: Move NOTES to CAVEATS, and clarify some Undefined Behavior
Date:   Mon,  5 Jun 2023 13:38:37 +0200
Message-Id: <20230605113836.8496-1-alx@kernel.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <14cbb4e3-9302-8065-2320-978181fbede0@gmail.com>
References: <14cbb4e3-9302-8065-2320-978181fbede0@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Reported-by: Yedidyah Bar David <didi@redhat.com>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

I suggest this instead.

 man3/isalpha.3 | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/man3/isalpha.3 b/man3/isalpha.3
index 000e816d7..721ca8972 100644
--- a/man3/isalpha.3
+++ b/man3/isalpha.3
@@ -345,13 +345,15 @@ .SH HISTORY
 .TP
 .BR isascii_l ()
 glibc 2.3.
-.SH NOTES
+.SH CAVEATS
 The standards require that the argument
 .I c
 for these functions is either
 .B EOF
 or a value that is representable in the type
-.IR "unsigned char" .
+.IR "unsigned char" ;
+otherwise,
+the behavior is undefined.
 If the argument
 .I c
 is of type
-- 
2.40.1

