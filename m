Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F1D4728A678
	for <lists+linux-man@lfdr.de>; Sun, 11 Oct 2020 11:04:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729358AbgJKJEB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 11 Oct 2020 05:04:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50046 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725844AbgJKJEB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 11 Oct 2020 05:04:01 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26214C0613CE
        for <linux-man@vger.kernel.org>; Sun, 11 Oct 2020 02:04:01 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id p15so14262079wmi.4
        for <linux-man@vger.kernel.org>; Sun, 11 Oct 2020 02:04:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Z44r8UU6ZAPzyN1qWkl6o8gXZRDomcRouRZGyS+32gs=;
        b=gsvyfhuHf37aJCHjosRlAVpplDnpx3Tz3ClCtT6GHbMULKfC0pxa2AJLVmCccEq647
         20/KvpLtwvv4G233tKsUk7dK8GcHoKpHCeK9Mn4IIIrv1nu0U2nyLgshjCkEyXPR+iNB
         CZ1xAZ7NFs0atp3tCojmzsa+7GFDzWJaga9ijODPwyK0vCCRLQwF0oGRn7HJ0usIC457
         HGMJ0FfhY9Tb3s2DkPQm5zSS/BFqHNeHmdq/T+MuS6SX6fbPRZpkDr4EPzKqHfql4ITp
         QCHM+PSV0jem3AHupRr/fzP/zANxvCLCu022NKiOem7MGwY6q36NJPG/d0NPMDpHvAJW
         hRaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Z44r8UU6ZAPzyN1qWkl6o8gXZRDomcRouRZGyS+32gs=;
        b=TlIzjrVfhCj0glS9BwZBUhWMvwZpJm4xMascVQ21CoRTtxxeMPlcY9JAdm+7iLJ4fn
         H0sAyRBSjd8RraMhFwbRx438PbmwqCRM6tmmjhvkgP54cOSThz4YVMltlPCAdIwhLSit
         sR1G/SZAfIGk2Z05WYG8d54r8DnYWs3JEKiv4v2Qk839P0qRub5kyrFkLRYIP2TAmPOg
         Avn2XtFjhSVF8ISUyimnM4InaCIdaCGBB7J2/Ejt7BPJnKbHlAGdykJbg7nZYcElHYYB
         27fXC75/k+snf/MyyL3TtYAUv9BUXW0hIa9kn9o6QyLrs3GktWHc7/foHJOmWWsjoVr9
         F6nw==
X-Gm-Message-State: AOAM532Q5Uy/ap0IwAizOJLEB5LIl0YD40Ct7GL4M5ZCNPJyC9LMS0tX
        Ejqdr1U26rVtRoLvkchTFDs=
X-Google-Smtp-Source: ABdhPJwfRr4MtapqFOJSuh3PWX03RIieV5r6xK6iws+hf5z8ULDgM2CjunAFok9/QqKdgiuV1BydVQ==
X-Received: by 2002:a7b:c394:: with SMTP id s20mr5886434wmj.176.1602407039653;
        Sun, 11 Oct 2020 02:03:59 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id c8sm21142727wmd.18.2020.10.11.02.03.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Oct 2020 02:03:59 -0700 (PDT)
Subject: Re: [PATCH] queue.3: Replace incomplete example by a complete example
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org
References: <20201010190226.19236-1-colomar.6.4.3@gmail.com>
 <899bb60e-368b-e7dd-9a87-715d094a8a10@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <9bc990f9-1605-b1c3-09d0-0a2dd68bd8f2@gmail.com>
Date:   Sun, 11 Oct 2020 11:03:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <899bb60e-368b-e7dd-9a87-715d094a8a10@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 2020-10-11 08:00, Michael Kerrisk (man-pages) wrote:
> Hello Alex:
> 
> On 10/10/20 9:02 PM, Alejandro Colomar wrote:
>> I added the EXAMPLES section.
>> The examples in this page are incomplete
>> (you can't copy&paste&compile&run).
>> I fixed the one about TAILQ first,
>> and the rest should follow.
>>
>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> 
> I have not (yet) applied this patch, because...


Hi Michael,

I thought that we could do it in the following steps:

1) Fix the current page:
	- Complete examples
	- Use standard sections (such as EXAMPLES)
2) Move the code from this page to new separate pages
3) Fix the code in all of those pages to use "man" macros

This way, the history can be easily followed in git,
instead of having a few commits breaking everything.

Also, I think this way it might be easier,
and the improvements (such as better examples)
can be seen from the beginning.
Part 1 could be applied directly,
while parts 2 & 3 should be applied at once.

If the change was done abruptly, you couldn't apply any commits
until all of the work is finished
(otherwise, you would have broken pages).

So I think this patch can be applied as part of this change.

Cheers,

Alex

> 
>> ---
>>
>> Hi Michael,
>>
>> I think this page needs a big overhaul.
> 
> ... you are probably right. (And thank you for thinking
> about the big picture.)
> 
> As you are probably aware, the page was essentially
> lifted from BSD, and lightly edited, and this accounts
> for many oddities by comparison with other pages.
> 
>> First of all, it's a very big page,
>> where it's a bit difficult to go to the subsection you want.
> 
> Agreed.
> 
>> Then, the examples are incomplete.
>> And also, the language of the page is weird.
> 
> Yes, there are some rather strange pieces in the page.
> Just now, I noticed statements about % code size increase, etc,
> which I'm sure were not measured on Linux (and in any case, such
> numbers are prone to change, and don't belong in a manual page).


Agreed.

> 
>> I thought about having queue.h with an overview of all the different
>> data structures, and the differences about them.
>>
>> And then separate pages for each data structure:
>> slist.3, list.3,
>> stailq.3, tailq.3,
>> simpleq.3 (which right now isn't documented),
>> and circleq.3
>> with details about each macro and a complete example program.
>>
>> Your thoughts?
> 
> The above sounds about right to me. I'd happily accept patches
> to do that, if you want to work on this.


:-)

> 
> One thing I'd ask though. Unlike almost every page in
> man-pages, this page uses mandoc mark-up (rather than "man").
> This was a matter of the history, where at some point I
> refreshed the page from BSD, and decided to retain the
> mandoc markup,so that if a refresh was ever again done,
> the diff would be easy to comprehend. If you do decide
> to do this work, I think it would be desirable
> to switch to "man" markup. Sound okay?


Yes.

> 
> Replying to your other mail:
> 
> On 10/10/20 9:08 PM, Alejandro Colomar wrote:
>>
>>
>> On 2020-10-10 21:02, Alejandro Colomar wrote:
>>> I thought about having queue.h with an overview of all the different
>> I meant queue.3 (instead of queue.h).
> 
> Okay.
> 
>> However, thinking about it,
>> if we strip if from the details about all of the macros,
>> it might be better as queue.7.
> 
> Let's leave it as queue.3 for the moment. If it makes
> sense, we can easily switch it later, as the final step.


Agree.

> 
> Thanks,
> 
> Michael
> 
