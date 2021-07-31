Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 542653DC59C
	for <lists+linux-man@lfdr.de>; Sat, 31 Jul 2021 12:51:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232263AbhGaKvl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 31 Jul 2021 06:51:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58380 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232182AbhGaKvl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 31 Jul 2021 06:51:41 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B029BC06175F;
        Sat, 31 Jul 2021 03:51:34 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id o7-20020a05600c5107b0290257f956e02dso4349232wms.1;
        Sat, 31 Jul 2021 03:51:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=3MbPGGFdc87JQ1GGBZR/+XaGAcjWM2QvN+yXxpzVnXM=;
        b=uawVsHRrS+KLo4QAmbzJ420yZ44XyEr0r48bq9LyW6sWccOPUCS3RsnoB9rl8XCTVp
         jRhiVpUBDMcxf5DDQrJ5KFn16tbY1WrNuSOUgPFBifEqi/uGz/N8G/E+sDkZ2ltkAy7o
         YgE+nByORvBhXfLmF+MPL0RY5JZpv1MK+n/Sa2hyXrJGhoENJi3hRY0LPt777PK0UTlX
         T7wDkJecRMY13UrfvblKqkO+C/FeCdIaHeYHN7UjKTFiQNohhdxLHOnNM0Ny7pBYix6/
         2TfGPtWrUi4Y+m7ZvyGKVwg5BO4Xn4n/9e1/o6fynIh7J/nXR7+yqXZR1JUL/kw7jtfR
         Yong==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=3MbPGGFdc87JQ1GGBZR/+XaGAcjWM2QvN+yXxpzVnXM=;
        b=CLeMyzBI1TounmTk5UQVamWHEkEUj5WDuUsUc51DYfHC0rjK85l/s1qiFax9cw1vua
         m+thheFweJikJ8p8ZPtZvWoNNjVw/yTJ4hMZpr8XYk1k6aqO4bIcovn+YD5JhxVcw5uO
         lshP4LV9AaPUG08h4wEDc7j6fEl9KBmR8bEo5u4MjE1A3osBBPX6tzqeWQxBhXLfXB81
         7NQZMibGQ9Vzid/G6nZqW8qNhyYu9cyh+7nHVKk+sIuDHERy/ilJyLVtURWw8VX2ORID
         oYCPRu4nVIXdpAvrZTUD9cfbDBkpyXE8AtD6TGufsQIKbppvoG+WqraB16O81Br9fqi4
         Zq+g==
X-Gm-Message-State: AOAM532Vn5WLoHoxRmLL9ZymVag8JrbBB1mYwpxOZGloefnFzGBXezpF
        l32Nkdood20NwMGr5otu+g0=
X-Google-Smtp-Source: ABdhPJxemSUnxWWL0NEQXB6tuSxMeBE9xH+LXo9DK7/dOEMpxPDsskyXxIyACr8AE4U/r9FdvuGvZQ==
X-Received: by 2002:a1c:3b07:: with SMTP id i7mr7806552wma.7.1627728693227;
        Sat, 31 Jul 2021 03:51:33 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id p22sm4300563wma.10.2021.07.31.03.51.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Jul 2021 03:51:32 -0700 (PDT)
Subject: Re: [PATCH v2 1/4] landlock.7: Add a new page to introduce Landlock
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
Cc:     Jann Horn <jannh@google.com>, Jonathan Corbet <corbet@lwn.net>,
        Kees Cook <keescook@chromium.org>,
        Randy Dunlap <rdunlap@infradead.org>,
        Vincent Dagonneau <vincent.dagonneau@ssi.gouv.fr>,
        landlock@lists.linux.dev, linux-kernel@vger.kernel.org,
        linux-man@vger.kernel.org, linux-security-module@vger.kernel.org,
        =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@linux.microsoft.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
References: <20210712155745.831580-1-mic@digikod.net>
 <20210712155745.831580-2-mic@digikod.net>
 <3f1b943b-2477-2c4e-c835-d6616888176c@gmail.com>
 <c5036c5c-37a1-57d2-e5dc-1f41a5ed0d31@digikod.net>
 <20210730233931.lbtq67esmeuo4o6d@localhost.localdomain>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <e88fe0d9-1330-3de4-53e1-4b72360ce7d3@gmail.com>
Date:   Sat, 31 Jul 2021 12:51:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210730233931.lbtq67esmeuo4o6d@localhost.localdomain>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden, Mickaël,

On 7/31/21 1:39 AM, G. Branden Robinson wrote:
> Hi, Mickaël!
> 
> I'm going to rearrange your message to reply to it to put the shortest
> point first, as I am nervous of people tiring of my info dumps,
> especially with such an efflorescent CC list.
> 
> At 2021-07-30T14:15:48+0200, Mickaël Salaün wrote:
>>>> +The rule will only allow reading the file hierarchy
>>>> +.IR /usr .
>>
>> Why ".IR" is correct here?
> 
> Because you don't want a space or a line break in the output between
> "/usr" and the period.
> 
> Line breaks in *roff input usually mean "insert a word break here".[1]
> 
> [the long version]
>> When do we really need .IR? Isn't `.I "foo bar"` the same as `.IR foo
>> bar`? What do you use roman for?
>>
>> Where can we find these preferences? The best I found was
>> https://www.man7.org/linux/man-pages/man7/groff_man.7.html but it
>> doesn't explain what to use. The current man pages seems to use both
>> interchangeably.
> 
> This is a good news/bad news situation for me.  As the maintainer of
> that man page, I'm delighted to hear that you found it the best resource
> of its type.  But that you came away still not knowing when or why to
> use .IR tells me I still have work to do.
> 
> One of the things I did after the groff 1.22.4 release (December 2018)
> was to split groff_man(7) into two pages.  The one you've linked is the
> terser reference for seasoned (perhaps salty) man page writers.  Near
> the top of it you'll find this.
> 
>         This document presents the macros thematically; for those needing
>         only a quick reference, the following table lists them
>         alphabetically, with cross-references to appropriate subsections
>         below.
> 
>         Man page authors and maintainers who are not already experienced
>         groff users should consult groff_man_style(7), an expanded
>         version of this document, for additional explanations and advice.
>         It covers only those concepts required for man page document
>         maintenance, and not the full breadth of the groff typesetting
>         system.

Hmmmm, I can't find that text on my Debian Sid (with a bit of 
experimental) groff_man(7).  Not even in the SEE ALSO.


SEE ALSO
        Groff:  The GNU Implementation of troff, by Trent A. Fisher
        and Werner Lemberg, is the main groff  documentation.   You
        can browse it interactively with “info groff”.

        tbl(1),  eqn(1),  and  refer(1) are preprocessors used with
        man pages.

        man(1) describes the man page formatter on your system.

        groff_mdoc(7) describes the groff version of the BSD‐origi‐
        nated alternative macro package for man pages.

        groff(7), groff_char(7), man(7)

groff 1.22.4              27 January 2021             GROFF_MAN(7)

> 
> There, at <https://www.man7.org/linux/man-pages/man7/groff_man.7.html>,
> I'd direct you to the following.
> 
>     Font style macros
>         The man macro package is limited in its font styling options,
>         offering only bold (.B), italic (.I), and roman.  Italic text is
>         usually set underscored instead on terminal devices.  The .SM and
>         .SB macros set text in roman or bold, respectively, at a smaller
>         point size; these differ visually from regular-sized roman or
>         bold text only on typesetter devices.  It is often necessary to
>         set text in different styles without intervening space.  The
>         macros .BI, .BR, .IB, .IR, .RB, and .RI, where “B”, “I”, and “R”
>         indicate bold, italic, and roman, respectively, set their odd-
>         and even-numbered arguments in alternating styles, with no space
>         separating them.
> [...]
>         .I [text]
>                Set text in italics.  If the macro is given no arguments,
>                the text of the next input line is set in italics.
> 
>                Use italics for file and path names, for environment
>                variables, for enumeration or preprocessor constants in C,
>                for variable (user-determined) portions of syntax
>                synopses, for the first occurrence (only) of a technical
>                concept being introduced, for names of works of software
>                (including commands and functions, but excluding names of
>                operating systems or their kernels), and anywhere a
>                parameter requiring replacement by the user is
>                encountered.  An exception involves variable text in a
>                context that is already marked up in italics, such as file
>                or path names with variable components; in such cases,
>                follow the convention of mathematical typography: set the
>                file or path name in italics as usual but use roman for
>                the variable part (see .IR and .RI below), and italics
>                again in running roman text when referring to the variable
>                material.

Re-reading this, we've been doing it wrong (as you pointed out in 
another thread) with macro names with variable part.

I wasn't very convinced by the current usage of the man pages, but it 
was already current, so I just followed it :/

I'll try to follow this from now.

> [...]
>         Note what is not prescribed for setting in bold or italics above:
>         elements of “synopsis language” such as ellipses and brackets
>         around options; proper names and adjectives; titles of anything
>         other than works of literature or software; identifiers for
>         standards documents or technical reports such as CSTR #54,
>         RFC 1918, Unicode 13.0, or POSIX.1-2017; acronyms; and
>         occurrences after the first of a technical term or piece of
>         jargon.  Again, the names of operating systems and their kernels
>         are, by practically universal convention, set in roman.
> 
>         Be frugal with italics for emphasis, and particularly with bold.
>         Brief runs of literal text, such as references to individual
>         characters or short strings, including section and subsection
>         headings of man pages, are suitable objects for quotation; see
>         the \(lq, \(rq, \(oq, and \(cq escapes in subsection
>         “Portability” below.
> 
>         Unlike the above font style macros, the font style alternation
>         macros below accept only arguments on the same line as the macro
>         call.  Italic corrections are applied as appropriate.  If space
>         is required within one of the arguments, first consider whether
>         the same result could be achieved with as much clarity by using
>         the single-style macros on separate input lines.  When it cannot,
>         double-quote an argument containing embedded space characters.
>         Setting all three different styles within a word presents
>         challenges; it is possible with the \c and/or \f escapes, but see
>         subsection “Portability” below for caveats.

Ahh, I missed this text, as it was neither under .I nor .IR, and only 
had a fast read of the page.
The 3rd paragraph hints that you should only use .IR when really needed, 
and use .I otherwise.  But someone new to man-pages, who probably did 
never read this page (or read some specific paragraphs of it when 
needed), and found the extensive (and somewhat incorrect) usage of .IR 
in place of .I in the current man pages, might be confused by all of 
that inconsistency and hard-to-find (except by those who already know 
where it is (reference to Pirates of the Caribbean intended :) )) 
information.

> [...]
>         .IR italic-text roman-text ...
>                Set each argument in italics and roman, alternately.
> 
>                       This is the first command of the
>                       .IR prologue .
> 
> I'd appreciate feedback from anyone on how I can improve the above.

I think it's great.  But unless one reads the page with some time (and 
not only the bullets), one might think that the man page is incomplete. 
  Maybe groff_man_style(7) is better suited for newbies, but I can't 
tell...  I couldn't find it.

> 
>>>> +upper layer.
>>>> +From a Landlock policy point of view,
>>>> +each OverlayFS layers and merge hierarchies are standalone and contains
>>>> +their own set of files and directories,
>>>> +which is different from bind mounts.
>>>
>>>
>>> Incorrect mix of singular and plural, I think.
>>
>> Is it OK with s/contains/contain/?
> 
> That's correct, but you also need s/their/its/.

I'm not sure, but maybe (I always get confused by these things)?:

[
each _of the_ OverlayFS layers and merge hierarchies _is_ standalone and 
_contains_
_its_ own set of files and directories,
which is different from bind mounts.
]

And still I'm not sure about the last "mounts".


Without s/each/each of the/ we still have layers and hierarchies 
(plurals), which don't mix well with each (singular).


Regards,

Alex

> 
> A handy technique for resolving inflection/agreement problems in English
> is to drop phrases from the sentence in a way that preserves its
> structure; this usually makes clear what should be done.
> 
> In this case, "... Each ... contains its own set."
> 
> Native speakers screw this up even in simpler cases; e.g.,
> 
>    *"The spaces in between leave room for you and I to grow."
> 
> We get thrown by the conjunction "and", which makes the language organ
> in our brain think of plural number.  But no native speaker ever commits
> the error
> 
>    *"Will you buy a hamburger for I?"
> 
> unless for deliberate effect.  (Though there is probably some hamlet in
> the West Midlands of England or something where this is standard. :-| )
> 
> Regards,
> Branden
> 
> [1] "Usually."  In roff terms, this generalization applies to text lines
>      (not control lines; that is, lines starting with a control
>      character) that do not end with the output line continuation escape
>      sequence, '\c'.
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
