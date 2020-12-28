Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CAE0A2E6BC4
	for <lists+linux-man@lfdr.de>; Tue, 29 Dec 2020 00:14:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729547AbgL1Wzw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Dec 2020 17:55:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729471AbgL1Uy2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Dec 2020 15:54:28 -0500
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com [IPv6:2607:f8b0:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB2D8C061798
        for <linux-man@vger.kernel.org>; Mon, 28 Dec 2020 12:53:47 -0800 (PST)
Received: by mail-oi1-x229.google.com with SMTP id x13so12690679oic.5
        for <linux-man@vger.kernel.org>; Mon, 28 Dec 2020 12:53:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=tgrKURuI4xextLVLIk4U056vCobi+wA7b8obTQAs6s8=;
        b=MPGpJCfmdw7T2mNx4ki8gHsXwwopVl0f5XAzTtbioi+BWwZclITFseb8Dg1c0JBUDM
         F86X3qGPELCb5wE7a6KbYwuQiLWcYlbV73Z69VjpzPwxPIktpNci4X0sZzxgKwg6UE1r
         i2wxToW2V3Y94ZgnUOOHPshGxnsyVNp7feKM5IWTtC97OtoPQIscLRgc36SJs6XJkNTq
         xI49xU0eBi++U8/NQ+uycFKZKLi3HrKcHPLea87UEONAsFfGYJBquUREEc/zkATUeMNv
         lD2Qmzgpzx1CzVVbhsFEPlWh5Q0FoCdtuGD7xjUgpkvIjM9dvTJF7Lf6dZJaPrOvWQq3
         7agw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=tgrKURuI4xextLVLIk4U056vCobi+wA7b8obTQAs6s8=;
        b=VG2vJoHA+gxRQZ/2G9e50pi530JHDtX43f4Xv0aFkPOHM3Eh6R9o9EssUZWSbWJFLP
         EGsuJH2/vw0+V4bV3Mmg4T4Q2lCDcp8+VnSl7qH8hpSLM6cSUgwkKALnJQuRbydgyXF/
         S+XkgaWUJANHjN/ju4FjPywSk4jGy9/O3saHj6J+Gu4rsI2dR145/1RA7boGwBt/lVXW
         MrSdKZAyOEAfuyKQQvR6WI0oCWp8HcnrBQ0aDwshN7hIQMmQJfi0Q/wuNQA+1jB/1cWK
         jCifaVDwakZFMTzynH6SbtcBxFqlyxxm21db8wVYJmjNL/X0Xin/chf3SAftVey5ZBr4
         hHjQ==
X-Gm-Message-State: AOAM533gqFMXCdBUgU1poXPUGr+36bqIGJhnSNQKLFtEWoDMIUW1C2n0
        pOPGb8H1MT0VXdXl2kYjHvf7wPTpa2Ss6RZjrEdbmarX
X-Google-Smtp-Source: ABdhPJy21urRfcEeEpBa98E80QvniIEzvj9qHUB8RtIuIwBvMIMB3IM8Y1PU3DK2aQYJPTLz7IjDsx36u2+JTi2xocs=
X-Received: by 2002:aca:ded4:: with SMTP id v203mr494623oig.148.1609188827059;
 Mon, 28 Dec 2020 12:53:47 -0800 (PST)
MIME-Version: 1.0
References: <20201223182911.4066380-1-krisman@collabora.com>
 <85b23b60-a92c-a5a8-1cc5-24bdfb8b3530@gmail.com> <c73ca93d-b723-adc1-0603-4c7f9ecc458e@gmail.com>
 <CAKgNAkgUabNogtQGzGGo4K8CN1wTL-nH=gjuFNGfXM+ysQ+CQQ@mail.gmail.com> <869fca51-770f-ed44-4196-e99189832e69@gmail.com>
In-Reply-To: <869fca51-770f-ed44-4196-e99189832e69@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 28 Dec 2020 21:53:36 +0100
Message-ID: <CAKgNAkiGg0=TF4TCKvSFxmBnC2FwwvySxFte8Lnz+ny2T692pA@mail.gmail.com>
Subject: Re: [PATCH v5] prctl.2: Document Syscall User Dispatch
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Gabriel Krisman Bertazi <krisman@collabora.com>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, 28 Dec 2020 at 21:41, Alejandro Colomar (man-pages)
<alx.manpages@gmail.com> wrote:
>
>
>
> On 12/28/20 9:06 PM, Michael Kerrisk (man-pages) wrote:
> > Hi Alex,
> >
> > On Mon, 28 Dec 2020 at 19:24, Alejandro Colomar (man-pages)
> > <alx.manpages@gmail.com> wrote:
> >>
> >> Hi Michael & Gabriel,
> >>
> >> I disagree on a comment; see below.
> >>
> >> On 12/24/20 10:18 AM, Michael Kerrisk (man-pages) wrote:
> >>> Hello Gabriel,
> >>>
> >>> Thanks for the revisions!
> >>>
> >> [...]
> >>>> +.IP
> >>>> +When
> >>>> +.I arg2
> >>>> +is set to
> >>>> +.BR PR_SYS_DISPATCH_ON ,
> >>>> +.I arg3
> >>>> +and
> >>>> +.I arg4
> >>>> +respectively identify the
> >>>> +.I offset
> >>>> +and
> >>>> +.I length
> >>>> +of a single contiguous memory region in the process map
> >>>> +from where system calls are always allowed to be executed,
> >>>> +regardless of the switch variable
> >>>> +(Typically, this area would include the area of memory
> >>>> +containing the C library).
> >>>
> >>> s/)./.)/
> >>
> >> That point is ending the full sentence starting at 'When',
> >
> > I see it the other. The piece in parentheses is a free-standing idea
> > that should be (parenthetical) sentence on its own.
> >
> > But, if that was not the case, your points below would hold.
>
> Hi Michael,
>
> I see; but there still isn't any separator between '... switch
> variable', and 'arg5 points to ...'.
>
> Would you then do?:
>
> [
> +regardless of the switch variable_._
> ]
>
> Or what?

Oh yes. I missed that. That period also needs to be added!

Cheers,

Michael
