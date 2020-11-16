Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0937B2B4114
	for <lists+linux-man@lfdr.de>; Mon, 16 Nov 2020 11:28:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728658AbgKPK2Z (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 16 Nov 2020 05:28:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35264 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726885AbgKPK2Z (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 16 Nov 2020 05:28:25 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B70BBC0613CF
        for <linux-man@vger.kernel.org>; Mon, 16 Nov 2020 02:28:24 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id j7so18078138wrp.3
        for <linux-man@vger.kernel.org>; Mon, 16 Nov 2020 02:28:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=oeZPWCVTH7ZMptDRdmEFaza5Mv/Y63A2r04npB56+eI=;
        b=enOpl6Z8wp+Y5Ns4+jROPWM5oRodZuIeAO2u0I0/Oqlm1MdCsYmPZNXnl+4tuatZX2
         DuRgAPIJzlQlUn2oPqeWOkRK8ksO7HiTumc+59G7C7KSlCd13SkRyBbOoLG1hSgtQLfP
         E0zpSU4LagQ+ChBG3WAuwlGK9HeuiMBEmrpoYBIZ5Twh26lWFSS32IuDOq9/XxnyDYqc
         VJbMn83owEKlm96cLEknfm5/Y7NSHGqVI6/toLfWLKajS7ffn0tNwihf+VAlh8hiDYf6
         WHZNffn/4uSY8loKYKMJAfn+S+ltdnwjxHv2IC5+LiJlvLZ938KQy5bi/gk18kXDe41X
         ucCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=oeZPWCVTH7ZMptDRdmEFaza5Mv/Y63A2r04npB56+eI=;
        b=uPL5l/sOjtNEnnFsKmaUvLtsLVud2DFEH1Nrxb5lCPVuws2M9++U0nenB3nrYM9K7O
         zwzJ4jHM8Y+AjJGgZFrw0KFIJyPuW5K0f4OilgOM6T5yJU3y+WhPEnIiZS62WVED/vFK
         Ii8dXz6zRDDaZhODczqSIfTpu/XOCGofrSi1FBugO6Yv/44JOpoQT1rtyh6Z3sUzcYnT
         pMROTVEUVC8X1NY8mFNpjEavrgPWJCsBrIZk/z8Pd1JZM4AsFxzoXkMup9Aye3ZX9/po
         U2rhS7NLBHaWBIFbvdjYgJGyK3EUGt78tpiVM6lmNWo70v0NTK6Sbg0HwsHZwckRPOXN
         pnTA==
X-Gm-Message-State: AOAM5313reh5W81YU9wkK/IEV09ANxtYwIa/s3R1Goa/1Il0wcgyDbfz
        fJJoK7ze3hpbW27bsTAZk4E=
X-Google-Smtp-Source: ABdhPJx7ED9GYAf7v8pHNKlLs3Ui137z7KlmM0+KaCat4tzXYPWSo1ffLfp7oBCgkYislJyeNfZ80w==
X-Received: by 2002:adf:fdc5:: with SMTP id i5mr18285712wrs.26.1605522503480;
        Mon, 16 Nov 2020 02:28:23 -0800 (PST)
Received: from ?IPv6:2001:a61:24b3:de01:7310:e730:497d:ea6a? ([2001:a61:24b3:de01:7310:e730:497d:ea6a])
        by smtp.gmail.com with ESMTPSA id d3sm21976250wre.91.2020.11.16.02.28.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Nov 2020 02:28:22 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: [PATCH] ...: srcfix: 's/^.nf$/.EX/; s/^.fi$/.EE/'
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <20201115140737.247270-1-alx.manpages@gmail.com>
 <f6eafa23-f893-4f78-6316-b7e0ea15489c@gmail.com>
 <a7189561-5550-f06a-b5aa-2123bf8b8c2a@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <d927462c-d7c1-11c4-2515-e1a8f95d45bb@gmail.com>
Date:   Mon, 16 Nov 2020 11:28:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <a7189561-5550-f06a-b5aa-2123bf8b8c2a@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

>> .nf/.fi appears in two places generally:
>> (1) Inside the SYNOPSIS (many pages)
>> (2) Elsewhere in the page (fewer pages)
>>
>> Probably, most (all?) cases in the second category should 
>> really be .EX/.EE.
>>
>> But in the SYNOPSIS, .nf/.fi is used inconsistently. The 
>> majority of pages use it, but a substantial minority (200+ pages)
>> do not (e.g., chdir.2). (That inconsistency is a mess from
>> history.) Why does this matter? Well, theoretically at least,
>> pages might be rendered to something other than the terminal.
>> I care at least a little bit about PDF rendering[1], and the
>> inconsistency means that converting .nf/fi to .EX/.EE will
>> produce a very different appearance in pages that currently
>> do/don't use .nf/.fi in the SYNOPSIS.
>>
>> What to do? I'm not sure. When I look at the PDF renderings,
>> using simply .nf/.fi (or nothing at all) in the SYNOPSIS
>> produces a variable-width-font output that is visually
>> appealing for the function prototypes. Switching to
>> .EX/.EE, the result is not unpleasant, but I'm not
>> sure I prefer it (in a PDF rendering).[2]
>>
>> As a first step, all pages should probably be using .nf/.fi
>> in the SYNOPSIS. But, that's probably a painful manual edit.
>> I've been manually fixing pages over the years, but many
>> are not fixed yet.
> 
> Hmm, didn't think about those.
> I agree that it may be nicer with .nf/.fi for the SYNOPSIS
> from what you say
> (I'll try it myself).
> I'll see if I can come up with a script that
> keeps .nf/.fi in the SYNOPSIS
> and changes everything else.
> 
> For the rest, you would change to .EX/.EE, right?

I took a closer look [1], and it looks like only a minority
of these should be changed.

There are some that probably should be fixed (e.g., EXAMPLES)
to use .EX/.EE. I just fixed some of those.

But in other cases (e.g., perfmonctl.2, fenv.3), there are
inline function prototypes (as in SYNOPSIS) or some cases
where .nf/.fi is really being used to stop line filling.

Sometimes, in the latter case, .nf/.fi is being used to do
a "poor man's" table (e.g., see ioctl_tty.2); those should
be converted to real tables, since the "poor man's" version
does not render well in PDF (e.g., ioctl_tty.2). I just
fixed a few of the worst cases.

Of the remaining uses of .nf/.fi, I didn't notice any cases that
really bothered me. Maybe at this point it's a case of 
"move along, there's nothing to see here" :-).

>>> That's the reason there are a few more insertions than deletions.
>>
>>
>> I manually fixed chroot.2, memfd_create.2, and tailq.3. Were there
>> any others?
> 
> No... probably.
> I checked that the number of .nf+.fi was even for a single file,
> and that the total number of .nf equaled
> the total number of .fi in a directory
> (it was too much work to check every file).

I just checked in a script that I have for the task: 
check_unbalanced_macros.sh

>>> Woah, 439 KiB of a patch...
>>
>> :-)
>>
>>  
>>> I tested a few of the pages to see
>>> if anything changed in the rendered output.
>>> Apparently, no.
>>> I hope that holds throughout all of the modified pages.
>>>
>>> BTW, I had to script a bit to get the subject of the commit
>>> (as you can probably guess I didn't write that myself :p)
>>> Would you want to add that to 'scripts/'?
>>
>> I myself have a small script based around the output of
>>
>>    git status | grep 'modified:' | awk '{print $NF}'
>>
>> How do you do it?
> 
> I just sent a patch before reading this email.
> Mine is a bit more reliable I think,
> but maybe you can still improve it :)

Thanks. If you could just resend with copyright and license, 
I'll check it in.

Thanks,

Michael

[1] 
for p in man?/*.[1-8]; do \
    if cat $p | sed '/SH SYNOP/,/^\.SH/d' | grep -q '\.nf'; then echo $p; fi; \
done



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
