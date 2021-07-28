Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8BFBF3D9696
	for <lists+linux-man@lfdr.de>; Wed, 28 Jul 2021 22:20:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231564AbhG1UUk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Jul 2021 16:20:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231549AbhG1UUk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Jul 2021 16:20:40 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0AE9AC061757
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:37 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id b128so2219890wmb.4
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4zzGAUE5bEG2k8aK179OeduSKzjk54cvBfgP4ls8n54=;
        b=SPJE+fUW/FdhBPCid4gJR2YOYTbPAEvZ7c73cSVuoaaMNY+jPjycYEYFDdQZ00VcwA
         7ysharFR2t1u6IyvwbWQrsBr5IdLGbXtUw744TmfhPSl35z0M3iUssnW+a16Kvua2ndm
         psdd2XNJBNsNw8v+dbPTl66uNo/MFF7s6I2fCtUHlMKIaO83h56a5enZF0LU6dR2zLBa
         rjydxtecHHLc0H0Y560rQQ25F4p45506CEZB3gEmgG2PtPepzhi/ZKg6TwYMJoSlvthc
         xwBVviYzVpgdBZXuK5VA0X+00MvpnGrj8eVq+ycJDzFuLYSag16L/bHCVDZLAi8QWHjX
         Tr/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4zzGAUE5bEG2k8aK179OeduSKzjk54cvBfgP4ls8n54=;
        b=bmEurt5ft6vr61IeTwKK5onjxQeedPoFEZiPQ9IIZCY2qDxIA8Uul0cMHzzRZ559ks
         cxL/QtvnlM9lGbqa1gPin238Pb+q4fAFBd7Ki5fMrgLbViQ/yD+38dcsSKnq6TQspXSu
         2o585bcSyuvAdnods3Ftq4OJ7R9mkN3JW0KC6y60Vcz2GEknBYudYDGODlwkfT9eoG2P
         zglevcUViHR9cds0d0RYzdcwaeoSq7wRsNhYFkqL1YuXXcwzmgGdnSI2MUPXhjCtnbmE
         6BewcsoKGaQY8TnrCcdy6/mboK2IMf39aVkuZHOnM+glO9jF8b0P+LeWuxrUF5L/fiAV
         hACA==
X-Gm-Message-State: AOAM531EMMLe6bAN+Tw8pr9NfYIeETxSBzxN4BjsHSrUiBUSZ9vOBXyW
        dfkj6YqVWGhijwCQVLduomY=
X-Google-Smtp-Source: ABdhPJybNuJlsbXu5GLf3E/qbdKevbetsoGmlTWbaZYMgykk0ZbNhSmTHKz0rmor4ipgo/lQZi+Nbw==
X-Received: by 2002:a1c:c918:: with SMTP id f24mr1320065wmb.88.1627503635662;
        Wed, 28 Jul 2021 13:20:35 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id o29sm879703wms.13.2021.07.28.13.20.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 13:20:35 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 23/32] scripts/bash_aliases: tfix
Date:   Wed, 28 Jul 2021 22:19:59 +0200
Message-Id: <20210728202008.3158-24-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210728202008.3158-1-alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Jakub Wilk <jwilk@jwilk.net>

Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 scripts/bash_aliases | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/bash_aliases b/scripts/bash_aliases
index 102c458d7..ecac0029d 100644
--- a/scripts/bash_aliases
+++ b/scripts/bash_aliases
@@ -24,7 +24,7 @@ EX_USAGE=64;
 #	C
 
 #  sed_rm_ccomments()  removes C comments.
-# It can't handle multiple comments in a sinlge line correctly,
+# It can't handle multiple comments in a single line correctly,
 # nor mixed or embedded //... and /*...*/ comments.
 # Use as a filter (see man_lsfunc() in this file).
 
-- 
2.32.0

