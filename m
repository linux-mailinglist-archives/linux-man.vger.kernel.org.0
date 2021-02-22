Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 507A3321DE5
	for <lists+linux-man@lfdr.de>; Mon, 22 Feb 2021 18:17:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231215AbhBVRQp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 22 Feb 2021 12:16:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38406 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230351AbhBVRQl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 22 Feb 2021 12:16:41 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D923DC061574
        for <linux-man@vger.kernel.org>; Mon, 22 Feb 2021 09:16:00 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id v62so15108950wmg.4
        for <linux-man@vger.kernel.org>; Mon, 22 Feb 2021 09:16:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AovjVqSKmebafa2UF3xdRqmiI+hPnH633+W37ZXvXo4=;
        b=dFxv/056USI0gXUTqLDbnBDs9JJ0bQwxKXSwvk/Bz8oPYPTZ7OPfAYUwthCjRmZw/L
         P6HGDRtvIMpzG3Bn9hMTO6fdpHgGp3IyfakLZh3GGpSCCxLgWXUJl21idY4pEjgqBty/
         vdodh1G8gouN9RG43UNp3mhylSjTyrw1WX7/UgyfJ7QPySKLNE/bLPoaTJ6Zu9k3xw8U
         hHNWmZ1Nw58/nej69A+K3gHxWBpSby9oklEInjJiGf7y03elKKZE8ODFUqPkv46a2H31
         RF4AyHYv0xIsPqQM8gGK9WK4+9nJFqDH2+C9hLVk4H8sL4aQj6C0o17V6lhCBszCzE/k
         UApg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AovjVqSKmebafa2UF3xdRqmiI+hPnH633+W37ZXvXo4=;
        b=MfgD599hWgZvavSR4dXFDkifPAIXf1UyA4bawVuMnA4LekZ8/QI+ZvlhHKAY6Gyy2v
         eIDJdJSPLQDZ6bHFoGrpiTZ97s5CfoqGs045SgLACkRXzc9VPua+IGy1j/zlNGoL0MTZ
         i2wRoWc/v1aY7RX623vGyemH8+EaNKzB63J2yBRgJ0bqJSNvoAQ8sWlUM0VSrk6oVNgD
         Ha/+Evid58g6sy+F6WDAYGzzLvjxFYcKNZGu9cGdOBUreKq2ZFfhMYdHSEmIel7cQ6nM
         +kjEurgD6V+PzWjdSPF1LEMrkvKlxbxkSv3CiOyM/LJbvXVpRaycy+y3pv6qkHCkX61m
         huHA==
X-Gm-Message-State: AOAM533fc2jyXAyqobeJESXrG8aCFQ+Lx6Md9GNy3qlJyL0ZTxQdH/8y
        FnmUX46Dw1vRzKBDU9wnGEo=
X-Google-Smtp-Source: ABdhPJzIIdTs/AWRjeFqPcksbxEUhl8hQKnNRNOR2ulwpqb2p4La+Tt3OTSMLxZuYW+Gvo1axACCzQ==
X-Received: by 2002:a1c:7ed8:: with SMTP id z207mr10361583wmc.93.1614014158964;
        Mon, 22 Feb 2021 09:15:58 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id r1sm1187980wmh.28.2021.02.22.09.15.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Feb 2021 09:15:58 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
Subject: [PATCH] scripts/bash_aliases: man_gitstaged(): Script around a porcelain git command
Date:   Mon, 22 Feb 2021 18:14:59 +0100
Message-Id: <20210222171458.7822-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The output of 'git status' is not stable.

The more stable 'git status --porcelain' is more complex,
and scripting around it would be more complex.

However, 'git diff --staged --name-only' produces
almost exactly the output that we were lookiong for.

Reported-by: Jakub Wilk <jwilk@jwilk.net>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 scripts/bash_aliases | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/scripts/bash_aliases b/scripts/bash_aliases
index 127ed5d08..dcc0eb28b 100644
--- a/scripts/bash_aliases
+++ b/scripts/bash_aliases
@@ -153,13 +153,11 @@ function pdfman()
 
 function man_gitstaged()
 {
-	git status							\
-	|sed "/Changes not staged for commit:/q"			\
-	|grep -E "^\s*(modified|deleted|new file):"			\
-	|sed "s/^.*:\s*/, /"						\
+	git diff --staged --name-only					\
+	|sed "s/$/, /"							\
 	|sed "s%man[1-9]/%%"						\
 	|tr -d '\n'							\
-	|sed "s/^, //"
+	|sed "s/, $//"
 }
 
 ########################################################################
-- 
2.30.1.721.g45526154a5

