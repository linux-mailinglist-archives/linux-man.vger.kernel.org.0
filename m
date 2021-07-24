Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 80C4F3D4AB1
	for <lists+linux-man@lfdr.de>; Sun, 25 Jul 2021 01:51:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229609AbhGXXLL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 24 Jul 2021 19:11:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229601AbhGXXLL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 24 Jul 2021 19:11:11 -0400
Received: from mail-il1-x134.google.com (mail-il1-x134.google.com [IPv6:2607:f8b0:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7D6DC061575
        for <linux-man@vger.kernel.org>; Sat, 24 Jul 2021 16:51:41 -0700 (PDT)
Received: by mail-il1-x134.google.com with SMTP id u7so1932656ilj.8
        for <linux-man@vger.kernel.org>; Sat, 24 Jul 2021 16:51:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ueO8q7RhcvVzzeMaoF3i3yhEgGh+B9YmfI44bai8XeY=;
        b=G6JO5LjvOxVQbra4q4K/ZWDCmfMmR1Bn4NmeSJBt6cojoEqJqP5Hejf5zvQQsjaNIu
         8ApIBLUC8XBSjuYMzQm3rt1LcXh0aUBq/nqjxzNUdcNl2/XPwW7kS6kyGHHmPVIWbbKS
         KQlqXbisTPwaUk8qlCyzJute/Br+6iy7wSFFPOWe88X1Fj/mOJnStXO4IK/R4E/t9G+e
         asfLYqn+8gBWkvpYUFbHRgKxm+TNUDOkdi96TMPzitB6rL46GsEbkqU1Wa3pktquHiEv
         bKzYCWNChUGc02jlJuUwpuvsTKNqVaW01demOM4bn32D5OMVQhSbw0jvGpCKyyfvwqyB
         l6NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ueO8q7RhcvVzzeMaoF3i3yhEgGh+B9YmfI44bai8XeY=;
        b=hdE3i4PH8bxUGd/tCXWUE69eqm2ujyA48HWIL6nOy/6S6Oq6hZe5nWnNps6ZVEkS2V
         2+n2R6gZ0434Do4qabfdI89JT8FVu7oug84koUjIF9DTMOhN4jBHPSc9OWGFASGjVKzK
         02my3WKfxUW6cxRl5xeVXIAaXCoZFziKAtc4ab1/kuvJ95NtZZYEwZ8ApBvPQea7d88e
         IeNkM9o5YJbBFpg/uiOMj0Iu/UKHerL0NIA5qdTLygp8YrQnr3/l+CJPHDJ15lvUKhEy
         nW+bDVh44fXVuHMJ91GuGs6TvQ+wp7TrXmzvgfeVjV0EtolimxwK0uRXiuR9+shblYOq
         Z69Q==
X-Gm-Message-State: AOAM533HZR/xLk9KD4tPEXfDCQNH1tuH8Z1M02lCS3KsYZZlhxWuUbtu
        MH7VP9QxRg21WfYgHYr/IXUT9Gj35SFJXXLW55LsHMQr97okpg==
X-Google-Smtp-Source: ABdhPJx7stE1pTGyWKrAYXFdyIXfcVSvzUCnMXEzbqNmL96CYC506CrvlU0zN/2CKs2HNWrEIOWX2xW6deMprDV898A=
X-Received: by 2002:a05:6e02:cf:: with SMTP id r15mr7972951ilq.58.1627170699960;
 Sat, 24 Jul 2021 16:51:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAL9Lf7yvYytb3Q9mHfK-dkxhk+80R1jGB5eRL_w7+qXDQG2RTw@mail.gmail.com>
 <20210724163944.cqp66jrpipj2khn6@jwilk.net>
In-Reply-To: <20210724163944.cqp66jrpipj2khn6@jwilk.net>
From:   Viet Than <thanhoangviet@gmail.com>
Date:   Sat, 24 Jul 2021 19:51:28 -0400
Message-ID: <CAL9Lf7xpqJd9dHiRiJnX+WcEmC_Cb0fqvQtcVKfvzrz7WydK2w@mail.gmail.com>
Subject: [PATCH v2] time.2: wfix regarding year-2038
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

> I suppose this should say "...the clock reaches the time 2**31",
> and then we can keep the parenthetical as is.
Thanks for the insight!  here's the new patch

Cc: Jakub Wilk <jwilk@jwilk.net>
Signed-off-by: Viet Than <thanhoangviet@gmail.com>

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
2.25.1
