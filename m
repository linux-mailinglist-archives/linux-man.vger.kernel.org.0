Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1397C2A9989
	for <lists+linux-man@lfdr.de>; Fri,  6 Nov 2020 17:36:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726034AbgKFQgR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 6 Nov 2020 11:36:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725868AbgKFQgR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 6 Nov 2020 11:36:17 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEA92C0613CF
        for <linux-man@vger.kernel.org>; Fri,  6 Nov 2020 08:36:16 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id 23so1292983wmg.1
        for <linux-man@vger.kernel.org>; Fri, 06 Nov 2020 08:36:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=m+g4plxpn1ooQCiyQ/mBojpW8TIeaTU12CHTtDnlKKs=;
        b=TnpVmYKw/iCDGTKGg8iPmR0SXsT3fGGt+xXsDjp9OsNix1SHa/3FExl8SjCns7WSOe
         t4Y6uSWAAV2Ut4vUNoofKw7xldI2loMOJbtfyusHlFYLdOmiLJHxRuhlAvSneYrrplKQ
         EZ9CjttUxccliYlWDx6hXWExT3DuxxTSgJnlfJTOAQCO89uFJdMnvCundXjnL4gdRrDL
         E4t/uHtBRyag4hfzxKVuD1XODnw6IDf+CgMwomOl6UvK2wQYBQHjDB587TNniCyks5RE
         C4bbkwRboajadvnT/iYFPdGSzGQ9aCJcxvPWlcKeAzl8oQ8Cbxz3FDWKqmC+mLxoAs4o
         HM8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=m+g4plxpn1ooQCiyQ/mBojpW8TIeaTU12CHTtDnlKKs=;
        b=XOmolJXuYREAITXtJSxyXLWXrvS8DdrIhCrXLgyN6VzZu/PIKIw4ehqBE0VWMWulTE
         8NDsmENvUnTJsdKvd9YVxeywvnm42AJbNRG4fc4bfT2SN03Yopay1F6vzjdVQrZ16wmr
         /A/OWb61NSP/u5LvXn4ywW5lxWE2bJccdWN42rxqgoiSz6QMWKhJ+wTyTYO7XBALYx3R
         66Iu70XaJ4/Macu9tDW5Rf4QjIBNoQ192raZFJLcCTDV7u4nmxdzVGuz0g6KM4nDImah
         cpBb+5YIt9jFxGmfYvFn23PKGgfiDbRSserYcZP+cyWAbK8s3FUUx9UEJY4LfPEmAJLs
         j+Jw==
X-Gm-Message-State: AOAM530voTnV2Gn5Rnxirx1L4grwPS07Oi+QmPsnP7DTBWliF1IR7uux
        CPQVm/7E0lvcPrODahJDR0uzCt0uhCs=
X-Google-Smtp-Source: ABdhPJyewgAGxBs/VzDsej1LOiS0mZAvZgZ2hqoyEfmXqOvbnn9WRrdYeEh+QRUuXNGfSWAU4dDs7Q==
X-Received: by 2002:a7b:c2f7:: with SMTP id e23mr469197wmk.100.1604680574755;
        Fri, 06 Nov 2020 08:36:14 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id v9sm2858966wrp.11.2020.11.06.08.36.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Nov 2020 08:36:13 -0800 (PST)
Subject: Re: Format inline code
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     "G . Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org
References: <f10acb37-f929-c1fd-9827-c33aaf2955a1@gmail.com>
 <20201106093845.12897-1-colomar.6.4.3@gmail.com>
 <3f041e44-c5c7-f17a-9e99-125eeb6ccb0c@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <387259c5-3051-8058-e99c-b17873fe7187@gmail.com>
Date:   Fri, 6 Nov 2020 17:36:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <3f041e44-c5c7-f17a-9e99-125eeb6ccb0c@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi M,

On 2020-11-06 17:00, Michael Kerrisk (man-pages) wrote:
 > Hi Alex,
 >
 > On 11/6/20 10:38 AM, Alejandro Colomar wrote:
 >> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
 >> ---
 >>
 >> Hi Michael,
 >>
 >> This is not a patch.
 >> But I sent you a full page to better see what we're talking about.
 >
 > Thanks. The "patch" was helpful.
:P

BTW, the thing I tried in the "patch"
of passing a length argument to .IP
is not possible, right?
It would simplify some things.

 >
 >> Here are, as subsections of EXAMPLES,
 >> A (.RS/.RE after first .TP paragraph) and
 >> B (.RS/.RE Always)
 >> from last email.
 >>
 >> As for using .RS/.RE for single paragraphs,
 >> we could do as in C:
 >> {} for multi-line ifs/loops -> .RS/.RE for multiple paragraphs.
 >
 > With the important caveat that {} plus indentation is a lot more
 > visually comprehensible than a .RS/.RE pair.
Agree.  I dislike most if not all markup languages
for being not very easy to read.
Maybe .rst is the only one I kind of like in that sense :/

 >
 >> just indent for single-line ifs/loops -> .IP for single paragraphs.
 >
 > So., I think the choice is really down to something like
 > this:
 >
 > * For .TP with single paragraph, no extra markup
 > * For .TP with multiple paragraphs/examples, I would probably prefer:
 >
 >          .TP
 >          .RS
 >          [paragraphs started by .PP]
 >          .RE
 >
 > rather than:
 >
 >          .TP
 >          [first para]
 >          .RS
 >          [paragraphs started by .PP]
 >          .RE
 >

I'd reword it as:

           .TP
           .RS
           [first para]
           [paragraphs started by .PP]
           .RE

i.e., the first paragraph should not start by .PP.
But I agree on including the first one in the .RS/.RE group
for logic and consistency reasons.


 > But I still wonder, do we want to do this? The advantages:
 >
 > * Consistent use of .PP everywhere.
 >
 > The disadvantages:
 > * A bit more mark-up required.

Agree on that one.

 > * Perhaps the source is also a little harder to understand.

I would argue the other way:

.IP Does too many things: It indents, and it also adds a new paragraph.
It is like .RS+.PP/.RE grouped into one macro.

With the separation into .RS/.RE and .PP,
each macro does one job, and does it well.
So when you see .RS, you know you're moving +1 tab,
when you see .RE, you're moving -1 tab.
and when you see .PP, you're leaving a blank line.

It will be more code (the previous disadvantage),
but conceptually, I think it will be simpler.

 > * What to do with existing pages? Do we convert them? Scripting
 >    will probably help, but still there's probably a decent
 >    amount of work required.

Well, we can change them slowly.

Scripting will probably be difficult,
and maybe it doesn't even fix 50% of the cases,
so it will probably need to be mostly handmade.

But there's no hurry.
It works as it is now, so we can change one page at a time,
and some day all will be fixed.
We had pages with very old markup (queue.3; is there any other?),
until very recently...

For example, when we add new code to a page, we can fix that page.
perf_event_open.2 could be a start;
it also has some other obvious srcfixes,
which could be fixed on the same patch.

Thanks,

Alex

 >
 > Thanks,
 >
 > Michael
