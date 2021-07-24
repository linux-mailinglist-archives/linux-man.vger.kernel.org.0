Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 67E2D3D4873
	for <lists+linux-man@lfdr.de>; Sat, 24 Jul 2021 17:52:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229912AbhGXPMM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 24 Jul 2021 11:12:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229545AbhGXPMM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 24 Jul 2021 11:12:12 -0400
Received: from mail-io1-xd33.google.com (mail-io1-xd33.google.com [IPv6:2607:f8b0:4864:20::d33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AAFBFC061575
        for <linux-man@vger.kernel.org>; Sat, 24 Jul 2021 08:52:43 -0700 (PDT)
Received: by mail-io1-xd33.google.com with SMTP id n19so6295793ioz.0
        for <linux-man@vger.kernel.org>; Sat, 24 Jul 2021 08:52:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=+EWoq28h7qfcjj4u9GUEP/srQXCUy3DMZaquE9dLj1s=;
        b=FD0TLOw3MuowwCRpVNf+csDvE4i5cRBkPPB4IxbWdN50kEvxHpy1MXJEY4ectp3Vua
         g71Ed9xBru6E5P8ubsZ1XPhKjvdiEJPbBhlMSGqmF4/vG3RR6h9gtx633bZ2mJIzkwXF
         1Brj6igBnssjojfQCYmVR3iUVQfUOjQIFLx/0v5YnFp7EsiosTt95AToxbCuZ/KeyP1v
         tQMGadcJ9HwfGByuPm/xkBlH+pRhwkzjKEXQLHJHMjcw9dHdlT1CbgrpX0sr0WmH4bw8
         HMnN0ahlbURTbNRnXL+U8dE49f4bAUiXE+bj8SF1OA0y6XYBpI7ut48cCJ3STX/fk9M2
         xkDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=+EWoq28h7qfcjj4u9GUEP/srQXCUy3DMZaquE9dLj1s=;
        b=SaimT/5Lhuu0imREVBNbvdBAFgFkBrEoU5nHZhviWJa0HNrMnjpVwd6FhrXe7Rsvxy
         BBKCbWpUt0yOBvMllVD/Uoy9zASmW0XpJzsanIV2ILDOfYt0nMLNTZ+WhGFMAPX1QR0E
         XfJjN0Ls2c6X+pFZMZ6hiwoEFp/JUoArWOie/R1h7LuX0hwMOP5Uhpw3TkQ1R0nqvnqV
         6mVT6RcA14/gnXTi2jhS9j7rp1c9zHuRs0Zwh6lHmMnWm75+RKFwclz8lq7sDX7E/4Oz
         bhkHZ9vcdoTORywiMK9R/ddqeuhhK4pUyrh80ie4lkmFz1RKtGByATF4HZ/4EyUKlQ/a
         yv/w==
X-Gm-Message-State: AOAM533Xwe4et9Yb17KBV8QTuTeN1WabGueNJ56Taust42y8Anhlr7Cm
        4p1DCntbgvMfFXuR65F1EvdNdXnGLVXG9Up6183DM8y8cd58CA==
X-Google-Smtp-Source: ABdhPJwSeGmKKFjJWfLy3d54w3UOd0pYA3bRaiAv0HXOkrOMLe6qRrN/vhr286DFfdVuYuF73KyRUpiGOPyFFzRhmng=
X-Received: by 2002:a05:6638:1356:: with SMTP id u22mr8993005jad.39.1627141962971;
 Sat, 24 Jul 2021 08:52:42 -0700 (PDT)
MIME-Version: 1.0
From:   Viet Than <thanhoangviet@gmail.com>
Date:   Sat, 24 Jul 2021 11:52:32 -0400
Message-ID: <CAL9Lf7yvYytb3Q9mHfK-dkxhk+80R1jGB5eRL_w7+qXDQG2RTw@mail.gmail.com>
Subject: [PATCH] time.2: wfix regarding year-2038
To:     linux-man@vger.kernel.org
Cc:     mtk.manpages@gmail.com, alx.manpages@gmail.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

The old description led me to believe 2038-01-19 03:14:08 UTC==2**31
therefore would still be valid, and that undefined behavior would
begin from 2038-01-19 03:14:09 UTC.
Searched up to be sure.
Modified wording to be more precise.

Signed-off-by: Viet Than <thanhoangviet@gmail.com>

---
 man2/time.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/time.2 b/man2/time.2
index 059222dcd..f15dfa325 100644
--- a/man2/time.2
+++ b/man2/time.2
@@ -94,7 +94,7 @@ specified as NULL cannot fail with the error
 even on ABIs where
 .I time_t
 is a signed 32-bit integer and the clock ticks past the time 2**31
-(2038-01-19 03:14:08 UTC, ignoring leap seconds).
+(occurs when past 2038-01-19 03:14:07 UTC, ignoring leap seconds).
 (POSIX.1 permits, but does not require, the
 .B EOVERFLOW
 error in the case where the seconds since the Epoch will not fit in
--
2.25.1
