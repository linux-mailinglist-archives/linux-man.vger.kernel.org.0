Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 548572E6BCE
	for <lists+linux-man@lfdr.de>; Tue, 29 Dec 2020 00:14:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730631AbgL1Wzw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Dec 2020 17:55:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58360 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729370AbgL1UHJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Dec 2020 15:07:09 -0500
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com [IPv6:2607:f8b0:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08073C0613D6
        for <linux-man@vger.kernel.org>; Mon, 28 Dec 2020 12:06:29 -0800 (PST)
Received: by mail-oi1-x236.google.com with SMTP id 15so12560550oix.8
        for <linux-man@vger.kernel.org>; Mon, 28 Dec 2020 12:06:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=gUc4x4e/QIxZHAXDLx/BGmrck3gAswh5qN+1ctYMeHs=;
        b=H3teUWJyKwO0kC6LY8BaVTaN+w/j5ZM93NRBP5oRk+Q6/B2XJ3cFrK8kcxLq3I4aOo
         WNDAzInIqQzmv2GS9n11oRN+j9L/MtqzkBwa4iW3fUsNRYEKHoz3HcIp+lhyCxmsx+re
         mz1xItmyRfxgsfOC5xRADIldlibsFQUq0ZGCj1pi2rb5qiFEAsMJuXTn8qA2oezdOKUU
         tuJkLFQzyuJog8F++cIy/fYypXsUk5tXrWCYmNmPaiV54U0+s2faueVg0QxZVbcsT5Us
         +3ckrEVmrf+aaHTAzWllyR3Q8JJdqMr35Ad8PNJrzEpeqFCDoKiUGiBcMTB2BDu/ZaLS
         RsVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=gUc4x4e/QIxZHAXDLx/BGmrck3gAswh5qN+1ctYMeHs=;
        b=bPUMUJIHeozuCEi5Oi/gwgLIMOIhEke3fxSe17gDE/M+4yvQP0t1F7JToF1DDwdEVY
         nBgipoRfCw1A21yy5vGNbk0Y3Ga+kDwCfsgbPK8ujHm9JXsk0xqVJ3xqqWCNDuoFfIXJ
         Zaw6dvxSuo8DWb92TVE/+LsSTvc4ISCyFIlxA/bt8lynEw7eSOQrDxo58FmeMk+3vn1x
         ymg3230w1f98XtPdD6idexZm5sTc34p7LkgNmjVg3ejo0o1eVozjCN6NLqLd0+fsb9Pr
         AyjYTYrq0vkm7QF0+l8TzVCS0b79fALXDxH3KplVGoQ8epV+tANJ+YYJutzmgpmpOvNG
         Q8Mg==
X-Gm-Message-State: AOAM532Txth7lioOx5DbRDFkbgibaXviNh30w4bV6DE8bCYJFMMHlrTU
        TtP08EnvRAYKdVQU1f5Bt6DcqygdQeejxxO1byHpFvJh
X-Google-Smtp-Source: ABdhPJzsjPgdlB3Wepw1d1g7Ih6xIvTHe09Tx/yzKAQT8yhvP7znN6PoJphmFfkqFRDtXHBY5speJ4aZK38QQBCFgKA=
X-Received: by 2002:aca:ded4:: with SMTP id v203mr371721oig.148.1609185988509;
 Mon, 28 Dec 2020 12:06:28 -0800 (PST)
MIME-Version: 1.0
References: <20201223182911.4066380-1-krisman@collabora.com>
 <85b23b60-a92c-a5a8-1cc5-24bdfb8b3530@gmail.com> <c73ca93d-b723-adc1-0603-4c7f9ecc458e@gmail.com>
In-Reply-To: <c73ca93d-b723-adc1-0603-4c7f9ecc458e@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 28 Dec 2020 21:06:17 +0100
Message-ID: <CAKgNAkgUabNogtQGzGGo4K8CN1wTL-nH=gjuFNGfXM+ysQ+CQQ@mail.gmail.com>
Subject: Re: [PATCH v5] prctl.2: Document Syscall User Dispatch
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Gabriel Krisman Bertazi <krisman@collabora.com>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Mon, 28 Dec 2020 at 19:24, Alejandro Colomar (man-pages)
<alx.manpages@gmail.com> wrote:
>
> Hi Michael & Gabriel,
>
> I disagree on a comment; see below.
>
> On 12/24/20 10:18 AM, Michael Kerrisk (man-pages) wrote:
> > Hello Gabriel,
> >
> > Thanks for the revisions!
> >
> [...]
> >> +.IP
> >> +When
> >> +.I arg2
> >> +is set to
> >> +.BR PR_SYS_DISPATCH_ON ,
> >> +.I arg3
> >> +and
> >> +.I arg4
> >> +respectively identify the
> >> +.I offset
> >> +and
> >> +.I length
> >> +of a single contiguous memory region in the process map
> >> +from where system calls are always allowed to be executed,
> >> +regardless of the switch variable
> >> +(Typically, this area would include the area of memory
> >> +containing the C library).
> >
> > s/)./.)/
>
> That point is ending the full sentence starting at 'When',

I see it the other. The piece in parentheses is a free-standing idea
that should be (parenthetical) sentence on its own.

But, if that was not the case, your points below would hold.

Thanks,

Michael


> not just the
> sentence in parentheses.
>
> See <https://www.thepunctuationguide.com/terminal-points.html>.
>
> Quoting that, "The main sentence takes a period outside the closing
> parenthesis no matter what punctuation is included inside the
> parenthetical element.".  So that you should be able to:  s/(.*)//
>
> s/)./.)./  would be more correct, but I think ').' is enough.
> See my quotation above, which is a similar example :)
>
> I'd also s/Typically/typically/
>
> Your thoughts?
>
> Thanks,
>
> Alex
>
> >
> >> +.I arg5
> >> +points to a char-sized variable
> >> +that is a fast switch to enable/disable the mechanism
> >> +without the overhead of doing a system call.
> >> +The variable pointed by
>
> --
> Alejandro Colomar
> Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
> http://www.alejandro-colomar.es/



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
