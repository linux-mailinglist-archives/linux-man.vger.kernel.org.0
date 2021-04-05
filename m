Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DD51C354732
	for <lists+linux-man@lfdr.de>; Mon,  5 Apr 2021 21:42:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240179AbhDETmk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Apr 2021 15:42:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236259AbhDETmj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 5 Apr 2021 15:42:39 -0400
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com [IPv6:2607:f8b0:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 387CCC061756
        for <linux-man@vger.kernel.org>; Mon,  5 Apr 2021 12:42:32 -0700 (PDT)
Received: by mail-ot1-x32b.google.com with SMTP id 68-20020a9d0f4a0000b02901b663e6258dso12340967ott.13
        for <linux-man@vger.kernel.org>; Mon, 05 Apr 2021 12:42:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=CALWyh3pJ8DcOLQHkB2uioGtknfCeZUf4lrav1WUvDI=;
        b=nWkKvsdC55Md2OCL1JIetgfuE0iqcqhx52PV64YOPkTGBoq+rfpDRM9ULRKXquvrDf
         uuEbuUUWA+Y0HTDH1e4Oeu/Owzzkg7sQ7/MMGNxtE8JLt1fMaBRsc236rmqi4W9svGUo
         QUshnRyUKnuvn5wtMQfdWvm3k/RcUXbMkMQN8E2Iq1+JU1423WGnfYsbsQ0ZlUAUEdRt
         IKWXR1ULHyT/E/YyTaX8GUuBGI9BCLcc2BhkFf8Ue1b34RDE6jtDVEdEx/SW2oljvXIA
         G7kb98dwVbSqTPbiI6LiQKfG/rtE6tBIw2tE/GNQO53yVDjsNZl45aU9VX8f2XA0fdLx
         IHvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=CALWyh3pJ8DcOLQHkB2uioGtknfCeZUf4lrav1WUvDI=;
        b=YjHkMMzdsi9rW9D9/enSXWuqBvsJqeMLtowRlDFNpiR7D3BnwnD2c42PftK4MQ3ESH
         8Vwi8wqy1WV+g9dCduyGVut/QCQATKUx8EuVHOjyDWrwpQifSwnvce95tq25/+N+/F16
         r4vG9ydexD2coRUequau11Ptd2T0Pa45tOw7aB1CErhZpG5D4kEM5nXHDSeKXam/jSB6
         8SIUAz9BUIU9OjlCnJeRNoYGqh5wKflCqlFA45gV64C28CHOg3Ya99SJsaYIh2zwvEj1
         fhhPUwdMQeBwTeaXhZawScQlgd93jO83TNDzCMAqEH7l6KWRlEmfsP2eFWeulArYWYpD
         1C7Q==
X-Gm-Message-State: AOAM530GYuj3rh9epJp85083pZda9H2XZosMP7AwiP3U4fj8NEYYg/sh
        abWULEx8w9R7ccveuxcpmwsSGKg2Qc9BY9Xt+qE=
X-Google-Smtp-Source: ABdhPJwoa/GEz1IqubW5dpqtV1Odi5B+CD1WIqIwrSp4VZFh1p8LG+n3alud7c89wJcoDkHXwWYY3AL+xrBCJmVpCHs=
X-Received: by 2002:a9d:6285:: with SMTP id x5mr23576442otk.308.1617651751642;
 Mon, 05 Apr 2021 12:42:31 -0700 (PDT)
MIME-Version: 1.0
References: <CAAdZR6t0wXTVhqiYYvDEM_oja90VKUN8bTRpjM5-3DxeeyB0Vg@mail.gmail.com>
In-Reply-To: <CAAdZR6t0wXTVhqiYYvDEM_oja90VKUN8bTRpjM5-3DxeeyB0Vg@mail.gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 5 Apr 2021 21:42:20 +0200
Message-ID: <CAKgNAkhWx=NLC66QE8TChat8=9cu-f4mOsc=k2R4FwvpwWUjcQ@mail.gmail.com>
Subject: Re: [bug] tfix: shm_open.3
To:     Jon Murphy <jonmurphy1618@gmail.com>
Cc:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Jon,

On Mon, 5 Apr 2021 at 16:37, Jon Murphy <jonmurphy1618@gmail.com> wrote:
>
> There's a word duplication typo in shm_open.3. The words "to tell"
> should be deleted from the below text.
> "Post 'sem2' to tell the to tell peer that it can now access the
> modified data in shared memory."
>
> From release 5.11 online manual.
> https://man7.org/linux/man-pages/man3/shm_open.3.html

Thanks. I fixed this.

Cheers,

Michael

diff --git a/man3/shm_open.3 b/man3/shm_open.3
index ca97ff3f6..265435e4e 100644
--- a/man3/shm_open.3
+++ b/man3/shm_open.3
@@ -404,7 +404,7 @@ main(int argc, char *argv[])
     for (int j = 0; j < shmp\->cnt; j++)
         shmp\->buf[j] = toupper((unsigned char) shmp\->buf[j]);

-    /* Post \(aqsem2\(aq to tell the to tell peer that it can now
+    /* Post \(aqsem2\(aq to tell the peer that it can now
        access the modified data in shared memory. */

     if (sem_post(&shmp\->sem2) == \-1)




--
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
