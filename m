Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 40FB626A2A7
	for <lists+linux-man@lfdr.de>; Tue, 15 Sep 2020 12:03:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726201AbgIOKDb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 15 Sep 2020 06:03:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49444 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726222AbgIOKD2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 15 Sep 2020 06:03:28 -0400
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com [IPv6:2607:f8b0:4864:20::1043])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 832F9C061788;
        Tue, 15 Sep 2020 03:03:28 -0700 (PDT)
Received: by mail-pj1-x1043.google.com with SMTP id md22so6452926pjb.0;
        Tue, 15 Sep 2020 03:03:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fV03cq7IxZIVDK0cJ3zrQ8zVYKM86Gu/osDpVcCOjM8=;
        b=B2rxO2Kzpn5AuGSzMr+1KurG9pb5CieR0vKutATTu5ThYXVXZPavmcIOCxwrjlp3Z9
         8iIKEZDOqmoP4t4cG4MXXHGkVKColyzfaznjSMmVHB4iQrJGOPJUPN9FS427ilBDdYRA
         Cmu/deTRTBDCCD54KZZx8Q+wdKEvZ75/ee7UvoPQPtzabdDuQGsov+0yLYJN7ITU7iZp
         K2eNiRymllGjvRoLXl/OkD+EAgVEKIipXkAWwZ+n5t7+MUA30uBqm2RcmL5A3Q8zUEcF
         7uz2ZNRlxhO0WqaGHBmReMQ6VW/vV0PqHp/MEaX6ty4S1Pk8gIc3PF++gG/6KgZNL/Oc
         yfkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fV03cq7IxZIVDK0cJ3zrQ8zVYKM86Gu/osDpVcCOjM8=;
        b=QTCOybYLLp8L7evOtb5UwjBxudWm8ktcoPhQsMATPCkpYfxCNFWHc0/jlu+SaiJTvD
         IZ/O5fYkaHFbGJfOtD+FtXx9Cbmss4OSL/l4ajBV0XB9cvIhrEY4CFFpbbeleIYDK1Cy
         UxxeCmzDI4f2pWM7U4nxZ46/SHUvdM4JunINklnE05ttnL0lr4k/xtFbgLAh3DYppMAg
         6gx0VKjY18WFARLYC8sZCpJWZBWMBw2psF+LH7MD0s35u04R+PF8m0/LCfglJK831vw3
         d3DeF7Rg1TgFos8QR1sZ4e2phWVW2zb3A/fcMxJGWoUt1P76vlcyUxtYN3PMSsUYW+F/
         kL3Q==
X-Gm-Message-State: AOAM5329X0s/4NhRcQzWzxw6kXWA3+roSlFTz0pQzbyHJq00X54lKeRU
        SIsgMR6BSiCT/iOhZXC9QynlkR5QXVXkB4HlyOQ=
X-Google-Smtp-Source: ABdhPJxsbgWTdUkBdlycyviLmAf7k3KQQyyeaFuObTqGv/U7n90Gz2m8jX7Bgr3Ws7X2zqzWsO8ScqO95EQMHTopHK8=
X-Received: by 2002:a17:902:b085:b029:d1:e5e7:be1d with SMTP id
 p5-20020a170902b085b02900d1e5e7be1dmr1034204plr.80.1600164208014; Tue, 15 Sep
 2020 03:03:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-13-colomar.6.4.3@gmail.com> <CACKs7VD_p=d+nvuFxkWofSE6jCoKAKx5w44_5ciTJ0NX_H1ZFA@mail.gmail.com>
 <7dd2ab72-3ce7-1f50-229a-e663c3df2dcd@gmail.com>
In-Reply-To: <7dd2ab72-3ce7-1f50-229a-e663c3df2dcd@gmail.com>
From:   Stefan Puiu <stefan.puiu@gmail.com>
Date:   Tue, 15 Sep 2020 13:03:17 +0300
Message-ID: <CACKs7VDzgUyDM9FhRR69Aqw2-0xiZC86EhkqSmD5P68derRBFw@mail.gmail.com>
Subject: Re: [PATCH 12/24] getgrent_r.3: Use sizeof() to get buffer size
 (instead of hardcoding macro name)
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        lnx-man <linux-man@vger.kernel.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

On Fri, Sep 11, 2020 at 6:28 PM Alejandro Colomar
<colomar.6.4.3@gmail.com> wrote:
>
> Hi Stefan,
>
> On 2020-09-11 16:35, Stefan Puiu wrote:
>  > Hi,
>  >
>  > On Fri, Sep 11, 2020 at 12:15 AM Alejandro Colomar
>  > <colomar.6.4.3@gmail.com> wrote:
>  >>
>  >> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>  >> ---
>  >>   man3/getgrent_r.3 | 2 +-
>  >>   1 file changed, 1 insertion(+), 1 deletion(-)
>  >>
>  >> diff --git a/man3/getgrent_r.3 b/man3/getgrent_r.3
>  >> index 81d81a851..76deec370 100644
>  >> --- a/man3/getgrent_r.3
>  >> +++ b/man3/getgrent_r.3
>  >> @@ -186,7 +186,7 @@ main(void)
>  >>
>  >>       setgrent();
>  >>       while (1) {
>  >> -        i = getgrent_r(&grp, buf, BUFLEN, &grpp);
>  >> +        i = getgrent_r(&grp, buf, sizeof(buf), &grpp);
>  >
>  > I'm worried that less attentive people might copy/paste parts of this
>  > in their code, where maybe buf is just a pointer, and expect it to
>  > work. Maybe leaving BUFLEN here is useful as a reminder that they need
>  > to change something to adapt the code?
>  >
>  > Just my 2 cents,
>  > Stefan.
>  >
> That's a very good point.
>
> So we have 3 options and I will propose now a 4th one.  Let's see all
> of them and see which one is better for the man pages.
>
> 1.-     Use the macro everywhere.
>
> pros:
> - It is still valid when the buffer is a pointer and not an array.
> cons:
> - Hardcodes the initializer.  If the array is later initialized with a
>    different value, it may produce a silent bug, or a compilation break.
>
> 2.-     Use sizeof() everywhere, and the macro for the initializer.
>
> pros:
> - It is valid as long as the buffer is an array.
> cons:
> - If the code gets into a function, and the buffer is then a pointer,
>    it will definitively produce a silent bug.
>
> 3.-     Use sizeof() everywhere, and a magic number for the initializer.
>
> The same as 2.
>
> 4.-     Use ARRAY_BYTES() macro
>
> pros:
> - It is always safe and when code changes, it may break compilation, but
>    never a silent bug.
> cons:
> - Add a few lines of code.  Maybe too much complexity for an example.
>    But I'd say that it is the only safe option, and in real code it
>    should probably be used more, so maybe it's good to show a good practice.

If you ask me, I think examples should be simple and easy to
understand, and easy to copy/paste in your code. I'd settle for easy
enough, not perfect or completely foolproof. If you need to look up
obscure gcc features to understand an example, that's not very
helpful. So I'd be more inclined to prefer version 1 above. But let's
see Michael's opinion on this.

Just my 2c,
Stefan.
