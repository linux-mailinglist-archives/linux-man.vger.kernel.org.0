Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 96A0029BBA1
	for <lists+linux-man@lfdr.de>; Tue, 27 Oct 2020 17:30:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1808820AbgJ0QXE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Oct 2020 12:23:04 -0400
Received: from mail-oi1-f193.google.com ([209.85.167.193]:46299 "EHLO
        mail-oi1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1808817AbgJ0QXC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Oct 2020 12:23:02 -0400
Received: by mail-oi1-f193.google.com with SMTP id x1so1834384oic.13;
        Tue, 27 Oct 2020 09:23:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=NEJ75eazugIxTiGgov7ny2tg8dhF8KBwSIY/K2VIUa4=;
        b=O6BYLLD7y1Vk9bu2wUHfOKew52+BSy/G3UANd5GsnvOksCmPTZM6XzRMX6pG8XRLYY
         F43lGUVn8quNwsf7xHNiHrHCXBlbn4gDBhQBNyjXtXuBDovLDwWG3LnA6zKrhdZiRqR/
         bFS2hCjDrSymA9iNx23lwLR1cXN6T9nnGPkBKTn4puwxX6A4CExtUTZIij1EOB6YfkuN
         cp6KanxdKWRhO284dAOozKVWujcZXcqiTXvBxlxvnfPeragd4ozfYxLXcVjJqTi8yr8G
         6q5tItYqe9RYccPO44Qv5TL38MLk5YN/P+d/Xw/bsibXG5utHuQ5a+Yc6tQ4bGexCQpn
         DHFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=NEJ75eazugIxTiGgov7ny2tg8dhF8KBwSIY/K2VIUa4=;
        b=bgT1gnvT5IJyjqDWCnSZX4aQHt74YmEzk23Tnpq9ZInCzF+BhsSlmTwP3DP0D1Nau2
         UaNw6PaL98UB6GBkM7STYGfmAO9LAYJ0O9/rrMFgW8tXMO9yXvkJz1BnSTh0grWqYC7F
         NGOq6dFJjekT9QDtm9j5fPPZmLTJxPEmaAEoNfeMzHlB5wCGttYj9M1LyJ3HFvAw+XXL
         /rXJuiIRw92VJxTr0LY88E3kHVMI2+3XJkz5BOa01v6E6ouVQ1jotlJpBfotjtO2rkJl
         6eEBUdgG8fA/XdcuLAQhfzanGt8G064ibXV31Em3j5FX09pB09MNWI93i5DDN0pUJsBz
         G10g==
X-Gm-Message-State: AOAM533dq3lQ85l6jE4shy18BT6Ymh7VeRuYbar7+u59UuaNGSpESr1Z
        HBha9Q1ruHrTFufcOCMJSl1sIQIESVf3m9P5Eso9qsmR
X-Google-Smtp-Source: ABdhPJxf30OOcub3IUjG3SD5xn1r3e8t3j3owMe5pBN43+O9xqetjoMtHQUUeD/+aW6OVOclzmoCD0eA0meBVq01ZQ0=
X-Received: by 2002:aca:bb41:: with SMTP id l62mr2000939oif.148.1603815779450;
 Tue, 27 Oct 2020 09:22:59 -0700 (PDT)
MIME-Version: 1.0
References: <20201005221247.13065-1-colomar.6.4.3@gmail.com>
 <b24d9f74-d07c-5d07-0788-eb8f1711d71d@gmail.com> <87faeeeb-f2e0-7f1e-5692-78b43242f20b@gmail.com>
 <bcfbf8ec-ca90-b736-1516-e096ef03222f@gmail.com> <1e587ddc-99a3-f05a-857d-9d221c0818b1@gmail.com>
In-Reply-To: <1e587ddc-99a3-f05a-857d-9d221c0818b1@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Tue, 27 Oct 2020 17:22:48 +0100
Message-ID: <CAKgNAkhuL9JRG_YhVG6Y-yjobDVAGjrUSdcQ4kV-4MABjZiwRQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] system_data_types.7: Add 'off_t'
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        lkml <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Tue, 27 Oct 2020 at 16:25, Alejandro Colomar <colomar.6.4.3@gmail.com> wrote:
>
>
>
> On 2020-10-27 14:47, Michael Kerrisk (man-pages) wrote:
> > On 10/27/20 11:23 AM, Alejandro Colomar wrote:
> >> Hi Michael,
> >>
> >> On 2020-10-07 08:53, Michael Kerrisk (man-pages) wrote:
> >>> On 10/6/20 12:12 AM, Alejandro Colomar wrote:
> >>>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> >>>
> >>> Hi Alex,
> >>>
> >>> Thanks, patch applied. And I trimmed the "See also" a little.
> >>> I'd hold off on documenting loff_t and off64_t for the
> >>> moment. As you note in another mail, the *lseek* man page
> >>> situation is a bit of a mess. I'm not yet sure what to do.
> >>
> >>
> >> I saw a TODO in the page about loff_t.
> >> Just wanted to ping you in case you forgot about it (I did).
> >
> > I didn't forget it exactly. I just don't know that I have the
> > inclination to do anything about the messy *llseek* pages.
> >
> > Thanks,
> >
> > Michael
> >
> >
>
>
> Hi Michael,
>
> I've been reading them to add loff_t and off64_t to sys_data_types.
> Now that I've read them (not too deep),
> I think that lseek64(3) is good enough,
> and maybe we should look for small details
> missing there but present on the others,
> and merge those to lseek64.3.
> And then keep links in the other pages pointing to lseek64.3.
>
> Any thoughts?

Those pages have a long history, and I confess to not understanding
all of the details of the history. Looking more closely at the pages,
I think they are good enough. Let's leave them alone. (I did apply one
patch just now.)

Thinking about it further, I don't think it's necessary to document
loff_t in system_data_types(7). No APIs in the current glibc headers
even use loff_t, as far as I can see. I'm not sure that 'off64_t'
really needs documenting there either.

Thanks,

Michael





--
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
