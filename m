Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F2B53322EF6
	for <lists+linux-man@lfdr.de>; Tue, 23 Feb 2021 17:42:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233168AbhBWQmB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 23 Feb 2021 11:42:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232942AbhBWQmA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 23 Feb 2021 11:42:00 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C065BC06174A
        for <linux-man@vger.kernel.org>; Tue, 23 Feb 2021 08:41:19 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id y17so1682311wrs.12
        for <linux-man@vger.kernel.org>; Tue, 23 Feb 2021 08:41:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vLSG2FHFkx4iVIoXwvSQkdtKaE9CMujFDOsi2j9Ng8w=;
        b=kicDY0pWce+E+ui8ZRhSjz0UKQVYRMRUvMierru+EKnXvMHWiDmz4bPMl9zrMWtKRc
         JjjRY4uySkE2JNfCdIAHweRj0MhXdqxKj2v131YxTXQEDoEYqeHVAzd87A149S6OtylO
         Nqxve/w3sb8AglxS7amMzbNye5Z/932t0LEYCI2GAprEKJnKamOdbdeobNvhObL5CLow
         yRw23TA4UCXjFSg++4nanItPjsTcTEKAFk8QwFHRZqD17YEvyC1Ol4Pv1/Mdnpj2NT4W
         N71qgYigLvH5G40DKc9KMk0euw4DKJhS8IkpDVaMOXI8HUeVF511ERv2bHk8wZaqtitm
         G7dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vLSG2FHFkx4iVIoXwvSQkdtKaE9CMujFDOsi2j9Ng8w=;
        b=QDD3hPvrNjTfpZnJiRDOPwxP+6OGU7Px+2mXBsdOooDq64u0wAMwgbV2xi3eaNPJz8
         VjAOCN1/JoMqICtVp3+c1nlpwPKZvkBjp2X/2uSloDP8muuDZtFTFTAJXyaFo0hlLzTs
         AeLYe09mpaKoOoqlr1ls7Rt7lDJ2QUytwYVEscJHRUIjofdgP4DFDTuFXbtNW2AxsT80
         +42EZldZY16GulgJcNuGxZ1Lij3zWtdpU3cuGvBQMO40gvRUTSuvAK1cDr587R8iVOad
         1yoDf4iNouhbtOgZqYn4KMSWbshRBFkRmn8qRPyhi2+2EgohhmmCITIM+zeORLUrV+xL
         baZA==
X-Gm-Message-State: AOAM531DKzFdHZQXbQx5NiR4/O77tqVGFxvf+BPDRwW0HV0tobZGtn/N
        NW1QPabCamX96VYtpF9CLFv74xGB1Na4cg==
X-Google-Smtp-Source: ABdhPJxU5uTCuQ3Mklj5M9iBjS3/g68k7p8UuiO4tbpmsa2jDoJj4zHtXJRtgVw1GyhQh5G1Ey92qw==
X-Received: by 2002:a5d:5750:: with SMTP id q16mr13131255wrw.315.1614098478608;
        Tue, 23 Feb 2021 08:41:18 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id h12sm39858238wru.18.2021.02.23.08.41.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Feb 2021 08:41:18 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
Subject: [PATCH v2] scripts/bash_aliases: man_gitstaged(): Script around a more stable git command
Date:   Tue, 23 Feb 2021 17:39:15 +0100
Message-Id: <20210223163914.18310-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
In-Reply-To: <20210222171458.7822-1-alx.manpages@gmail.com>
References: <20210222171458.7822-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The output of 'git status' is not intended to be stable.

The more stable 'git status --porcelain' is more complex,
and scripting around it would be more complex.

However, 'git diff --staged --name-only' produces
almost exactly the output that we were lookiong for.
This simplifies the script, and makes it more stable and robust.

Reported-by: Jakub Wilk <jwilk@jwilk.net>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---

v2: Fix commit message

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

