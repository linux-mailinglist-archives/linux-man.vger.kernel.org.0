Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 830182B3AC3
	for <lists+linux-man@lfdr.de>; Mon, 16 Nov 2020 01:26:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728064AbgKPAZC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 15 Nov 2020 19:25:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727618AbgKPAZB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 15 Nov 2020 19:25:01 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9BD0FC0613CF
        for <linux-man@vger.kernel.org>; Sun, 15 Nov 2020 16:25:01 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id k2so16944923wrx.2
        for <linux-man@vger.kernel.org>; Sun, 15 Nov 2020 16:25:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=GI7RRmq6kkw2pjmrK09BzcG8eoCb044PVOOwckzviQg=;
        b=BiC+ZoQhfeaCZ0lmTkFsCZkUZYF9dVCssRsiYjtr+hnxOxtGvflq8G2fusYW8yhKO6
         Wm0T0y1FLVHtW4dWWVVO1hGlBrIhs+Tp/SBQ0h68g9XprxxLsE0JQrUFvArGQMCkhRsY
         1M3mzQBTh2JqnjdbmobmqLB/8dIMWCz03SEF3xzEl1wxKjV6OpDd4HupiP1X5OQhScZa
         MlDwjsFtII2wp9FRL56I3P5EmX9BFONfXd4IBoAW7nkEAIuBSeroQRFOijU1d0Gdg3JQ
         3h2u3oJL3s79pIwID6/sZ2yF6n2aLPOXCdIJ6gSXv7P1BCxzB0lbVQNVdVXc+IUnGdsM
         NCkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=GI7RRmq6kkw2pjmrK09BzcG8eoCb044PVOOwckzviQg=;
        b=dYFgRWbXDDhYdbTo+EiXzaAc4DEpGS1F7dLamnvMURVBeSHVzMweu4rTEg2rTCGGa1
         V/Jx3IQ5LQcCukWYY0qEM6KT5TG7/JknpGOjiwv/WZ/7b67MTZuzPTYsXlV49Zx5zMY+
         8VDYWSZ5gDCKR19+6fZ9Fxrt+dbo2HqqUOmaT0PKGOE8LZagIueIkezJGz808Ck+6sQo
         Om5nWqhyVWpomE9tQVGI/86PMcxh1VdsMlaz4P6atS5Qluoto99T6852RL5iAN8vLq7N
         sVpIIW+IVi408dw06W7dHZ+RqmuMrJEusa2TGBOYieW35Fl0yfj+V9i3FwtdJvt8AFqz
         +KUg==
X-Gm-Message-State: AOAM533zEbXBiD4iFw8GRsswj2wt5RPoKoD+LpUivIABuUuqhs3sAc0W
        H1f2j9Y7lbJ2ptuqrMVFSB0=
X-Google-Smtp-Source: ABdhPJxdZXOvlXotLANOaQ+wQSOl5vQZ/X6aAE/owr+nuurQBEMyRIxAits0ptwto8EjWKrkeB6mow==
X-Received: by 2002:a5d:4ec2:: with SMTP id s2mr16191828wrv.258.1605486300306;
        Sun, 15 Nov 2020 16:25:00 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id c2sm21711964wrf.68.2020.11.15.16.24.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Nov 2020 16:24:59 -0800 (PST)
Subject: Re: [PATCH] ...: srcfix: 's/^.nf$/.EX/; s/^.fi$/.EE/'
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
References: <20201115140737.247270-1-alx.manpages@gmail.com>
 <f6eafa23-f893-4f78-6316-b7e0ea15489c@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <a7189561-5550-f06a-b5aa-2123bf8b8c2a@gmail.com>
Date:   Mon, 16 Nov 2020 01:24:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <f6eafa23-f893-4f78-6316-b7e0ea15489c@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[[ Title trimmed; I couldn't read the contents on Thunderbird ]]

Hi Michael,

On 11/15/20 11:32 PM, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On 11/15/20 3:07 PM, Alejandro Colomar wrote:
>> Reported-by: G. Branden Robinson <g.branden.robinson@gmail.com>
>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
>> ---
>>
>> Hi Michael,
>>
>> As we discussed,
>> I removed _every_ appearance of [.nf] and [.fi] from the pages.
> 
> Ooops -- I don't quite recall the details of that discussion.
> But, this is not so simple.

Actually, Branden and I discussed that a few days ago,
and IIRC we (Branden, you, and I) mentioned it a long time ago.

> 
>> There were some unmatched [.nf] appearances,
>> which I manually matched with [.EE].
> 
> In cases like this, it would probably be better to split this
> out into separate patches with a small preparatory patch that
> fixes the unbalanced .nf macros, followed by the bigger patch,
> but even so, it's not so simple...

Yes, I should've done that...
I'll fix those separately.
Actually one of those was my fault (tailq.3).

> 
> .nf/.fi appears in two places generally:
> (1) Inside the SYNOPSIS (many pages)
> (2) Elsewhere in the page (fewer pages)
> 
> Probably, most (all?) cases in the second category should 
> really be .EX/.EE.
> 
> But in the SYNOPSIS, .nf/.fi is used inconsistently. The 
> majority of pages use it, but a substantial minority (200+ pages)
> do not (e.g., chdir.2). (That inconsistency is a mess from
> history.) Why does this matter? Well, theoretically at least,
> pages might be rendered to something other than the terminal.
> I care at least a little bit about PDF rendering[1], and the
> inconsistency means that converting .nf/fi to .EX/.EE will
> produce a very different appearance in pages that currently
> do/don't use .nf/.fi in the SYNOPSIS.
> 
> What to do? I'm not sure. When I look at the PDF renderings,
> using simply .nf/.fi (or nothing at all) in the SYNOPSIS
> produces a variable-width-font output that is visually
> appealing for the function prototypes. Switching to
> .EX/.EE, the result is not unpleasant, but I'm not
> sure I prefer it (in a PDF rendering).[2]
> 
> As a first step, all pages should probably be using .nf/.fi
> in the SYNOPSIS. But, that's probably a painful manual edit.
> I've been manually fixing pages over the years, but many
> are not fixed yet.

Hmm, didn't think about those.
I agree that it may be nicer with .nf/.fi for the SYNOPSIS
from what you say
(I'll try it myself).
I'll see if I can come up with a script that
keeps .nf/.fi in the SYNOPSIS
and changes everything else.

For the rest, you would change to .EX/.EE, right?

> 
>> That's the reason there are a few more insertions than deletions.
> 
> 
> I manually fixed chroot.2, memfd_create.2, and tailq.3. Were there
> any others?

No... probably.
I checked that the number of .nf+.fi was even for a single file,
and that the total number of .nf equaled
the total number of .fi in a directory
(it was too much work to check every file).

> 
>> Woah, 439 KiB of a patch...
> 
> :-)
> 
>  
>> I tested a few of the pages to see
>> if anything changed in the rendered output.
>> Apparently, no.
>> I hope that holds throughout all of the modified pages.
>>
>> BTW, I had to script a bit to get the subject of the commit
>> (as you can probably guess I didn't write that myself :p)
>> Would you want to add that to 'scripts/'?
> 
> I myself have a small script based around the output of
> 
>    git status | grep 'modified:' | awk '{print $NF}'
> 
> How do you do it?

I just sent a patch before reading this email.
Mine is a bit more reliable I think,
but maybe you can still improve it :)

> 
> Thanks,
> 
> Michael
> 
> [1] 
> function pdfmanq {
>     man -Tps -l $1 > /tmp/$(basename $1).$$.ps
>     ps2pdf /tmp/$(basename $1).$$.ps $1.pdf
> }
> 
> function pdfman {
>     pdfmanq $1
>     evince $1.pdf    # Or whatever PDF viewer you use
> }
> 
> # pdfman somepage.n

Thanks!

> 
> [2]
> But I am perhaps old school on this point.
> 

I tend to be so too, even though I'm 27 :p

Cheers,

Alex
