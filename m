Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1168A3778DF
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 23:44:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229950AbhEIVp3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 17:45:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230057AbhEIVpZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 17:45:25 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C5CAC0613ED
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 14:44:16 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id l18-20020a1ced120000b029014c1adff1edso10025829wmh.4
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 14:44:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=f5L8nyugapH3BHpEJUboupITJs0klPoEStsBUo2OBD8=;
        b=WWxZru0MOWKnWFREZY69r6soq0SMjnTBHlGqg+kvutKhsdqZNx45fRLnpJINfNMR5r
         wVg+59wQmsCpX9Qpv2EcspK0q8b7207bvEhTzVB/EQEIAs5nucuUT3s4wRgT58hPSWeT
         cvafuir9EvkOto2/QSLWwlh5AZ6WYxugI+SCMyBxUo4+yrvo5tBCRuH2vhqr6sOiWdpB
         TsrWb4UzDZhKnWg6PbAOYD1t8Ck1MKLKkPKkbHaRycwcQE+FmiBn+rjkU94o4jfgMTmr
         orHBqz/AQEHRnGbu9d6g3JISeF5f6YH4+lJOhKOc4hBsjTEI9KVCtHsyLP3ep+UaMLGV
         IUOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=f5L8nyugapH3BHpEJUboupITJs0klPoEStsBUo2OBD8=;
        b=mH4bDnIS/LEQ7kPPEnzGvk+lt+Tz74Eb62Uj6Xs0/b6RdraO+2vsEkLpBTA7EvfWB9
         c5/7bn9Zrnzmm460mM7N5OF6jmT1+IwVB88dSis0ZuZet+4ZQVTVUaaQkkTV8bTskfUO
         vARZO1ZTxVJND0ZUT9EqYf0EMPO9o/vo6QXYgiTs037cvOgRkexKofIiRO2QjQ2tCkVJ
         fwpkqSQHfn1NMTbk7MJT/eeLmtedjYqszHhKvUX1+tp9ARQM2DurFEVi4+8kD8dfhZ+G
         A66tnDh/yR5/YhTMK+F76KPtYWM7vkHhQ8cXdr0jU26kja1zKKNDdasStK+4Ibrb5X7J
         Oy4A==
X-Gm-Message-State: AOAM533KUsQyo02ORG8Ena6ExPJsVrKriuGyAtoMxrW5S3KRBfCEWOQy
        vBZGp+ha2y6Y2aPpJLN68ek=
X-Google-Smtp-Source: ABdhPJwSrDah62XYapQCo3d2agSrPb7sVoCIndxgJtPDmT+Vp4VuEp6XfcsoOPWgYsiy0rHL9D/HMw==
X-Received: by 2002:a05:600c:4304:: with SMTP id p4mr33984578wme.111.1620596654968;
        Sun, 09 May 2021 14:44:14 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u6sm16495530wml.6.2021.05.09.14.44.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 14:44:14 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] scripts/bash_aliases: Fix error messages
Date:   Sun,  9 May 2021 23:39:21 +0200
Message-Id: <20210509213930.94120-27-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210509213930.94120-1-alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Fix the error messages to clearly show that both dirs and manual
pages are accepted, and that more than one argument is accepted.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 scripts/bash_aliases | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/bash_aliases b/scripts/bash_aliases
index 7b1b7da9c..a14026bda 100644
--- a/scripts/bash_aliases
+++ b/scripts/bash_aliases
@@ -126,7 +126,7 @@ function man_section()
 function man_lsfunc()
 {
 	if ! [ -v 1 ]; then
-		>&2 echo "Usage: ${FUNCNAME[0]} <dir>";
+		>&2 echo "Usage: ${FUNCNAME[0]} <manpage|manNdir>...";
 		return ${EX_USAGE};
 	fi
 
@@ -148,7 +148,7 @@ function man_lsfunc()
 function man_lsvar()
 {
 	if ! [ -v 1 ]; then
-		>&2 echo "Usage: ${FUNCNAME[0]} <dir>";
+		>&2 echo "Usage: ${FUNCNAME[0]} <manpage|manNdir>...";
 		return ${EX_USAGE};
 	fi
 
-- 
2.31.1

