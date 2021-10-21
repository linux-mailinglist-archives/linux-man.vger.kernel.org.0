Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7B37F435D80
	for <lists+linux-man@lfdr.de>; Thu, 21 Oct 2021 11:01:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231133AbhJUJD7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 21 Oct 2021 05:03:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230440AbhJUJD7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 21 Oct 2021 05:03:59 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6418CC06161C
        for <linux-man@vger.kernel.org>; Thu, 21 Oct 2021 02:01:43 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id 193-20020a1c01ca000000b00327775075f7so469046wmb.5
        for <linux-man@vger.kernel.org>; Thu, 21 Oct 2021 02:01:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=3T60CjmHo1m24vKnHZMymKyqg45ZAYxRshH7A4JO5WQ=;
        b=eKY4xnkj9W9K2kBoPeoPlDIB4SWZoYXcaJzLPZgXxVTTLD3UYncGvcLrELsxQtLM82
         5nmozGDGcu15xIzryzndJJ7j1NcNHEsa+8gwzcZX5VN3X2zQCP5YKjlkHbL15sJXnozm
         z8PGqbXjlPVwKqOmPWh7ETgsIXdlqgv2GfVliCzOWawJ2j3VnLuUikLYfppD5jtGR4yB
         Sw8I65H0CRpx+0SS77WMxRuOyPdmfMqiyJU1x8jWnkrZTNMhWR8vPhJhaIlHSFlVZRvp
         3Q2obVI6wcqXxj/85X7v/6BYHwD2CBBqwEAjakGA6wQ1mxaoM3zeuIxxyI2qJHFkyN3v
         C61Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=3T60CjmHo1m24vKnHZMymKyqg45ZAYxRshH7A4JO5WQ=;
        b=r2zlzxEjNpvy7LMG8BVmj6im4nJxGiGFtZq0tUbh66lIfJXPDjw+zfJsY/7oGAFG8c
         VOMuEbBz18SHDRnGnHmGM1hsFPCq19/aQ6KDL1KNJzJ22G79jjpM/YSp2lsup5kEWVJu
         m+TXtOXpUeYU4mBKsK5Wztj4Y2tYKwi6Fl4sPh/mSDS6jTAt0h04xXeUvSSdlLRBUdfQ
         aCJzScbpGgDUt9xrA+1nI8zQen6vV9O7MiTsvGHHLBbVaQd3GSqmIMoS9skegYIMHdOg
         8xtxNoIcvL6USj0wArDLFMNAlZOF9/NIwMD8LlkcpquRSAoiHQ/ezmskdBnltdZk68KC
         Rwrw==
X-Gm-Message-State: AOAM530Bhgrhpn0qMD04BXPUrOpq9NW/F9UmC5Gjfi2M8cTmMO31zuje
        1GtgYWUR+rhp/AAi50+/z2o=
X-Google-Smtp-Source: ABdhPJynNHj4dSYdFsazfZo9WHBU5TnxdKpsGPp9qv7Ai9k92347e0z0h8yX3lmG00sLTtGojJessw==
X-Received: by 2002:a1c:ac03:: with SMTP id v3mr5222814wme.127.1634806900097;
        Thu, 21 Oct 2021 02:01:40 -0700 (PDT)
Received: from [10.8.0.138] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id l124sm7817848wml.8.2021.10.21.02.01.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Oct 2021 02:01:39 -0700 (PDT)
Subject: Re: AW: [PATCH 2/2] ctime.3, strftime.3, strptime.3, timegm.3: Add
 [[gnu::nonnull]] to <time.h> prototypes
To:     Walter Harms <wharms@bfs.de>, Jens Gustedt <jens.gustedt@loria.fr>
Cc:     "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        Glibc <libc-alpha@sourceware.org>
References: <20211020202241.171180-1-alx.manpages@gmail.com>
 <20211020202241.171180-2-alx.manpages@gmail.com>
 <e42cc9f415ea4b069dd5cfdee04e3e87@bfs.de>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <35ae1737-f167-e611-c5e0-26ed3e54618a@gmail.com>
Date:   Thu, 21 Oct 2021 11:01:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <e42cc9f415ea4b069dd5cfdee04e3e87@bfs.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hey Walter! and Jens!

On 10/21/21 10:13 AM, Walter Harms wrote:
> Hi thx,
> for the information, i was not aware of changes for the time interface
> and i do a lot of programming with them.

Apparently, those changes finally did not make it into the standard (as 
Jens pointed out to me).  The reason was C++-compatibility.

> 
> 
> Since you ask for it:
> I do not like the [[gnu::nonnull]] as shown below.
> The position triggers the wrong assoziation for me.
> Things in front of a function are used to describe a return values.

I just checked the valid syntax accepted by the standard:

[
6.7    Declarations
[...]
Semantics
[...]
9  Except where specified otherwise, the meaning of an attribute 
declaration is implementation-defined.

10 EXAMPLE	In the declaration for an entity, attributes appertaining to 
that entity may appear at the start of the declarationand after the 
identifier for that declaration.

	[[deprecated]] void f [[deprecated]] (void); // valid

Forward references: declarators (6.7.6), enumeration specifiers 
(6.7.2.2), initialization (6.7.9), typenames (6.7.7), type qualifiers 
(6.7.3).
]

So we could put it in any of those 2 positions.  Is there any reason 
that one is better (more readable / less ambiguous) than the other?  We 
should decide very carefully which one to use.

BTW, this example reminds me of the deprecated functions, for which I'm 
going to add [[deprecated]] to clearly mark those.  That's something 
that had been itching me for a long time :).

> 
> To be fair the array solution is not great either.
> 
> my idea would to add a comment like
> char *asctime(const struct tm *" tm  /* not null */);

I think the C language is more universal than comments.  If we can use 
standard features of the language (or even GNU extensions, like in this 
case), that will be readable across anyone that understands C or GNU C. 
  Comments are very personal, and do not have a universal meaning, and 
that's why I try to avoid them in the man-pages SYNOPSIS as much as I 
can.  Apart from that, a comment after each parameter would be much more 
noisy than a single [[gnu::nonnull]].

> 
> What is happening inside time.h is something different.

I guess you mean in the implementation side, right?  time/mktime.c for 
example.

> 
> If you thing the compiler should check for not null
> he needs a hint.
> 
> IMHO it is the responsibility of the programmer
> to make sure that the propper arguments are provided.

Sure, and that's exactly the reason to add these attributes to the 
prototype.  To tell the programmer that NULL is *not* a proper argument. 
  I don't consider these attributes as optimization opportunities for 
the compiler (which they are, BTW), but mainly as documentation for the 
user of the API.  Since the man-pages are one of the most used 
documentation sources for C functions, I think documenting these 
attributes makes a lot of sense.

But yes, we should think very carefully the position in which we should 
put them; especially since many programmers will not read the standard, 
and instead just imitate what they see in the manual pages, so we better 
use the least ambiguous syntax possible.

Jens, since IIRC it was you who added attributes to C2X, could you 
please help us deciding between the two options?

Thanks!

Alex

> 
> re,
>   wh
> 
> ________________________________________
> Von: Alejandro Colomar <alx.manpages@gmail.com>
> Gesendet: Mittwoch, 20. Oktober 2021 22:22:41
> An: mtk.manpages@gmail.com
> Cc: Alejandro Colomar; linux-man@vger.kernel.org; Jens Gustedt; Glibc
> Betreff: [PATCH 2/2] ctime.3, strftime.3, strptime.3, timegm.3: Add [[gnu::nonnull]] to <time.h> prototypes
> 
> WARNUNG: Diese E-Mail kam von außerhalb der Organisation. Klicken Sie nicht auf Links oder öffnen Sie keine Anhänge, es sei denn, Sie kennen den/die Absender*in und wissen, dass der Inhalt sicher ist.
> 
> 
> C2X changes the prototypes of <time.h> functions that accept a
> pointer that cannot be NULL, to use 'static', which clearly
> denotes that passing NULL is Undefined Behavior.
> 
> For example, 'time_t mktime(struct tm tm[static 1]);'.
> 
> This change is backwards compatible, since array notation is just
> syntactic sugar for pointers, and the Undefined Behavior in case
> of a pointer already existed (in the wording); it just wasn't
> clear from the prototype itself.
> 
> However, that forces the use of VLA (array) notation for something
> that is *not* an array.  It is cofusing, probably too much for
> some programmers not so familiar with the difference between an
> array and a pointer, and that happens more than we would like.
> Even for programmers that clearly know the difference between an
> array and a pointer, this is at least misleading.
> 
> That happens because the standard lacks a 'nonnull' attribute, and
> only has that (VLA) way of expressing what GCC can express with
> '[[gnu::nonnull]]' (a.k.a. '__attribute__((__nonnull__))').
> 
> Expressing that NULL pointers shall invoke Undefined Behavior in
> the prototype of a function is *way* more readable than having to
> read through the whole manual page text, so ideally we should also
> follow the standard idea of expressing that.  But we can make use
> of more advanced techniques such as the GCC attribute, which help
> keep the information that those pointers are actually pointers and
> not arrays.
> 
>  From the 2 different attribute notations, let's use the "C++" one,
> which will be part of the standard in C2X (unlike __attribute__),
> and is also shorter, which helps keep the SYNOPSIS short (mostly
> one-liner prototypes).
> 
> See <http://www.open-std.org/JTC1/SC22/WG14/www/docs/n2417.pdf>
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> Cc: Jens Gustedt <jens.gustedt@loria.fr>
> Cc: Glibc <libc-alpha@sourceware.org>
> ---
>   man3/ctime.3    | 26 +++++++++++++-------------
>   man3/strftime.3 |  1 +
>   man3/strptime.3 |  1 +
>   man3/timegm.3   |  4 ++--
>   4 files changed, 17 insertions(+), 15 deletions(-)
> 
> diff --git a/man3/ctime.3 b/man3/ctime.3
> index 0620741e9..42021a588 100644
> --- a/man3/ctime.3
> +++ b/man3/ctime.3
> @@ -40,23 +40,23 @@ localtime_r \- transform date and time to broken-down time or ASCII
>   .nf
>   .B #include <time.h>
>   .PP
> -.BI "char *asctime(const struct tm *" tm );
> -.BI "char *asctime_r(const struct tm *restrict " tm ,
> -.BI "                    char " buf "[static restrict 26]);"
> +.BI "[[gnu::nonnull]] char *asctime(const struct tm *" tm );
> +.BI "[[gnu::nonnull]] char *asctime_r(const struct tm *restrict " tm ,
> +.BI "                                     char " buf "[static restrict 26]);"
>   .PP
> -.BI "char *ctime(const time_t *" timep );
> -.BI "char *ctime_r(const time_t *restrict " timep ,
> -.BI "                    char " buf "[static restrict 26]);"
> +.BI "[[gnu::nonnull]] char *ctime(const time_t *" timep );
> +.BI "[[gnu::nonnull]] char *ctime_r(const time_t *restrict " timep ,
> +.BI "                                     char " buf "[static restrict 26]);"
>   .PP
> -.BI "struct tm *gmtime(const time_t *" timep );
> -.BI "struct tm *gmtime_r(const time_t *restrict " timep ,
> -.BI "                    struct tm *restrict " result );
> +.BI "[[gnu::nonnull]] struct tm *gmtime(const time_t *" timep );
> +.BI "[[gnu::nonnull]] struct tm *gmtime_r(const time_t *restrict " timep ,
> +.BI "                                     struct tm *restrict " result );
>   .PP
> -.BI "struct tm *localtime(const time_t *" timep );
> -.BI "struct tm *localtime_r(const time_t *restrict " timep ,
> -.BI "                    struct tm *restrict " result );
> +.BI "[[gnu::nonnull]] struct tm *localtime(const time_t *" timep );
> +.BI "[[gnu::nonnull]] struct tm *localtime_r(const time_t *restrict " timep ,
> +.BI "                                     struct tm *restrict " result );
>   .PP
> -.BI "time_t mktime(struct tm *" tm );
> +.BI "[[gnu::nonnull]] time_t mktime(struct tm *" tm );
>   .fi
>   .PP
>   .RS -4
> diff --git a/man3/strftime.3 b/man3/strftime.3
> index a24ea720b..715b30edb 100644
> --- a/man3/strftime.3
> +++ b/man3/strftime.3
> @@ -41,6 +41,7 @@ strftime \- format date and time
>   .nf
>   .B #include <time.h>
>   .PP
> +.B [[gnu::nonnull]]
>   .BI "size_t strftime(char *restrict " s ", size_t " max ,
>   .BI "                const char *restrict " format ,
>   .BI "                const struct tm *restrict " tm );
> diff --git a/man3/strptime.3 b/man3/strptime.3
> index d6595d4bf..c1b334d87 100644
> --- a/man3/strptime.3
> +++ b/man3/strptime.3
> @@ -36,6 +36,7 @@ strptime \- convert a string representation of time to a time tm structure
>   .BR "#define _XOPEN_SOURCE" "       /* See feature_test_macros(7) */"
>   .B #include <time.h>
>   .PP
> +.B [[gnu::nonnull]]
>   .BI "char *strptime(const char *restrict " s ", const char *restrict " format ,
>   .BI "               struct tm *restrict " tm );
>   .fi
> diff --git a/man3/timegm.3 b/man3/timegm.3
> index b848e83e1..18b6e4847 100644
> --- a/man3/timegm.3
> +++ b/man3/timegm.3
> @@ -29,8 +29,8 @@ timegm, timelocal \- inverses of gmtime and localtime
>   .nf
>   .B #include <time.h>
>   .PP
> -.BI "time_t timelocal(struct tm *" tm );
> -.BI "time_t timegm(struct tm *" tm );
> +.BI "[[gnu::nonnull]] time_t timelocal(struct tm *" tm );
> +.BI "[[gnu::nonnull]] time_t timegm(struct tm *" tm );
>   .PP
>   .fi
>   .RS -4
> --
> 2.33.0
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
