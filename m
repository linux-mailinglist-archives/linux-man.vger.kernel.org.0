Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CDBBE44EFCB
	for <lists+linux-man@lfdr.de>; Fri, 12 Nov 2021 23:54:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232129AbhKLW5W (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 12 Nov 2021 17:57:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235329AbhKLW5T (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 12 Nov 2021 17:57:19 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55A27C061203
        for <linux-man@vger.kernel.org>; Fri, 12 Nov 2021 14:54:28 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id r8so18018792wra.7
        for <linux-man@vger.kernel.org>; Fri, 12 Nov 2021 14:54:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AcT2HZpuYRRzARag2OUGgt68lNvZ7YMcso5GumzmPYQ=;
        b=nNTj65opwPxFCkGCp9YQo46Q3TzxmKpRYdskW8TO4UIvrqz+CVNzzHgIE/rgk8LnjI
         Uyxg9CCPkwZ1sVo3k/21KdEaMS8iynDxA8s0QBSk6aJY3nFK5poyvLqCc6nqHzewYQAb
         nhT43dJGGtinWaRCPx2uEXpYsh9xULrHmvcS5jUHlJHeLpkFphTxxqC2SviYZqNV5CRm
         OcAs4jBXUkEBSw1hutlnJrsuxCjQLWFUwFagi71NOqSo+XyNnzHV4/iz/byDVVgxIbMp
         +sbCNsHGqi0ZGkkovUuY/myklfLAZtTLk3iqDknG7Nc+H1TfyXMDS7EoTsSMmUeWv3+h
         IYow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AcT2HZpuYRRzARag2OUGgt68lNvZ7YMcso5GumzmPYQ=;
        b=nGqh34kV/xwJfHTex2oPfmaxF6T97MDdSMCplIRvJlub4OLaXg4ISJ2+gexYUrQ0pS
         UpyiIXpvYuDGjoZl0ocmBdOk08iPwy+eoFyT5dtoETLNOIIb/4PQPgGcJHonAKiMLu5r
         kXiiH1PLg8ilNX0Bs352qgMlUdiqlYTz/6CGi0n6iNF2RxjTXKRRIYxMKaBQiMszZETn
         4y0jAFOqSDj/qDI84DZECMRhPX2he0+GmgRY5dkllFpzrs852UjrdaPbVY4crXvmyO6K
         JKlqx2CtwGKBOVmFeTwohd2OdcKx2L6/SzqNNOrDUbjYtfVK0yfZ0j03t8f0z0CVpUeF
         EXpQ==
X-Gm-Message-State: AOAM531A3vHOSoZMN6u8XD23FHw9x7gWAC7vibGC+3GYvVXrbDxPnQ3h
        yqEbQNSovbt/2c3VEjYTG7E=
X-Google-Smtp-Source: ABdhPJxev9MlAFTK88ByS4Dfhzj7OsRZMDgZ/57TvZnoxvvwp/aLc8LH4KSoDfRWBF4HC+wLHRq6xQ==
X-Received: by 2002:a5d:4575:: with SMTP id a21mr22031536wrc.193.1636757666915;
        Fri, 12 Nov 2021 14:54:26 -0800 (PST)
Received: from ady1.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u23sm7441980wru.21.2021.11.12.14.54.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Nov 2021 14:54:26 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>, mtk.manpages@gmail.com,
        linux-man@vger.kernel.org
Subject: [RFC] man-pages.7: Add phrasal semantic newlines advise
Date:   Fri, 12 Nov 2021 23:54:23 +0100
Message-Id: <20211112225423.8361-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man7/man-pages.7 | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/man7/man-pages.7 b/man7/man-pages.7
index 23015b00a..b52a2260a 100644
--- a/man7/man-pages.7
+++ b/man7/man-pages.7
@@ -640,11 +640,13 @@ makes it easier to write tools that parse man page source files.)
 .SS Use semantic newlines
 In the source of a manual page,
 new sentences should be started on new lines,
-and long sentences should be split into lines at clause breaks
-(commas, semicolons, colons, and so on).
+long sentences should be split into lines at clause breaks
+(commas, semicolons, colons, and so on),
+and long clauses should be split at phrase boundaries.
 This convention, sometimes known as "semantic newlines",
 makes it easier to see the effect of patches,
-which often operate at the level of individual sentences or sentence clauses.
+which often operate at the level of
+individual sentences, sentence clauses, or phrases.
 .\"
 .SS Formatting conventions (general)
 Paragraphs should be separated by suitable markers (usually either
-- 
2.33.1

