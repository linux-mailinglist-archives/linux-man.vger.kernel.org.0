Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 929062942F1
	for <lists+linux-man@lfdr.de>; Tue, 20 Oct 2020 21:21:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2391918AbgJTTVv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Oct 2020 15:21:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2391916AbgJTTVv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Oct 2020 15:21:51 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57D73C0613CE
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 12:21:51 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id y12so3674582wrp.6
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 12:21:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=8/ZmbpZ//E431KucH0lhVecJ5pU048rl/EAjvudljXk=;
        b=g5lX311Gmh8Zjq7qWZ6mVLa18Nq8qlQnNKd1YUguzg5mmDCYvQbRwFVg1ziPI8KusM
         GMvHFum/EJgu7JzatuX81F7oWjdsHKeTvk50AXCud2V25Kqjav4fWCi+L9NpHpXwtkOT
         Wt9IhmVTqTaXbg8QmpyRWVS0lZVENcmA9yPMgbrrEe5HIYkjORTWslADU+23W0QNQ73R
         omLiv+Ps5F+sWu/Kc41tXtd0HwJ8YFeXF6Ix6zkLuI8YCGxLXzqg+R12wTymoxVQ9ZiD
         IulObizNkbF84/tWKHib6CUU4N1imZKG8gm/JZknf5wRhiLq3gZJ21kQwlQL8fsv4mJx
         WQww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=8/ZmbpZ//E431KucH0lhVecJ5pU048rl/EAjvudljXk=;
        b=GoJbC7+pM4U8fOSqbC++IMyNG6dpjdnQlRbo7BTIqFkdckK1nc/XYQPnAv2HOF8bgi
         3+Yb6/PtXqyi6+w2bucHK1WxwYh84wPKduZ1YmiSujymCa3r73Y7ED58kuBW/kfGVIZp
         5p/12MUDiGN8/+Bs5rrr/0H3OJBqlwUYaEN34+0Eln07YFlPpwP9ZSZMQeXd7G2X/0aT
         y4bM6fPZJdOXLoaaI9fZ7i9HL2PPBGYeTHsuD0wUSUWP6GcbCA/htRh1dL1ejbfiNQ0u
         sU7YlssDsSJYGzrZ+owSMCk2isHwoHEVmdytOt3ZJnWr5Bk/b0uwSoGNW/10IXEck4ea
         hWvA==
X-Gm-Message-State: AOAM533+YbdnmcMW++AY/T5TbkNKSsOppMnUWmrsw0P4MXVduiiD0moR
        xag21WRmBpwBjnIY46n2pm4=
X-Google-Smtp-Source: ABdhPJyeRMAdwAQgIUG2j3JGSu3YN/U0t47exFR9y/YJRB9+5/gF4ivrPj7p2Ey3ErdG/74q1kFMpQ==
X-Received: by 2002:adf:8362:: with SMTP id 89mr5390658wrd.280.1603221710072;
        Tue, 20 Oct 2020 12:21:50 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id t19sm4457307wmi.26.2020.10.20.12.21.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2020 12:21:49 -0700 (PDT)
Subject: Re: [PATCH 00/22] list.3: New page forked from queue.3
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org
References: <20201020142146.61837-1-colomar.6.4.3@gmail.com>
 <438e747b-2307-d3f4-546d-5db90317d91d@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <7ce58fe0-3564-ac04-34d2-d866a33c7777@gmail.com>
Date:   Tue, 20 Oct 2020 21:21:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <438e747b-2307-d3f4-546d-5db90317d91d@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 2020-10-20 20:57, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On 10/20/20 4:21 PM, Alejandro Colomar wrote:
>> Hi Michael,
>>
>> I finished one of the pages: list.3
>>
>> Would you maybe call the page LIST.3 instead?
> 
> I think list.3 is okay.
> 
>> I didn't write the link pages yet in case we call it differently.
>>
>> Please comment any improvements you may find.
> 
> Overall, I think the result is fine, but:
> 
>> There are too many patches, so you may prefer to pull from my repo,
>> where I created the tag 'list_v1' for this patchset:
>>
>> 	https://github.com/alejandro-colomar/man-pages.git  list_v1
>>
>> As you can probably guess, if you prefer to pull from the repo,
>> I'll create similar tags for revisions of this patchset (e.g., 'list_v2').
> 
> I suppose if I was doing this work I would chunk it up into bigger
> pieces. I appreciate that you are trying to meticulously show the
> steps that you took to build the page, but 22 patches does
> really feel like too much. And I would have combined the
> "Use man markup" patches into one step at the end, and I'd prefer
> you do that for future patches (but I can live with things as they
> are in this patch series).
> 
> In terms of fewer patches, how would you feel about squashing the
> patches as per the blank line separators below (and consequently
> having bigger commit messages):
> 
>> Alejandro Colomar (22):
>>    list.3: New page that will hold the (list) contents of queue.3
> 
>>    list.3, queue.3: NAME: Move code from queue.3 to list.3
>>    list.3: NAME: ffix: Use man markup
>>    list.3: NAME: Add description
> 
>>    list.3, queue.3: SYNOPSIS: Move code from queue.3 to list.3
>>    list.3: SYNOPSIS: Copy include from queue.3
>>    list.3: SYNOPSIS: ffix: Use man markup
> 
>>    list.3: DESCRIPTION: Add short description
>>    list.3: DESCRIPTION: Copy description about naming of macros from
>>      queue.3
>>    list.3: DESCRIPTION: Remove unrelated code to adapt to this page
>>    list.3: DESCRIPTION: ffix: Use man markup
> 
>>    list.3, queue.3: DESCRIPTION: Move list specific code from queue.3 to
>>      list.3
>>    list.3: DESCRIPTION: ffix: Use man markup
>>    list.3: DESCRIPTION: Remove line pointing to the EXAMPLES
> 
>>    list.3: CONFORMING TO: Copy from queue.3
>>    list.3: CONFORMING TO: Adapt to this page
>>    list.3: CONFORMING TO: ffix: Use man markup
> 
>>    list.3: SEE ALSO: Add insque(3) and queue(3)
> 
>>    list.3, queue.3: EXAMPLES: Move example program from queue.3 to list.3
>>    list.3: EXAMPLES: ffix: Use man markup
> 
>>    list.3: BUGS: Note LIST_FOREACH() limitations
> 
>>    list.3: RETURN VALUE: Add details about the return value of those
>>      macros that "return" a value
> 
> Squashing as above would yield 10 patches, and I'd kind of prefer
> that so as to avoid quite so many commits in the history.
> (For future patches though, I would prefer to split out the
> "Use man markup" into a single  patch at the end of the series.)


I can't find the source
(I think it was some kernel guide for sending patches),
but I read some time ago that I should separate code movement
from any other changes;
otherwise git might not be able to follow that movement.

So I would reorder and squash the commits as:


Alejandro Colomar (22):
   list.3: New page that will hold the (list) contents of queue.3

   list.3, queue.3: NAME: Move code from queue.3 to list.3

   list.3, queue.3: SYNOPSIS: Move code from queue.3 to list.3

   list.3, queue.3: DESCRIPTION: Move list specific code from queue.3 to
     list.3

   list.3, queue.3: EXAMPLES: Move example program from queue.3 to list.3

   list.3: SYNOPSIS: Copy include from queue.3
   list.3: DESCRIPTION: Copy description about naming of macros from
     queue.3
   list.3: CONFORMING TO: Copy from queue.3
   list.3: DESCRIPTION: Remove unrelated code to adapt to this page
   list.3: DESCRIPTION: Remove line pointing to the EXAMPLES
   list.3: CONFORMING TO: Adapt to this page
squash as list.3: Copy and adapt code from queue.3

   list.3: NAME: ffix: Use man markup
   list.3: SYNOPSIS: ffix: Use man markup
   list.3: DESCRIPTION: ffix: Use man markup
   list.3: DESCRIPTION: ffix: Use man markup
   list.3: CONFORMING TO: ffix: Use man markup
   list.3: EXAMPLES: ffix: Use man markup
squash as list.3: ffix: Use man markup

   list.3: NAME: Add description
   list.3: DESCRIPTION: Add short description
   list.3: SEE ALSO: Add insque(3) and queue(3)
   list.3: BUGS: Note LIST_FOREACH() limitations
   list.3: RETURN VALUE: Add details about the return value of those
     macros that "return" a value
squash as list.3: Add details


I'll keep the messages of the squashed commits inside the commit msg.
This would mean 8 patches.

Sounds good?


Thanks,

Alex



> 
> Thanks,
> 
> Michael
> 
