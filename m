Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 92DDA3FA59D
	for <lists+linux-man@lfdr.de>; Sat, 28 Aug 2021 14:15:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234070AbhH1MQC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 28 Aug 2021 08:16:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233646AbhH1MQB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 28 Aug 2021 08:16:01 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47FCCC061756
        for <linux-man@vger.kernel.org>; Sat, 28 Aug 2021 05:15:11 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id d26so14768837wrc.0
        for <linux-man@vger.kernel.org>; Sat, 28 Aug 2021 05:15:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=tC2uLa5vTPpcf5AydnmkFZT730LR1pXGxMreKMF3fK0=;
        b=DmUesORkdppujx2Iny2PgJAgBjiq/uxcOGe5XQTCY35cp2sgylGXwLGPjKjNiGHj86
         ZpHD5KBVnudnTRSMFzBYaFnmn0nCgVp+B+QUUFHztDFZgKSAs/y/UEgVv2Pg/v2jQs9P
         UoIQ/+dCOMJBxUaWuC+vDp7Pfj53DOUvUK1xicQh9JBUsEDqlfneuGVw/gkPCpkLcj59
         upbNqPlAXfsbJIanbQyxu9ZVJ8jWTPO5tYi3mLi12sDYkFtfF9UEQWZ4YZICwxXnkttY
         XlWtChmtMHcO7Y4/lZHgq+sPd73q8ZbY00k936nmh/dBP58jykLcpR1Nw6HxRnjmN3eR
         CmTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=tC2uLa5vTPpcf5AydnmkFZT730LR1pXGxMreKMF3fK0=;
        b=HTpTK4ox+xZFbxKSVpFEQTaqrrziRaNOREdIzQ6yz/Hh5lwwcRxrdl5UqkqocgptEH
         Wkv4pgcfyPFn1q4JLP67iVt1Gb0NpOJ4hOj3fo8+z0WIEg/IKsxlo3DWwE384WvmZ+JI
         oozsWiJReE8HnnNa46vBCX/Cqk/90V68iU/mCOVRxdy2zL8C6AR0YjHSTfInJwuAWQNx
         5k7OMv23QEfXgYivO+ZROZVDo/NU2TK6ajEJFEDx1dS5N46WMouIEvsfxQI7iMH+oWkL
         RdDUKdUUW2+mMtFh/HiIN79FBLn4BlHKHzYMq8jZyw2/WGQPTSNzwetRyE24O4VVr3Zk
         X7pg==
X-Gm-Message-State: AOAM5330C1ciU8fFjpDwaAgxQgL8BV1Pcur0WQThOyz5ute0LihNNbtq
        91bmrL14UXzt1GLCr96BeddhgZ3tHDc=
X-Google-Smtp-Source: ABdhPJziytJndEqFkTn0iMSZ9DC2KcB0DHR7VuMqpMbgtaqnESxaMUOV6Ga6Ua/pvpJH8wkMO2734Q==
X-Received: by 2002:a5d:4647:: with SMTP id j7mr16008182wrs.149.1630152909973;
        Sat, 28 Aug 2021 05:15:09 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id h15sm8119360wrb.22.2021.08.28.05.15.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Aug 2021 05:15:09 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 2/2] operator.7: Reorder symbols as in the standard (C11)
Date:   Sat, 28 Aug 2021 14:11:08 +0200
Message-Id: <20210828121106.999689-2-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210828121106.999689-1-alx.manpages@gmail.com>
References: <20210828121106.999689-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This makes it easier to compare this page to the standard,
to get more details about the rules between operators.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man7/operator.7 | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/man7/operator.7 b/man7/operator.7
index 22c107c7f..2770c5806 100644
--- a/man7/operator.7
+++ b/man7/operator.7
@@ -47,13 +47,13 @@ This manual page lists C operators and their precedence in evaluation.
 lb lb lb
 l l l.
 Operator	Associativity	Notes
-() [] \-> . ++ \-\-	left to right	[1]
-! \(ti ++ \-\- + \- * & sizeof	right to left	[2]
+[] () . \-> ++ \-\-	left to right	[1]
+++ \-\- & * + \- \(ti ! sizeof	right to left	[2]
 (type)	right to left
 * / %	left to right
 + \-	left to right
 << >>	left to right
-< <= > >=	left to right
+< > <= >=	left to right
 == !=	left to right
 &	left to right
 \(ha	left to right
@@ -61,7 +61,7 @@ Operator	Associativity	Notes
 &&	left to right
 ||	left to right
 ?:	right to left
-= += \-= *= /= %= <<= >>= &= \(ha= |=	right to left
+= *= /= %= += \-= <<= >>= &= \(ha= |=	right to left
 ,	left to right
 .TE
 .PP
-- 
2.33.0

