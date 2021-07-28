Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 773813D969E
	for <lists+linux-man@lfdr.de>; Wed, 28 Jul 2021 22:20:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231585AbhG1UUr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 28 Jul 2021 16:20:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35656 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231574AbhG1UUr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 28 Jul 2021 16:20:47 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D716FC061757
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:44 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id n11so2229317wmd.2
        for <linux-man@vger.kernel.org>; Wed, 28 Jul 2021 13:20:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=N7JlcAcbd4oJdgoy+u56+6CwX7/bec8fJGrCgjG7xhk=;
        b=tajJXwBpYeb9Y1DI/wtmie8apyDU2B7aHr4co+CqR0j4cgecMkq551StCJsh7ahXT+
         FJWyDxJ+JJ5USjwJ/LnUgwVwB3rR4LXv68NKQwcVeaVK99787oMKNbhEh27bYL2UMrOj
         k+i59hTStsHbNm8w3Ir1PVLMBMM1sUPWWshMCu/u0A8+32w2RvtXpbDVPR4LnTDEOnf7
         PrcWv0hjVDd3zzREvrOo/FKVKSis2w884gmuwkfxcjtHAfKqtvgFiM5c6zoROSi6JCbm
         /JHZa6XdL6uaV5Exs6ublNK22AOb3wFrk/8sd6zsSIU/lBN7RQBqG15xXBJH1bV9I1MF
         ZfJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=N7JlcAcbd4oJdgoy+u56+6CwX7/bec8fJGrCgjG7xhk=;
        b=m6Jzi2yiClD+Oty+Xk7NkUeARMYlMwOTyjRgE2eiilzxHqluDgHCW6o2j+YQt88l8E
         AuaUKYlT79DKfU2j92b/C5/aCK7G/6WuY5ivkqyAMivsbVGAvOQSVHrHrGR0ur+5lFxF
         1w84vKnEPkPMj7sTe++OpJ5+s2y4ey6v8uQggdtltMikjM3ZG4AivTmT/0gsCXxF5jc9
         nr7bmTUCnesWUZ/Pv6Kw2UmvN+2vHyEHrBxkSQ8CGcQmCnoFzd8CvRfAijIVh9MoeFwb
         KV7m52RUYlv66m+goQdDKiLmjaa6/ADzizOUyKlJ5xle7lNucHsOZeiAn7/uc7pmzfq3
         7PJA==
X-Gm-Message-State: AOAM531cSm5Z58l67lCYJd+Ljeh5O6yJ4OzCzj8wOoB+0F7qk0vqeleB
        XHRc0dqXzl/jmLDm698y02o=
X-Google-Smtp-Source: ABdhPJzHyqna7+KT1p0+GG73L+K2sNS7iT+ZYYqs7dvpMSwBaSOT4VlD3MrK/uRFu5ZsciCMglBTLQ==
X-Received: by 2002:a05:600c:206:: with SMTP id 6mr11220198wmi.137.1627503643524;
        Wed, 28 Jul 2021 13:20:43 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id o29sm879703wms.13.2021.07.28.13.20.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 13:20:43 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Viet Than <thanhoangviet@gmail.com>, linux-man@vger.kernel.org,
        Jakub Wilk <jwilk@jwilk.net>,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 31/32] time.2: wfix regarding year-2038
Date:   Wed, 28 Jul 2021 22:20:07 +0200
Message-Id: <20210728202008.3158-32-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210728202008.3158-1-alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Viet Than <thanhoangviet@gmail.com>

Cc: Jakub Wilk <jwilk@jwilk.net>
Signed-off-by: Viet Than <thanhoangviet@gmail.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/time.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/time.2 b/man2/time.2
index 059222dcd..a7410bfc8 100644
--- a/man2/time.2
+++ b/man2/time.2
@@ -93,7 +93,7 @@ specified as NULL cannot fail with the error
 .BR EOVERFLOW ,
 even on ABIs where
 .I time_t
-is a signed 32-bit integer and the clock ticks past the time 2**31
+is a signed 32-bit integer and the clock reaches at or beyond the time 2**31
 (2038-01-19 03:14:08 UTC, ignoring leap seconds).
 (POSIX.1 permits, but does not require, the
 .B EOVERFLOW
-- 
2.32.0

