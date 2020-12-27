Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2BEDA2E30FC
	for <lists+linux-man@lfdr.de>; Sun, 27 Dec 2020 12:55:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726066AbgL0Lzf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 27 Dec 2020 06:55:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726039AbgL0Lze (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 27 Dec 2020 06:55:34 -0500
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com [IPv6:2607:f8b0:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E01B0C061794
        for <linux-man@vger.kernel.org>; Sun, 27 Dec 2020 03:54:53 -0800 (PST)
Received: by mail-ot1-x32e.google.com with SMTP id r9so6960577otk.11
        for <linux-man@vger.kernel.org>; Sun, 27 Dec 2020 03:54:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=hK4lc7fwNOyaEEds/tLY6eDBE1AU0DYYYsnnEsmUAe8=;
        b=sepelYnKwuBBZvS0SpSrDdAbCZTHZ+geFGvjYlvQGwZvuqy4Y0PdPDRsatJpRHCWGp
         SWmsraOOXFWj981G/tvwc4805j6VlpRnAaXynmWctOpWw2Wrxby6HgNCAlyLJqyHEEWV
         ju83jDFmBvIKTiFsqXAFrd/lGPw+4M6I6bVDih+pZ4luu4t4QTPvRDPdm1dLLtDKPcSO
         Bd24kWFnbBMVxNYCxYVpCI94THE9hOz/f0iWxzax7I4WMz0w6ksJSukhZ+Fv1FMargTT
         lSmqHdnaBCAnzinLLtLG31rlFFan+rEtW+S7AlYe/3l8u6M8nszj+Lo4oLV2XVgHnTTp
         b+Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=hK4lc7fwNOyaEEds/tLY6eDBE1AU0DYYYsnnEsmUAe8=;
        b=mAGcAKuxpZ5InunEykWiY6MI5UPZCy71YrEdAE9DyCQ08v8DFT94n4oCimeusU/yDL
         /C7utmV77miDqKRBmtMCR5s4qJaeBJi3Vpq9dNb2DGxXhLR1boo+LUY2+8yhpjklngs1
         G7q4jKOx8x0HofV9YHOQPpBCol2yshf8lHucl72yoIca7IvhEKuxPL+K16fTLi4AS2jw
         RNFhw7nR+DRzgtN2bVLl1ExNKu6MJpNtLYxRceIeqgr8LFVy/zixvWBTtbpkyrH8LrIX
         QNqdDVtDxRXC+R22jOFMvsp++Sld7DflNmpvRWh6wMbEhkWZi8R4QDerjJE+TtFpa3aL
         h1fg==
X-Gm-Message-State: AOAM532x56luAY5CCqjLs5gb7d8gJ3Bboqc8uxvm2vjCTv1JksWzAQW3
        koCpRIz9bkOFrYm+R8qJwyfvJZ00JfDgT8aVgpM=
X-Google-Smtp-Source: ABdhPJzo7AF+498AolS1jp0Vn6LsvwHP9t+Dus6XVsESzEnknUI0qFvf5YDGKzNiaiIEJruetX4QMzdEI9BpdQ8Tb1o=
X-Received: by 2002:a05:6830:22eb:: with SMTP id t11mr31816855otc.114.1609070092520;
 Sun, 27 Dec 2020 03:54:52 -0800 (PST)
MIME-Version: 1.0
References: <20201223190202.12758-1-alx.manpages@gmail.com>
In-Reply-To: <20201223190202.12758-1-alx.manpages@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sun, 27 Dec 2020 12:54:40 +0100
Message-ID: <CAKgNAkhSoriQZdagMHMz5QJF59LbmQLddvNCWOGJhDHc5jXxdg@mail.gmail.com>
Subject: Re: [PATCH] Various pages: tfix
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Wed, 23 Dec 2020 at 20:03, Alejandro Colomar <alx.manpages@gmail.com> wrote:
>
> Remove "." at the end of sentence fragments/short single sentences
> in comments.  See: c2e81ff9641a7743b1f47cbf4fcf899c391df77f.
>
> $ sed -i '/[^.]\. \*\//s%\. \*/% */%' man?/*
>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

There is probably still a bit of inconsistency in the pages, But, your
change removes some periods what really should be present.

For example:

> --- a/man2/clone.2
> +++ b/man2/clone.2
> @@ -1843,7 +1843,7 @@ childFunc(void *arg)
>
>      /* Keep the namespace open for a while, by sleeping.
>         This allows some experimentation\-\-for example, another
> -       process might join the namespace. */
> +       process might join the namespace */
>
>      sleep(200);
>
> @@ -1887,7 +1887,7 @@ main(int argc, char *argv[])
>      sleep(1);           /* Give child time to change its hostname */
>
>      /* Display hostname in parent\(aqs UTS namespace. This will be
> -       different from hostname in child\(aqs UTS namespace. */
> +       different from hostname in child\(aqs UTS namespace */

Here are a couple of cases where the comment contains two sentences,
but the change removes the period from the second sentence. That's
definitely not right.

My general philosophy is complete sentences in comments should be
terminated by periods. In sentence fragments, especially for tag
comments (i.e., comment on same line as the code), I'm inclined to
omit the period. And there are doubtless inconsistencies in existing
pages (and grey areas). Commit c2e81ff964 was intended to clean up
some of the most obvious cases.

I've made a few more commits now to bring more consistency. (I think
Branden's suggestion that complete sentences should generally always
be punctuated is true.) And I've added some notes to man-pages(7). See
commits f18f9c409...46b20ca1b

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
