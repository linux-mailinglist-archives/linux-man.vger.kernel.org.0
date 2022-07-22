Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 53B3B57E05E
	for <lists+linux-man@lfdr.de>; Fri, 22 Jul 2022 12:58:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235061AbiGVK57 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 22 Jul 2022 06:57:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35316 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234667AbiGVK56 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 22 Jul 2022 06:57:58 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCC2EBB5E0
        for <linux-man@vger.kernel.org>; Fri, 22 Jul 2022 03:57:56 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id f24-20020a1cc918000000b003a30178c022so4940161wmb.3
        for <linux-man@vger.kernel.org>; Fri, 22 Jul 2022 03:57:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=ZzsbO2mtr4oGzYYNtaN8e6KQjgZtdmxm4RDp/YvGQTM=;
        b=ckWMTNV5o4cxXvSvzz6jn09Elnq5tpOJxcju2S+Fu7a6gis1Cbw8cf+DEHKT7/ygKD
         mHnQb/g0ZUnu71j1W4gjhUAyMhZkRcCValjU1RV8hWnpuO2FVw3UfHB/b40Fkek5uEpV
         1s/4h6UST90vYXdLsbud3Xu/JuBVwQ/N46wHNFHXi4/txcate6D9ae3anYUIENtquDQw
         qiIVRTJUX1eqSrncPhLjrFuU9hZZrSqASw0acO9PuLRrQPi+vNp9sSUyiW6Sg7SJbfo5
         4T7WfKrwS+UkKeQrtq6PqjwmVkiwcKIDZAxsxKPlXdXuAfls3mE2P7ZTlZU0G3Ct8t18
         gArA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ZzsbO2mtr4oGzYYNtaN8e6KQjgZtdmxm4RDp/YvGQTM=;
        b=GOqnesSHhwNGmOrgb1eozH6kpubKYQi2zoIIhpfoUxz6lONktHAoxoE6Evkw44G/4u
         I1/59eFMeMznpjglPlyfUbUy+uEfaKPPuhFLz3SE/weXz6v4VFseTyrM2wtOnNjM0l0F
         fN7xrSN+p5YaLeMHLdTRgcOmLwHs8J/o3pV7xk6AnP/e0rfKnVPmHTw30fk4FxB25WMX
         AQO4hvxM118xe5CocnCLjAMc19Z0VQP394HZ3U2Iuy4cvNtXmfFLNmrLwLFxixfCL744
         Oqc2HYNr5dFUxBLvegjOY/l/JcU2/KDsm8MlD/nKpKY10+uaIsYer6HXXpHpQ3xNphwE
         d7Cg==
X-Gm-Message-State: AJIora/zwI5uH3rWqflqxpTmFO7CZ1lGPXQFnZTMlriI+rUoKqP5SJo3
        cVKXYjnm7xDsWQgD9TD3DY4EwksnSRk=
X-Google-Smtp-Source: AGRyM1vJfzmMfFy1JzE+22py5PWTv7GlyzE3W40f9up3FF3F8c1/c0Y2PZxUYygUFfUVSfxoGXe1sw==
X-Received: by 2002:a7b:c8da:0:b0:3a2:ffd2:8059 with SMTP id f26-20020a7bc8da000000b003a2ffd28059mr10648wml.169.1658487475042;
        Fri, 22 Jul 2022 03:57:55 -0700 (PDT)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id h8-20020a05600c28c800b003a02f957245sm8510322wmd.26.2022.07.22.03.57.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Jul 2022 03:57:54 -0700 (PDT)
Message-ID: <c59d4741-7d12-7845-5112-9f16f9467596@gmail.com>
Date:   Fri, 22 Jul 2022 12:57:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH 4/5] tm.3type: describe tm_zone, tm_gmtoff
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>,
        linux-man@vger.kernel.org
References: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <a8be8830890c50b1a36e9b7d20693c19c77ca4e5.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
 <90beebd3-2636-21d5-323b-766c8d81d6d3@gmail.com>
 <20220722033353.ap7aqxh6uhghdcxo@illithid>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220722033353.ap7aqxh6uhghdcxo@illithid>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

On 7/22/22 05:33, G. Branden Robinson wrote:
> Hi Alex,
> 
> At 2022-07-19T14:17:15+0200, Alejandro Colomar wrote:
>> Hi, наб and Branden!
> 
> I'm not exactly sure what you wanted me to comment on in this patch
> submission.
> 
> Keep in mind that I am a bear of little brain--please be clear what it
> is you're asking of me.  ;-)
> 
> I will assume that it is my *roff/man(7) expertise (such as it is) and
> will respond on that assumption.
> 
> I will also comment on English usage because I can't help myself.

You answered all that I thought you would, and even more.  As always, 
you surprise me with great knowledge that I didn't even know I could ask 
for, and that's the main reason I tend to not try to direct your 
answers.  They're always welcome (although sometimes the knowledge is 
too much for me, a novice groff(7) user, to understand it; but I try to).

Thanks!

> 
>>> diff --git a/man3/tm.3type b/man3/tm.3type
> 
> Oh, bother.  Bash autocompletion for "man" on my Debian bullseye is too
> dumb to recognize this new man page suffix.  I trust someone reading
> this is aware of the problem and is fixing it for the next Debian
> release.  (Has someone filed this as a bug with the Debian BTS?)

I don't think it's been reported.  I've detected some unpleasantness, 
but since I also had some unpleasantness with pages in the main 
sections, I didn't know if there was even more of it with subsections.

Was it trying to read a manual page from a relative path?  That's where 
I find a lot of problems, and that's why I always `sudo make install` 
the pages, then read them from the system as usual.  That makes it 
easier.  I improved the Makefile to make that loop experience something 
nice.

Anyway, would you mind reporting the bug you notice and CCing me?

> 
> Other distributions may have similar concerns.
> 
>>> index 1931d890d..8b6f8d9bf 100644
>>> --- a/man3/tm.3type
>>> +++ b/man3/tm.3type
>>> @@ -25,8 +25,26 @@ Standard C library
>>>    .BR "    int  tm_yday;" \
>>>    "   /* Day of the year  [" 0 ", " 365 "] (Jan/01 = " 0 ") */"
>>>    .BR "    int  tm_isdst;" "  /* Daylight savings flag */"
>>> +
>>> +.BR "    long tm_gmtoff;" " /* Seconds East of UTC */"
>>> +.BR "    char*tm_zone;" "   /* Timezone abbreviation */"
>>
>> Please add cosmetic whitespace (at least 1 for every member, possibly
>> 2, depending on your taste) :)
> 
> Hmmm.  I'm attaching a screenshot of Okular's rendering of the current
> state of tm(3type) in the Linux man-pages Git repository to PostScript.

I only see a black 180 bytes image.  Probably not what you expected to send?

Anyway, I used pdfman()[1] to read the page in PDF, and I get your point.


[1]: 
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/scripts/bash_aliases#n179>

      To use that bash_aliases file, I have the following in my 
.bash_aliases:

if [ -f ~/src/linux/man-pages/man-pages/scripts/bash_aliases ]; then
	. ~/src/linux/man-pages/man-pages/scripts/bash_aliases;
fi;

> 
> Recall the advice in groff's Texinfo manual.  This is from groff 1.22.4.
> 
> 5.1.6 Input Conventions
> -----------------------
> 
> [...]
>     * Do not try to do any formatting in a WYSIWYG manner (i.e., don't
>       try using spaces to get proper indentation).
> 
> Synopses in man pages, whether for section [168] commands or section
> [23] C function calls or data types, are not typically set in a
> monospaced typeface, nor do I think they should be.  A proportional
> typeface generally looks better.
> 
> The price of that improved appearance is that the use of sequences of
> spaces to get columnar alignment breaks as soon as there is variation in
> the content.

I know.  And I tend to agree that proportional typeface is nicer for 
SYNOPSIS.

> 
> The traditional solution to this problem in the *roff language is to set
> tab stops.  However, man-pages(7) calls out tab stop manipulation as
> unportable man(7) usage.
> 
>         *  Example programs should be laid out according  to  Kernighan
>            and  Ritchie style, with 4‐space indents.  (Avoid the use of
>            TAB characters in source code!)
> 
> Now, section 2 and 3 synopses are not _example program_ source code, so
> a defense of tab usage could be made here, but a man page author simply
> trying to get their stuff documented could be forgiven for feeling that
> drawing such a distinction is hair-splitting.
> 
> Using spaces is, however, in my opinion, worse simply due to the effect
> on rendered output for everything that isn't a terminal.

I'm generally a tab user, so you won't find resistance from me to use 
them, especially if they improve the situation.

> 
> There are a few ways to address this issue.
> 
> A. Don't worry about it and let HTML/PostScript/PDF output look ugly.

I'd prefer to help them if I can.

> 
> B. Stick synopses, at least for section 2 and 3 man pages, in EX/EE
>     blocks [...].  My recollection is that Michael Kerrisk opposed this
>     practice.  I too don't think it's a great idea; the average glyph
>     width is lower in proportional fonts, so using it, you can fit more
>     content on an output line.

It would be an easy fix, if nothing else works nicely.  We can restrict 
it to type pages, where there is an objective reason to do that, and let 
function pages continue using proportinal typeface.

> 
> C. Use tabs anyway.  For results that will actually get what you want,
>     you will need to set the tab stops to ensure they're wide enough to
>     achieve the desired alignment.  The use of custom tab stops requires
>     invoking the `ta` request, and this is warned against in the
>     "Portability" section of groff_man(7) (to be part of
>     groff_man_style(7) in groff 1.23).  But by invoking the `nf` and `fi`
>     requests for other reasons, this project's pages have already crossed
>     that bridge.

That will be my first attempt.  But I won't try setting the width, since 
you've shown in the below explanations how brittle and difficult it is. 
  So, if the defaults work nicely (maybe using double tabs at some 
places), I'll use tabs.  Otherwise, I'm probably going to fallback to 
.EX/.EE.  What's your opinion on this?  Or do you prefer going directly 
to .EX/.EE for 3type/2type pages?

> 
> C1. Actually selecting values for the tab stops can be tedious.  You can
[...]
> 
> C2. Clever roff writers (sometimes too clever) reach for the \w escape
[...]
>      .ta \w'char*' \w'tm_gmtoff'
Not a nice thing.
[...]
> 
>      .TA char gmtoff
> 
>      This certainly looks much cleaner, and in fact it closely resembles
>      Texinfo's @multitable command.  But it is just a mask over the
>      `ta` request of frightening appearance above, not a silver bullet.

May be nice.

> 
> C3. The above has the problem that it relies upon the writer to know
>      which pieces of text between the tab stops are the longest.  This
>      sounds like an obvious thing that no one would ever screw up.
>      I think that assumption would be swiftly overturned.

Maybe you can set up .TA so that it takes the longest of a set of 
consecutive .TA?  That's already kind of tbl(1).  Maybe we should use 
tbl(1) for that :P.

Would you recommend me using tbl(1), or .EX, or tabs (in the simple way)?
[...]
> 
> D. Congratulations, you've discovered tbl(1).[1]

So it seems.

> 
> I guess my advice is to choose your poison.  I'll advise as best I can.
> 
I'll try a few things.


>> I tend to prefer the em dash to be next to (no whitespace) the
>> enclosed clause.  That makes it easier to mentally associate (as in a
>> set of parentheses) to the clause.  I'm not sure if it's a thing of
>> mine, or if it's standard practise?
> 
> "Spacing around an em dash varies. Most newspapers insert a space before
> and after the dash, and many popular magazines do the same, but most
> books and journals omit spacing, closing whatever comes before and after
> the em dash right up next to it. This website prefers the latter, its
> style requiring the closely held em dash in running text."
> 
> https://www.merriam-webster.com/words-at-play/em-dash-en-dash-how-to-use
> 
> In the groff man pages, I too "close up" any space around em dashes, but
> I freely admit that this (1) doesn't look all that great in terminal
> rendering [it too closely resembles other dashes--a "fullwidth" dash
> taking two character cells would be preferable on purely esthetic
> grounds, and probably a nightmare to get terminal emulators to cope
> with] and (2) it frustrates my input style; since I don't want to use
> the `\c` escape sequence, I end up putting the words immediately outside
> the em-dashed aside on the "wrong" lines semantically.  Maybe I should
> just get over my allergy to `\c` now that I understand how it
> works.[citation needed]

So no single-sided space for em dashes --such as this one--, right? 
Maybe that's a construction of my brain, trying to make them a bit more 
logic...


Cheers,

Alex

> 
>> What is "&a."?  Is that documented somewhere?  I didn't know that
>> abbreviature.
> 
> Having seen наб's reply, it seems of a piece with "&c.", which was
> in English formerly (ca. 150 years ago) a common abbreviation for the
> Latin "et cetera".  Nowadays "etc." has fully supplanted "&c." while
> many native English speakers are shaky on what, exactly, it abbreviates,
> even spelling it "ect." because that better aligns with English language
> phonotactics.
> 
> I admit never having seen "&a." before in English writing.  Like
> Germans' use of "resp.", it may be a thing non-native speakers assume
> "ports" into English, but doesn't.
> 
> Regards,
> Branden
> 
> [1] https://git.savannah.gnu.org/cgit/groff.git/tree/src/preproc/tbl/tbl.1.man

-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
