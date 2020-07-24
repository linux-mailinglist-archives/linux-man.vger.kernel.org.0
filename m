Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8B4FE22C5F9
	for <lists+linux-man@lfdr.de>; Fri, 24 Jul 2020 15:13:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726753AbgGXNNq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 24 Jul 2020 09:13:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726182AbgGXNNp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 24 Jul 2020 09:13:45 -0400
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com [IPv6:2607:f8b0:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 492BDC0619D3
        for <linux-man@vger.kernel.org>; Fri, 24 Jul 2020 06:13:45 -0700 (PDT)
Received: by mail-pf1-x443.google.com with SMTP id 1so5074661pfn.9
        for <linux-man@vger.kernel.org>; Fri, 24 Jul 2020 06:13:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=NKuixHW9dtoQI+xTWAjzBxbWHKJhyAIuQcKmW2nsvNY=;
        b=gIdnjDF8KYHSW7qUuYXJ8fF8uyDoNa82oDyP4aRn9v86nioqTHYBwWNv3ALk+gb5Qo
         7AuX+1z7/uKViZNO93pEymAIsClMI8qYSkShtij8omEI/Jlfp4Y7nxUaOSzxqJpGSXyb
         OGBTDbECYEptJGU+CEsom5M3fIp9qF0vUJ2SOP2INrOvsuuKdXejTFssMb+pOylqybwg
         d1e4n8Z/Ry2sBIC0bY+97eQKT2i4hlbDfRd9kB9+Wsuc6Q7Dqxzh5DosLPqgmLq3RzKy
         QNo0I8Ld2IO1yA8LsHeZVqOikoFIr0qUpwv5HwPUrPzqk/1cnDgda9vL9bxeweKjcoB9
         ccdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=NKuixHW9dtoQI+xTWAjzBxbWHKJhyAIuQcKmW2nsvNY=;
        b=iRbUnuYIDgi3t8qJnUx91zrpGCvxEY5RVjnV1nhQWFEnDmnnuKouXzYXCFyD2hSGLm
         pK/10vMsDVxNmRBJqIq+Q+xk6t8QKGp5x+5lcZSY78rUhEzvZvMemVOWTcc3qtjC99UQ
         I9i5rQIdvFjgHp/Q3pcpOZdEIucEOhPtNt78v8FOXEnkJWGyDVfkoNzoUUehBAa9cd+U
         b+R2FlRfrhjborwVFXTHDInqYdlY6B2zB87rNWqWvdX24Q4cmA+HHLUd6s0cfRLgwZzd
         8W5cAxOXaNcLr1dH4hCkhwUXj2ntK4cZzUbK1wwH06j+y3wy/XSWn1IYIfzZIcuYiynK
         mVAA==
X-Gm-Message-State: AOAM532GGoXvRyhr4zBg/AJsSFXT2cklK60SFr9K/fGDJho0W/CbX0AI
        d8EUVSE0F92upSEVu4lBYmQmH7i0zvkypJ4EYLg=
X-Google-Smtp-Source: ABdhPJxs+q6xvrRG38j1E8s12JpAFsSvMEHJdaINkhIEXBW2RTRYUhjcE9m7qTmAm+BvSlX9hZmO+Mh2vnkvcC6NlJo=
X-Received: by 2002:a63:1a08:: with SMTP id a8mr8482727pga.39.1595596424797;
 Fri, 24 Jul 2020 06:13:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200723215333.13779-1-vapier@gentoo.org> <20200724000315.yx5otylik6oqqy6d@localhost.localdomain>
 <CAKgNAkjwwxrM_ry-b1rtrVc8YjfNE=p4iAht85P+mBs6Eq0U-w@mail.gmail.com>
 <20200724121555.e4l2okob3x3fzk5z@localhost.localdomain> <beb87fab-b925-fb57-541f-fe5c77ce5cbe@gmail.com>
In-Reply-To: <beb87fab-b925-fb57-541f-fe5c77ce5cbe@gmail.com>
From:   Stefan Puiu <stefan.puiu@gmail.com>
Date:   Fri, 24 Jul 2020 16:13:33 +0300
Message-ID: <CACKs7VCLbSwr+3Tjc=y=Os-1R7iHU8H8145FkZ_Sojg86AuPNg@mail.gmail.com>
Subject: Re: [PATCH] drop spurious t comment header
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

I think I noticed one typo in your description text (and I also see it in git):

On Fri, Jul 24, 2020 at 3:30 PM Michael Kerrisk (man-pages)
<mtk.manpages@gmail.com> wrote:
> Historically, a comment of the following form at the top of a
> manual page was used to indicate too man(1) that the use of tbl(1)

s/too man/to man?

> was required in order to process tables:
>
>     '\" t
>
> --
> Michael Kerrisk
> Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
> Linux/UNIX System Programming Training: http://man7.org/training/
