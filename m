Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0E9F73F5C3C
	for <lists+linux-man@lfdr.de>; Tue, 24 Aug 2021 12:40:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236110AbhHXKlW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 Aug 2021 06:41:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235905AbhHXKlV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 Aug 2021 06:41:21 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EF8EC061757
        for <linux-man@vger.kernel.org>; Tue, 24 Aug 2021 03:40:37 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id j17-20020a05600c1c1100b002e754875260so1965729wms.4
        for <linux-man@vger.kernel.org>; Tue, 24 Aug 2021 03:40:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=6KVaS0YrVGWZFlB5WTKDTT5vDrIYeGhw1zphs9SB/Sc=;
        b=cfB5TsW7zp9EsYxocXOPoTdORarlI4a1B818YF3NwTqpQfcAZqGVz40ctJjF4eve2a
         QL8hyQXeAa12cVY76CdUPlzxU7fZPPc+pH8u0chB/Ifw291378NbPOFjJ65IQtnYdjae
         xSrCKTqNm9YF23GwtRXlJbl6e/u5lhPDcqaP7OdgZjzt16baFVVizjc9VS2MGmN7Fwrf
         tcm4tymbsITkjQJsLkA74wd/P4fr1k5wSi5eYFcdRa8meIZlLfrKOWhnAs7D1Dm1/tNs
         4ATyG7dhmxgvA26YahJUisLv6D1uLCt1aXJZSo926Q8pScw1MFHvYx8V6Gi4E7+gTQ6J
         NAww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=6KVaS0YrVGWZFlB5WTKDTT5vDrIYeGhw1zphs9SB/Sc=;
        b=iU6hLAYynqUEQ3pFL3mJXPYeSzRUV+kcXYABqTA2jOcF7HCsle5P/KqjXmSIDBShyC
         zBfnOU8tnxEpU2tdFMZdYOUSGSsEys6eypDNMayvAzrNp7za41LeOCAu9sjItutKeDZu
         5BO27hl2J2dZsPWqavehqoNOq+g7TKqk2aUUnQVQwUB0CeTjR8nNYwcd9UK2clE5/iCh
         2U8k4TRK5JLMSjz6fSnwyPg0mv+EJUqMS4CIedwcjH6I7n9jDr+by90wFZAEtvYAAVzz
         uuHuNItIbuPPy3AIOKXNcF1nNKvXrEJoAoCBbaUL1/OVsFqVQQ63ZLJsvSXYvAu/ygAd
         4V4Q==
X-Gm-Message-State: AOAM533W4r1qBE2y1CbHjkGeVMhx4tTPe6QDkmWu31e4DLtezLTgkgpt
        d7myNeuLmtrMvbhGVVNP7ykzcy42qmE=
X-Google-Smtp-Source: ABdhPJwrDuC+N+LAAE1nONet2RlCd/5QfV2nn96L7FqOy8LRUsAKkeDhSyPjBpt5xmxva8kd9aTS7w==
X-Received: by 2002:a7b:cd92:: with SMTP id y18mr3475937wmj.78.1629801635749;
        Tue, 24 Aug 2021 03:40:35 -0700 (PDT)
Received: from [10.8.0.6] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id q11sm9443737wrx.85.2021.08.24.03.40.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Aug 2021 03:40:35 -0700 (PDT)
Subject: Re: [PATCH 1/2] strdup.3: drop mention of "the GNU GCC suite"
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <ed9ad00910f264f8f9ecd266d398522077f4548f.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
 <CAKgNAkgAO8_37aoQPPY1=jprfnzM6_vtpFMZodDBFwb_9YJhYA@mail.gmail.com>
 <20210824102852.b7sadpaqiuja7nj4@tarta.nabijaczleweli.xyz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <9e5ae6d7-0561-f2cd-a5fc-fcb6864851d3@gmail.com>
Date:   Tue, 24 Aug 2021 12:40:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210824102852.b7sadpaqiuja7nj4@tarta.nabijaczleweli.xyz>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Ahelenia,

On 8/24/21 12:28 PM, наб wrote:
> Hi!
> 
> On Tue, Aug 24, 2021 at 11:21:15AM +0200, Michael Kerrisk (man-pages) wrote:
>> On Mon, 23 Aug 2021 at 23:01, наб <nabijaczleweli@nabijaczleweli.xyz> wrote:
>>> ---
>>>   man3/strdup.3 | 3 ---
>>>   1 file changed, 3 deletions(-)
>>>
>>> diff --git a/man3/strdup.3 b/man3/strdup.3
>>> index 1e1ac34de..963de7d48 100644
>>> --- a/man3/strdup.3
>>> +++ b/man3/strdup.3
>>> @@ -99,9 +99,6 @@ and
>>>   are similar, but use
>>>   .BR alloca (3)
>>>   to allocate the buffer.
>>> -They are available only when using the GNU
>>> -GCC suite, and suffer from the same limitations described in
>>> -.BR alloca (3).
>>
>> Dropping mention of GCC seems reasonable, but why drop the piece about
>> "same limitations..."?
> That paragraph now reads
>    strdupa() and strndupa() are similar, but use alloca(3) to allocate the buffer.
> 
> I think this is short and unflowery enough that nothing more is needed
> (or, indeed, anything more would be detrimental) ‒ and clearly points to
> "see alloca(3) for the limitations of that allocator".
> 
> Plus, it's not like malloc(3) doesn't have its problems, too,
> but I don't see those being touted in the first paragraph;
> reducing these to the bare minimum,
>    strdup() copies into malloc(3) and you can free it with free(3),
>    strndup() likewise, but up to n, and
>    str[n]dupa() use alloca(3) instead ‒ be wary of what alloca(3) does!
> doesn't really make sense ‒ it's obvious that, ex definitione,
> alloca(3) suffers from alloca(3) problems and input limits,
> just like malloc(3) from the malloc(3) suite's.

That sounds convincing to me.

> 
>>> Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
>> This patch could do with a short commit message I think. See below.
> 
> How about something like this for the message?
>    str[n]dupa() are available on every modern platform, incl. Clang,
>    ICC, &c.; by shortening the third paragraph, it now points squarely
>    to alloca(3), which is scary enough, so drop the extraneous warning

Please break that into 2 paragraphs; I couldn't make sense of it in the 
first few reads.  Also, the longer explanation above also seems to me a 
good part of the commit message.

Cheers,

Alex

> 
> Best,
> наб
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
