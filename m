Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D51A642B45
	for <lists+linux-man@lfdr.de>; Mon,  5 Dec 2022 16:19:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231924AbiLEPTM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Dec 2022 10:19:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232384AbiLEPSv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Dec 2022 10:18:51 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8322DDF67
        for <linux-man@vger.kernel.org>; Mon,  5 Dec 2022 07:18:49 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id y16so19108532wrm.2
        for <linux-man@vger.kernel.org>; Mon, 05 Dec 2022 07:18:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kvwC/QCIv3eMATH92cAgR7ddWzID8UQtIARugq0b+T0=;
        b=oDSJn83NY/2iU1U4b5a7LxJgOiN5E60b/DADWxLGZ+yKlB/WDovBqxWonPgKiOeJz9
         yI7CxUKhCnmrgIe1vQrmoTdA2MSS6cWu7gwNUzCaWnxyz6ukZfbRoW2pynB+oZsk7OG2
         XgY8o58i0MAhAuHjmuWm45T4pEpCeXCKsJq3SFYFmVD2eds7yWZbaZh+2z+/Fn+JMaGX
         +XM4eP4/WXpiUQ/xHEwOlKc+w26FhqpZIMSKI+DV4aT3AgD0xTLYvJxJz/OsikomFQ2w
         6fLqDZ24yWZZ8+OXy5ZUTrovI2yuiKZpV+zYMW3NsOfo7eX5NkPIg36fI6A0CClMdrKN
         /CSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kvwC/QCIv3eMATH92cAgR7ddWzID8UQtIARugq0b+T0=;
        b=t/IQyPM6Upkw60V2W6rj1r3Lh/8LQQP8qbj1L5A6qnD3euVPba+vXryaCLN/d2EkGH
         9C4hCm/quyDLq6fmeWzj4KI5ebMuyw9yZ9I552/GJ8EoxbPMxtYirUUZ8v9dRUYahkea
         5CBcClp5PqC11xm2eB6+ijt2IcICtmj4aIBDxaB1X1ARd9KSuH0zXTXYKZAsrEVOPxWC
         comgWtbf7GrfzcFfNipUIuak2VagV8Bisc0QX7orlY6DW5EoTK6xZpvs4AgikgFKIQee
         qDrqK9GPCSQvC8c6FLsPz0HpMdtsSskKo0r/UxIbCpufZZ5jYDBH2MfViTvi2tZm/QDY
         Wl+g==
X-Gm-Message-State: ANoB5pmnal+5Ethf5bzxBD7au9BuHtfTit52YRlGPyzaX8HgaIfnPN2s
        JHwPoFv9dsIKptpWQjqkt9m3lvvJLuM=
X-Google-Smtp-Source: AA0mqf4/XkPKnzKenVt2LYtqEv1pysMUb1IgGq7d1xGge4gXa8nwjVQ1ilDhA083ercCzujw9wnQnw==
X-Received: by 2002:adf:e5c6:0:b0:242:5c5d:b393 with SMTP id a6-20020adfe5c6000000b002425c5db393mr4334540wrn.403.1670253528095;
        Mon, 05 Dec 2022 07:18:48 -0800 (PST)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u1-20020a05600c00c100b003d1e34bcbb2sm1290597wmm.13.2022.12.05.07.18.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Dec 2022 07:18:47 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>, libc-alpha@sourceware.org
Subject: [PATCH] strcat.3: SYNOPSIS: Fix the size of 'dest'
Date:   Mon,  5 Dec 2022 16:11:03 +0100
Message-Id: <20221205151102.13042-1-alx@kernel.org>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

I had a mistake when adding VLA syntax to this prototype.  From this
fixed prototype, it's visible how broken the design for this function
is.  Next move is to kill this function.

Cc: <libc-alpha@sourceware.org>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

Hi!

I'm continuing my indiscriminated shooting against broken functions.
I don't remember if I ever used it, but it got me surprised for how much
broken it is.

Please kill this function in glibc.  The updated prototype using a bit
of imagination to overextend VLA syntax to show how it behaves, shows
how broken it is.

It is impossible to use this function correctly (okay, it you try hard,
you can, but only for the pleasure of using it without crashing, not for
anything useful).

Cheers,

Alex

 man3/strcat.3 | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/man3/strcat.3 b/man3/strcat.3
index a4a376ba9..61d3e54f1 100644
--- a/man3/strcat.3
+++ b/man3/strcat.3
@@ -20,9 +20,8 @@ .SH SYNOPSIS
 .B #include <string.h>
 .PP
 .BI "char *strcat(char *restrict " dest ", const char *restrict " src );
-.BI "char *strncat(char " dest "[restrict ." n "], \
-const char " src "[restrict ." n ],
-.BI "              size_t " n );
+.BI "char *strncat(char " dest "[restrict strlen(." dest ") + strnlen(." n ") + 1],"
+.BI "              const char " src "[restrict ." n "], size_t " n );
 .fi
 .SH DESCRIPTION
 The
-- 
2.38.1

