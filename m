Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E57A03DB09D
	for <lists+linux-man@lfdr.de>; Fri, 30 Jul 2021 03:26:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230088AbhG3B0M (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Jul 2021 21:26:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49118 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229971AbhG3B0M (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Jul 2021 21:26:12 -0400
Received: from mail-il1-x132.google.com (mail-il1-x132.google.com [IPv6:2607:f8b0:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69AA2C061765
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 18:26:08 -0700 (PDT)
Received: by mail-il1-x132.google.com with SMTP id c3so7793565ilh.3
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 18:26:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3d6OvB+VDct0KC3mlhW5thROGoKUYJQrkRMeN5rtZAU=;
        b=K6lOHfDvmYZGvi7D8nyA4b+/TYC6E181QGttSI0l1SmAIN4GBCUEUgJ42L1ihwYwmR
         tOaQwkhLFfdroNY/JGy4LXm7yQ7INQNus8kMRhkfrj9Reys/Y8aLCy+2O3v/iUDHe0Tg
         MvXn55+s031Tye5hvN6HQbDujcslKaQZ8x/bDFDgN8reVhaQ6L2z5uhrKZxIy8nLrc7Y
         rtB9tZxTrzlYRhnQgGPrPtwi+4PCregxj0vEqBpVWs7+KDmJ26aNq+6wvUD+7wUBjL2f
         ZIv2NtKjzWljBZGtDpk4nN9UkGetwzhwAxF4+CxpwKvlu8rUKKT+4MmIvOD/P4XvHOg8
         h9AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3d6OvB+VDct0KC3mlhW5thROGoKUYJQrkRMeN5rtZAU=;
        b=VU9QFHvRlwJ+uXiI3Cp9MGejjXu9D6kFbFRZLzhQcWEuLeD0ytolPRR4B9ChlVSn7P
         /qAiZjM88w7sw2Cb1s0gOofTEi+DIa9DJSX/khRvSIDTdnuMPUiT00uv6JWOihvypkny
         kkSCAfr6QxSuIIHGZUbH2blj4d9Cy38RoeiDmkJAb46jeCwZszbrqAHP0fUNXnCsJfmw
         KGZ4OltRYh/YTR5HeAl/HPt9hRa+QkljT8CXlZS4+th+V0FA2o8LBYbfCsE/oZMmv2U6
         M7p/f2JeDDpOYU0n9JYK/x/dl7QOrj9nn2ov8SgOEFLv5c/APSHGs91IbilIe+cLPG8l
         DxWg==
X-Gm-Message-State: AOAM5319U1V+1gKO0xvRFGJXHg/VPlaEv0SwDUMntAEWdQ0AX22+bQTl
        5AOgrdtug682uCRQPChHGd7Bjw2LVgOQBMbm9ns=
X-Google-Smtp-Source: ABdhPJxTZjD/3Kd3SFvsXU/oHKuBGouw1xTdvbyzQjcSMSh8llqhyxsFG8rKtcr9NiwdVJ066SEhwaVSi9+yHod2DTA=
X-Received: by 2002:a92:cecf:: with SMTP id z15mr26786ilq.225.1627608367901;
 Thu, 29 Jul 2021 18:26:07 -0700 (PDT)
MIME-Version: 1.0
References: <20210728202008.3158-1-alx.manpages@gmail.com> <20210728202008.3158-32-alx.manpages@gmail.com>
 <20210729104517.a4kktqk54ef72m22@localhost.localdomain>
In-Reply-To: <20210729104517.a4kktqk54ef72m22@localhost.localdomain>
From:   Viet Than <thanhoangviet@gmail.com>
Date:   Thu, 29 Jul 2021 21:25:56 -0400
Message-ID: <CAL9Lf7yp7ychhStn6yEPLxntMyfNk5k-SWgk3AShDSCGZ-Lwfw@mail.gmail.com>
Subject: Re: [PATCH 31/32] time.2: wfix regarding year-2038
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

> "[R]eaches at" is not standard English.  More idiomatic would be
> "reaches or exceeds".

Thanks Branden. Searching around on Google, you're right. Usage of
"reaches at or beyond" is way less (1,240 results on Google) than
"reaches or exceeds" (376,000 results). I've modified the patch
accordingly.

Signed-off-by: Viet Than <thanhoangviet@gmail.com>

---
man2/time.2 | 2 +-
1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/time.2 b/man2/time.2
index 059222dcd..ab3d3ecba 100644
--- a/man2/time.2
+++ b/man2/time.2
@@ -93,7 +93,7 @@ specified as NULL cannot fail with the error
.BR EOVERFLOW ,
even on ABIs where
.I time_t
-is a signed 32-bit integer and the clock ticks past the time 2**31
+is a signed 32-bit integer and the clock reaches or exceeds 2**31 seconds
(2038-01-19 03:14:08 UTC, ignoring leap seconds).
(POSIX.1 permits, but does not require, the
.B EOVERFLOW
-- 
2.32.0
