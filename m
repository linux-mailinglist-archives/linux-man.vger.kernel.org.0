Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4F5F8382355
	for <lists+linux-man@lfdr.de>; Mon, 17 May 2021 06:24:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231858AbhEQEZ4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 17 May 2021 00:25:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230148AbhEQEZ4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 17 May 2021 00:25:56 -0400
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com [IPv6:2607:f8b0:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81238C061573
        for <linux-man@vger.kernel.org>; Sun, 16 May 2021 21:24:40 -0700 (PDT)
Received: by mail-pg1-x530.google.com with SMTP id l70so3786110pga.1
        for <linux-man@vger.kernel.org>; Sun, 16 May 2021 21:24:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=VKTrGXzw9OyDIlKQV69t+h/Y5b4mThEbtpqni2VKVrw=;
        b=A1vH/7ji9euuWeQvng4qVSh3d8y9Ltb61b5plp3v4kUOthP2cPZAaFBwpWbjxml6ot
         btGJ3kFi6hysaTeNcU2cTw9pAjfhIf3FjSEpqm5NIcxLIliakQJrc0D2Mhd88AXVhSGB
         Ee86TRp1X/BrfVdb05sud+fGvufe1OobhBNtKbsBsA2bgBl/IxjPp7K7ClyBpuYY02zg
         TaTn7+BDDtbTh6MWMqb7xCKJfJN+4ZjdTKH8slByqxKBKS4I697/wt1ca5Ip/V7NL2i0
         P/N2c8QW6Jdps03y2A5CbXXBeE4MGFu2KgF4Cq/wOuoZauP02unsWNHkwuQsTaGjFc53
         6qKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=VKTrGXzw9OyDIlKQV69t+h/Y5b4mThEbtpqni2VKVrw=;
        b=CxO95zG3HMIuWxU622bTc4rUte9k9JfRBpvEcuv/SuPK6RpbQk/JTVTb7Q3mTOqqQt
         KkJOW6zdZvN480GTXCrEbvc7OjqCj7BpdPW7LGtYnGCHRQOjiY63XXgUG9+HNijXYFIO
         S3KmYQ8ps3JxHJE0W4/YpRd1YG4zx5wT22YhaV9ByfEkRosFDOGSfvVlkItJ6LsENrrx
         db1UrPpDFznPMJuOev9Bwko2C+iR3lusZ96TeS5qsEIMkPbdQCsfflfdW3Io5PmvLycV
         AW9KSBihRn8coQlaKMhwvxMBSm6PNaGfjaFENqNQIJqrIBNwnhR223t9fEEi96d8AKOD
         J3sQ==
X-Gm-Message-State: AOAM531Bkkl9VDphzE1nlu5J6FiFZLtSL5Duc7lhssuE6OAw948CMAGj
        8tLUcj29sYwyY+VO+adxnHQ=
X-Google-Smtp-Source: ABdhPJxeRmY4eByzUzbpQa2Qx5diSjHxqN6kQAXumYSdrhSt0qWzljqxpgJXYvkd3S8pDoSjcwThcA==
X-Received: by 2002:a62:e704:0:b029:2c4:b81e:d1a7 with SMTP id s4-20020a62e7040000b02902c4b81ed1a7mr35768276pfh.31.1621225479524;
        Sun, 16 May 2021 21:24:39 -0700 (PDT)
Received: from [192.168.192.21] (47-72-82-130.dsl.dyn.ihug.co.nz. [47.72.82.130])
        by smtp.gmail.com with ESMTPSA id i7sm207941pgv.93.2021.05.16.21.24.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 May 2021 21:24:39 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Helge Kreutzmann <debian@helgefjell.de>,
        =?UTF-8?Q?Mario_Bl=c3=a4ttermann?= <mario.blaettermann@gmail.com>
Subject: Re: getting more out of man pages with less(1) (was: [bug #59962]
 soelim(1) man page uses pic diagram--should it?)
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        groff@gnu.org, linux-man@vger.kernel.org
References: <CACRhBXNqafUZm_Tk4+GyK4hrEnmS8F_e=s_kwVMeX0utvOHkzQ@mail.gmail.com>
 <20210517025022.wgjbt6esup7crgbo@localhost.localdomain>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f21251ae-a136-8b09-af72-b5ad95f2b4cc@gmail.com>
Date:   Mon, 17 May 2021 16:24:34 +1200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210517025022.wgjbt6esup7crgbo@localhost.localdomain>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

On 5/17/21 2:50 PM, G. Branden Robinson wrote:
> [looping in linux-man@ because issues of user education and topics that
> fall between project/man page stools come up below]
> 
> At 2021-05-16T20:29:30-0500, Dave Kemper wrote:
>> This stuff about less(1) is only tangential to groff, but it did come
>> up in the context of viewing man pages, so I'm keeping the groff list
>> in the cc.
> 
> Good idea.  I've further changed the Subject: to reflect the flow of the
> discussion.
> 
>> On 5/12/21, G. Branden Robinson <g.branden.robinson@gmail.com> wrote:
>>> One thing I would mention is that less(1) supports regex searches
>>> within its buffer.  On my system, the searches are even
>>> case-insensitive by default if the search pattern is all lowercase,
>>> and not otherwise.
>>
>> less's default is for searches to be case-sensitive.  Its -i option
>> (which can be given on the command line or while less is running) is
>> what activates the behavior described above.  A user or a distro might
>> make -i the default in their environment (I do) through the $LESS
>> environment variable or an alias, but that isn't less's out-of-the-box
>> behavior.
> 
> On my Debian buster-based system, less(1) behaves that way, but $LESS is
> not defined in my environment and I don't have a shell alias or function
> set up.  Checking the source package, I don't see patches to turn -i on
> by default.  Baffling!
> 
>>> In fact, to leap among sections you can do
>>>
>>> /^[a-z]
>>>
>>> regardless of the lettercase convention, and after doing the above
>>> once you can type simply
>>>
>>> /
>>>
>>> to repeat the search or
>>>
>>> ?
>>>
>>> to repeat it in the backwards direction.
>>
>> Or to save yourself a keypress (since those methods require a "Return"
>> after the "/" or "?") you can use "n" and "N" respectively.  Longtime
>> vi users will do this without even thinking about it.
> 
> Yup, you caught me.  :D
> 
> I don't think it's ever too soon to teach a user who has seen man pages
> how to get more out of them, and that includes the pager interface.
> It's frustrating because man(1), less(1), and man(7), formally
> considered, can all disclaim responsibility for communicating this
> knowledge.  less(1) can page all sorts of text files, not just man
> pages, and its own man page is huge and talks about all kinds of stuff.
> man(1) is also big, and that program definitely is not the pager.
> man(7) documents the macro package[1], which is a man page _writer's_
> interface, not primarily one for the reader.
> 
> I find myself wishing that intro(1) from the Linux man-pages project
> said more about this, either directly in that page or maybe in the
> man(7) they provide, with a conspicuous pointer there from the former.
>
> Maybe Michael or Alejandro can advise regarding where they think a good
> place for a man page utilization tutorial would be.

If any place, I think intro(1) would be most appropriate, or,
failing that, an initial sentence that points the reader at another
page (that could be added in man-pages). My guiding principle would
be that the guidance given should be simple (introductory and not
comprehensive), finishing with pointers to man(1) and/or less(1)
for further details.

The current intro(1) is an odd page though. Andries Brouwer made
some steps to turning into a general "intro to Linux" page, but that
was, to my mind, always going to be an impossibly huge scope. I'm
not a huge fan of what is there.

> I also wonder if the pager wars are basically over and less(1) won them.

That's certainly what I thought...

> I haven't heard anyone mention most(1) in a long time[2], and the, uh,
> simple elegance of more(1)'s inability to seek its stream (meaning: no
> backwards searching) seems to have driven many people to less(1) even if
> they have reservations about the length of its feature list.

I actually saw someone use more(1) the other day. I was surprised!
(Okay, that person had been around UNIX for a _long_ time...)

> [1] Michael Kerrisk can correct me, I hope, but as far as I know the
>     Linux man-pages man(7) page arose because, back in the '90s, the GNU
>     roff project refused to supply one, in keeping with the GNU "no
>     documentation at all if not Texinfo" philosophy--Susan G.  Kleinmann
>     of Debian had to write one, which I guess escaped the notice of the
>     (Red Hat-using?) man-pages maintainer(s) of the time.  By 1999, the
>     rigor of groff's fealty to that principle had slackened, and,
>     judging by groff's CVS-to-Git history, it looks like I can credit
>     Werner Lemberg with adopting and revising her work as groff_man(7).

man(7) predates my involvement in the project. It written by the first
maintainer, Rik Faith, and was part of the very first man-pages
release, back in 1993! I do not know the rationale for its creation.

Cheers,

Michael

> [2] a fate that seems to have inexorably claimed any project that
>     hitched its horses to S-Lang's wagon
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
