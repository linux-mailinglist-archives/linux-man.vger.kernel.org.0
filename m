Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F32F554695B
	for <lists+linux-man@lfdr.de>; Fri, 10 Jun 2022 17:26:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231406AbiFJP0T (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Jun 2022 11:26:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56346 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243751AbiFJP0Q (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Jun 2022 11:26:16 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C51535AA6
        for <linux-man@vger.kernel.org>; Fri, 10 Jun 2022 08:26:14 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id o8so9151790wro.3
        for <linux-man@vger.kernel.org>; Fri, 10 Jun 2022 08:26:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/deg+LSOIzDVh4361W5DzXfPhRGdFZlVT92fiS4PT64=;
        b=Qvh/31V/TaURuvtpiN0X6rLVVGiIW4a4bFbznBB9ID2zDq90/+PQ/dtUlq1Jgrhfag
         46zoY1FC/2PdW3JjA9ECyw23Hqgh4WONM2ipXDIhUsAqrbEHNo6Ky48N4dI/kfynh/ov
         l9J6X5tiUOWvdID4Rvtlsy32lQfp7vbyrC1SmwcQ6dDIW4G5pmH0DbCRevklpfOZob4Z
         +gq+Pw+MBnjHPSjFrmSY5FjODrf4vMo7UVYPRz5CbI72KRHyILaWc6CoqBPVyJLRnZsF
         7M4nXtsjJBty9Pa5mPuhdDK8S1Upou7ttDgvoZ3lDPH7iu66SP9RisJDlAUaM4Tc2cnY
         qICg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/deg+LSOIzDVh4361W5DzXfPhRGdFZlVT92fiS4PT64=;
        b=uqJ2vOcQXVDuxyOCQ+aOhAhtFRKqA2gED+UTgOkX4M0wITmILaXmFPv+RgEnUiHwaw
         BUI61EX70mUV8vK3Bz0EabLaZ2YyveiCm/qxnTdTPYc5uMqBqNFIP5tnb0wYpIkPWVLd
         dqpvL/lBiQRRxYFgAcNXBXjKlm8j0wJ/da8lXlFU7QEc/XtOuMCBosFFf60CJUVxLgFt
         nAtAUCASqvxCKMua/to2TN0iRqP4X3XdZwC6Rti8rrbjcCWemjCYApyHbhHauQQ9Sbyu
         kAym6m/pOajKXR9QNSIFuZiji68B9XxSUGoOWJNbqdxJRwbgJwtOkWkthCWPNxjACZhn
         4gPQ==
X-Gm-Message-State: AOAM5306cnYcfMtB6LHGuumOFFEx3FOZ4pJprDDZLRWyl8w8DboSRgGj
        NSUW2Q9/Kwi39MlbAQTdmm+ucLmX/5UVfQ==
X-Google-Smtp-Source: ABdhPJxCFATgzwz+Hzsu1niRJMsN3DjfalPaPH3x+EgbIij2Rbwx+V8ei8sy+Yvijt6EOI93upGFvg==
X-Received: by 2002:a5d:64ec:0:b0:210:2f56:9fb5 with SMTP id g12-20020a5d64ec000000b002102f569fb5mr44624391wri.579.1654874772855;
        Fri, 10 Jun 2022 08:26:12 -0700 (PDT)
Received: from dell7760.alejandro-colomar.es ([77.107.214.69])
        by smtp.googlemail.com with ESMTPSA id c14-20020adffb0e000000b00213465d202esm25331713wrr.46.2022.06.10.08.26.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jun 2022 08:26:12 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Peter Xu <peterx@redhat.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: [PATCH v2] man-pages.7: STYLE GUIDE: Mention UNIX for Beginners
Date:   Fri, 10 Jun 2022 17:29:00 +0200
Message-Id: <20220610152859.19069-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220610122111.2k5jkzgo2k5odpbf@illithid>
References: <20220610122111.2k5jkzgo2k5odpbf@illithid>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Reported-by: Peter Xu <peterx@redhat.com>
[gbr: style fixes]
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man7/man-pages.7 | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/man7/man-pages.7 b/man7/man-pages.7
index 547ed660a..138fda5fe 100644
--- a/man7/man-pages.7
+++ b/man7/man-pages.7
@@ -578,6 +578,12 @@ project.
 For details not covered below, the Chicago Manual of Style
 is usually a good source;
 try also grepping for preexisting usage in the project source tree.
+.PP
+.UR https://www.ualberta.ca/\:computing-science/\:media-library/\:docs/\:unix-beginners.pdf
+UNIX for Beginners [2nd ed., Brian W. Kernighan]
+.UE
+also contains a noteworthy section,
+\[lq]Hints for Preparing Documents\[rq].
 .SS Use of gender-neutral language
 As far as possible, use gender-neutral language in the text of man
 pages.
-- 
2.30.2

