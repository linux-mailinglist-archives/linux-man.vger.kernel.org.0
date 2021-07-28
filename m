Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 299533D9686
	for <lists+linux-man@lfdr.de>; Wed, 28 Jul 2021 22:20:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231331AbhG1UUY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Jul 2021 16:20:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229878AbhG1UUX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Jul 2021 16:20:23 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22AF1C061757
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:21 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id r2so4043639wrl.1
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=paINCzxQVfUQiVR79KjUK5djDoBo9iY6OjfBLlPYQA8=;
        b=I3pt/E3KDExsAXej1kdJ9ZJJjCvnSLXDTtV9RYSiAH61C49lbr1OYuZ5yjjeVvMrRV
         U9c8IkPKSUO/XmA/7DimERfK8z2L3DGsEVtEDEzEy1pcfS6Rcq4SEyiTkA6qEfF+DKEM
         34T1gMg0Ixk3zqxrE+QG9mZ7owNAqoCHEe71UawWHz5f9ZsUnL6yiFaYd7cF2/tQi22p
         penrM9Bl/krSKTFARnuIFiTVRiMpUe4l3SI1o1CZwZIk2sQUPpA/Q1jb/IvH/pIeP9PJ
         AWGTgLpd+i50+2fArVrl4Nr+PusM+rnvXk4E8fB3z9YEP6lmWul/GrWKJH5Svenh9MSY
         EAvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=paINCzxQVfUQiVR79KjUK5djDoBo9iY6OjfBLlPYQA8=;
        b=LRMYY2OOXZAL341r+oi3mx+eTuRvab8L5QXnA8PlA8SvyS76u9I/EkuVkyCFu+Er2C
         9+tUX2Hszo6wnfIHTMGxjOL+oFOMNe+usjmVOnIMOHlXMPkCjBrYaPL0yq6E2iXXUXo7
         JpyLelJygX+RfzFpvRx9BJjx12tRU0YW+lwEAtNhuewCWNmQFRwsfRwNQ3Q8Da0XgmuG
         K40ZghuJXSX1feN7QwNsIzE5bhE0G589jEHYmj28xQUe959mnO+ijtKj8mwTYkpCZYiY
         vY9VyJD+VNEfs5Blul6M8EkDjmlWGjLKI1naMZfi5FGNPHK/5tO1k5W7DSds/QC3uS9G
         UeUA==
X-Gm-Message-State: AOAM533lgAvsFpgAIy07RvqNQbV/aJnmNCcmwfY1P8T6H+cdH79MtzIz
        /JHGD3tSbz5Wfv16qd7FbOw=
X-Google-Smtp-Source: ABdhPJzeg+HRAOki+dVLnhE42SPv2yIWCr5b9wCUtEcdMLcJrZLEItfTSmCiWwL68yKgOgn/E1CVGA==
X-Received: by 2002:adf:f112:: with SMTP id r18mr1087794wro.160.1627503619804;
        Wed, 28 Jul 2021 13:20:19 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id o29sm879703wms.13.2021.07.28.13.20.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 13:20:19 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Sergey Petrakov <kr@spmail.info>
Subject: [PATCH 07/32] printf.3: wfix
Date:   Wed, 28 Jul 2021 22:19:43 +0200
Message-Id: <20210728202008.3158-8-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210728202008.3158-1-alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Reported-by: Sergey Petrakov <kr@spmail.info>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/printf.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/printf.3 b/man3/printf.3
index fcc3bd6f3..1074626e1 100644
--- a/man3/printf.3
+++ b/man3/printf.3
@@ -115,7 +115,7 @@ is the same as
 except that it outputs to a file descriptor,
 .IR fd ,
 instead of to a
-.I stdio
+.I FILE
 stream.
 .PP
 The functions
-- 
2.32.0

