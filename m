Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8172D3DCB35
	for <lists+linux-man@lfdr.de>; Sun,  1 Aug 2021 12:38:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231473AbhHAKit (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 1 Aug 2021 06:38:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231470AbhHAKit (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 1 Aug 2021 06:38:49 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DDF5C06175F
        for <linux-man@vger.kernel.org>; Sun,  1 Aug 2021 03:38:40 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id c16so17785467wrp.13
        for <linux-man@vger.kernel.org>; Sun, 01 Aug 2021 03:38:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=pIeCqAWeEzg0RChzRUMYwE8KOMd2dQJ2ywUoaZ1BQFc=;
        b=fgVPp1Blo6nqyxumVKxqO7J2/mpo5fVW7qk9Q2LJhxBfSwIjmO8z7Zj5o+Pc7WNFnn
         6QR8katE4jYF2uZdroiZnxNv9dejlO7ohXHd+ZtzL21vO3qQ98JOrueoW7vkm7qPz150
         2VUJAFnOzh8nFix0lZzW6ViT0cI1B3nFmfx35l56j3pq8JVEQvIFua2d2xYLKT42my+v
         TIk8TjW2Ha+dyCixiSNdSaw9Al/V2UPztcArJsL+cb7Mn5BqEjkh2bMfgqj4JhTaemTi
         qVtbku2Os78IM2V4cQ47SqYTCeQsTEMijP2GEjVrXcynXB5uX4RSxBpdN9EDOkDzU/Ru
         G6yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=pIeCqAWeEzg0RChzRUMYwE8KOMd2dQJ2ywUoaZ1BQFc=;
        b=kX3x9jjROnWpcn/LUTkXccldhRr79Chbx9pukdD4ydTcqzmDvxsILI201m2BGxZJK5
         Xd1AkBW1wpVdXQnNbTrj4/OO/7eS5nZTDMrzyP49glPPVeCHhwhOPPQXxjnQeRgRVEoh
         NEJZ45cHHLj/mclOMbDZ5iVhGbY9kWwsX6HgGfMuywkDUj2inSuj5w2CtfoILVOoWKXw
         KmOePATlkML7qV+WL/9ADJ07Lvy8odMPeERDXGDD3EPmKWLEoPwI22xLT1ZKDiU0f2vj
         iEY94YFPRhHPthcW/jN51Ga365zQo5NWYNz0BFblUP4ct5XU9eC/selaSQDjFXAGZ3XZ
         zXxA==
X-Gm-Message-State: AOAM530u2HrMJV84lMWsBvHjh21GjsHv9ld0uYun0+7U1M83Fl/WfWsD
        UVHlBxKMVjembJ0zDyYbcfwpT4pQIQ8=
X-Google-Smtp-Source: ABdhPJyftuiBOpyHfDnDYtMgGNjmKMShVnV8f5fqIyVn9iZm32IDLLvCMzgqSMMbwwdPUuxAQNww/A==
X-Received: by 2002:a5d:6306:: with SMTP id i6mr12338809wru.94.1627814318702;
        Sun, 01 Aug 2021 03:38:38 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id l41sm7688762wmp.23.2021.08.01.03.38.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Aug 2021 03:38:38 -0700 (PDT)
Subject: Re: [PATCH v2] mount_setattr.2: New manual page documenting the
 mount_setattr() system call
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20210730094121.3252024-1-brauner@kernel.org>
 <9ba8d98e-dee9-1d8d-0777-bb5496103e24@gmail.com>
 <20210731014251.whqfubv3hzu3mssw@localhost.localdomain>
 <00d3c648-bdb5-3005-807f-ec2d3360f16a@gmail.com>
 <20210801100234.mcgwwxr42wxwe7gf@localhost.localdomain>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <1cde7dff-b62b-4697-1229-dd02529b3110@gmail.com>
Date:   Sun, 1 Aug 2021 12:38:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210801100234.mcgwwxr42wxwe7gf@localhost.localdomain>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden!

On 8/1/21 12:02 PM, G. Branden Robinson wrote:
> [CC list brutally trimmed]
> 
> Hi, Alex!
> 
> At 2021-07-31T13:20:59+0200, Alejandro Colomar (man-pages) wrote:
>> On 7/31/21 3:42 AM, G. Branden Robinson wrote:
> [...]
>>> I recommend:
>>>
>>> .BI MOUNT_ATTR_SIZE_VER number\c
>>> \&.
>>
>> I also prefer your way (at least in cases like this one (maybe in the
>> synopsis \f would be more appropriate)).  It is more consistent with
>> our current style of placing each identifier in a line of its own, and
>> normal text separately (punctuation is placed wherever it's simpler,
>> but in this case I think it's simpler in a separate line).
> 
> Another benefit of using the font escapes that I was reminded of today
> while doing a big revision pass on groff_man_style(7)[1] is that you get
> italic corrections for free with them.  This was already true to some
> extent in groff 1.22.4, but I refactored the implementation of the
> macros earlier this year to be brutally consistent[2].
> 
> I would say that I like being able to tell man page authors that they
> need not learn the italic correction escapes, but I'd probably hear from
> many of them that they had no intention of doing so in the first place.
> I might get threatened with defections to RST and Sphinx just for
> bringing it up.  🤣

What are "font escapes" and "italic correction escapes"?  I don't know 
those technical terms.

> 
> [...]
>>> groff -man -rCHECKSTYLE=n
> [...]
>> I'll try it.  Thanks!
> 
> Cool!
> 
>>
>>>>> +.BR open_tree (2)
>>>>> +with the
>>>>> +.I OPEN_TREE_CLONE
>>>>> +flag and it must not already have been visible in the filesystem.
>>>>> +.RE
>>>>> +.IP
>>>>
>>>> .IP here doesn't mean anything, if I'm not mistaken.
>>>
>>> It certainly _should_--it should cause the insertion of vertical
>>> space.  (It would also cause a break, but .RE already did that.)
>>>
>>> The interaction of .IP and .RS/.RE is tricky and can probably be
>>> blamed, back in 2017, for irritating me to the point that I became a
>>> groff developer.  I've documented it as extensively as I am able in
>>> groff_man_style(7)[1].
>>
>> Yes, indeed there are 2 consecutive blank lines, which is incorrect
>> most likely.
> 
> That sounds like a bug in your man(7) renderer, and it sounds badly
> violative of the semantics of these macros in _any_ implementation.
> (You can't stack adjacent paragraph macros to make additional blank
> space; you just get the one.[3])  This stuff has been stable since 1979.
> 
> I do not get _2_ blank lines after the paragraph ending "visible in the
> filesystem."  Just one.  None of groff 1.22.4 (Debian), groff Git HEAD,
> nor mandoc 1.14.4 misrender for me in that way.  What's your tool set?
> If it's groff, I'm intensely curious to know how it's screwing this up.
> I can likely help you root-cause it.

Ahh, I used mgroff(1) (mental groff).  I should debug my mental parser.

So, as I suspected, that .IP is ignored, if my mental groff is working 
correctly now.

> 
>> Probably a glitch of copying and pasting without really understanding
>> what each macro does (not to blame Christian, but that the
>> groff_man(7) language (or dialect actually) is not something familiar
>> to programmers, and most of them legitimately don't have time to learn
>> it well).
> 
> There is a wealth of terrible examples to follow, which make the
> language seem harder than it is.  A large part of my work on groff's man
> pages has been to make them good examples to follow--but as, at my last
> count, groff's ~60 man pages produce 364 pages of type on U.S. letter
> paper, this is a process that is taking some time.
> 
> I acknowledge that you and Michael are wrestling an even bigger bear. :)

Yup.  Since almost when I started here, I'm trying to have the man-pages 
be consistent across all of the pages, both in terms of source code and 
rendered output.  Not an easy thing...

I hope that when I finish this (if it can ever be finished), reading and 
writing man-pages is a simpler task for newbies :)

Regards,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
