Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0B98844ECC9
	for <lists+linux-man@lfdr.de>; Fri, 12 Nov 2021 19:45:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235424AbhKLSsM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 12 Nov 2021 13:48:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229892AbhKLSsL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 12 Nov 2021 13:48:11 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D422C061766
        for <linux-man@vger.kernel.org>; Fri, 12 Nov 2021 10:45:20 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id i12so7673385wmq.4
        for <linux-man@vger.kernel.org>; Fri, 12 Nov 2021 10:45:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=3hjG1PKtC9nj4Fjxe9b6q0PMSy6Xi9B2yiUNYG8ljxQ=;
        b=g4pIRM4Mb1I0jakSlMzw5SDA26roTwglo8ORzgpYL+Ys+VTuOq5rYWkj6MEaJseGmO
         OXNh7fsmI9tfquae6KlR/YuouERgmfXtYqW1L7cSjzOePMPvL9d+2VhwHKtlRCe2CpvK
         UOWDVCNzUW8hijGkvuy3zE2nDFMSWU4eAG9rOSfRFqC4zfcij8rHie6O3UiA12aD7zU3
         Tjno02svR13SMpG4XNetrpBWrZPI9I+nlMgb1lq8A9Knae0QO4Pad47KichTzzSaO2pF
         +zC1m80AVxMsq3BGQhpL2wFC2U1iFB8SFMGozeRhl67E+ly9e/ICErPMmT+8McFkjR1G
         kuVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=3hjG1PKtC9nj4Fjxe9b6q0PMSy6Xi9B2yiUNYG8ljxQ=;
        b=e4eFAThFo5wV5IlTDMxcpNVgB22g6T1wnE6L/Fl/g/UAmqgi3WS92nWIo85wKD6UqH
         rzArecUEPEc5cYFqoWtB8aK5UO+yNIe/u0nUYlbVMWw4NgCP9JDf/t22AKjyVe4iQvW7
         X4F7pqCB+5fEjNVBwEeJKALoQpIzJ0z1YMDsxtZLTl7N8ln8wJh/z5N+7shzV6jF9AUs
         zwHw3//4/fof9ScrlFo8L1kTHV8IeQ3FGiN53kDGJlOs73JReVDKRZ5fADbcedwBZtz0
         dxPj1UEaqw2jqJR5pKZESzwpUQYFnT8du+yAytA57C77QPfUAKM5MetuYyUHIuJLs8SP
         8Mmw==
X-Gm-Message-State: AOAM530RCdlLsg0tR417xsPivCq2r/bJTCuJQuGPJQD8hmIF0cr4Nqld
        nN7YBrasFWfiLOILyss9DQ4=
X-Google-Smtp-Source: ABdhPJxhLp5RcHvBfj/cEaWoTimfgcfRQiVZwKprKX3R4pW43QR3jBYMj7zURQVhhOMqCIy+9Tn5lw==
X-Received: by 2002:a05:600c:4fcc:: with SMTP id o12mr37883034wmq.110.1636742718633;
        Fri, 12 Nov 2021 10:45:18 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id 9sm8712256wry.0.2021.11.12.10.45.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Nov 2021 10:45:18 -0800 (PST)
Message-ID: <d0f4c857-db51-8482-d658-69f6ac25c73b@gmail.com>
Date:   Fri, 12 Nov 2021 19:45:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Re: [PATCH v2] mctp.7: Add man page for Linux MCTP support
Content-Language: en-US
To:     Jeremy Kerr <jk@codeconstruct.com.au>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org
References: <20211111015323.3542313-1-jk@codeconstruct.com.au>
 <76dd85f7-ab8a-1dcc-5b1a-5eb9a87d23bc@gmail.com>
 <d6c9edca79f9aedd4dd9e07e46a4587153f35149.camel@codeconstruct.com.au>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <d6c9edca79f9aedd4dd9e07e46a4587153f35149.camel@codeconstruct.com.au>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jeremy,

On 11/12/21 02:12, Jeremy Kerr wrote:
> Hi Alex,
> 
> Thanks for the review! I've updated in line with most of your comments,
> and will send a v3 soon. However, I do have a couple of queries, mainly
> for my own understanding:

Sure.

> 
>>> +.SH SYNOPSIS
>>> +.nf
>>> +.B #include <sys/socket.h>
>>> +.B #include <linux/mctp.h>
>>
>> I prefer alphabetic sorting of includes.
> 
> OK, does that take priority over the convention to list the header(s)
> specific to this man page last?

I didn't even know there was such a convention, but if there is, yes, I 
explicitly want to override it.

Rationales:

<https://google.github.io/styleguide/cppguide.html#Include_What_You_Use>
<https://google.github.io/styleguide/cppguide.html#Names_and_Order_of_Includes>
<https://stackoverflow.com/a/2763292/6872717>
<https://stackoverflow.com/a/2762626/6872717>

Basically, alphabetic order avoids undeclared dependencies that can be 
hidden in some specific orderings which "just work but if you reorder 
them it breaks".  Of course, it can still hide some dependency, but it's 
more unlikely.  It's a "this can be random order, but let's use 
something more readable and consistent than random".

Unless for some exception that I can't remember now, Google's style 
guide applies to includes in the man-pages (or I intend it to be so).


> 
> In that case, we end up with:
> 
>      #include <linux/mctp.h>
>      #include <sys/socket.h> /* Definition of socket() & SOCK_DGRAM */

Since <sys/socket.h> provides the prototype socket(), it's 
<linux/mctp.h> that should specify why it's needed, so it should be

       #include <linux/mctp.h>  /* Definition of AF_MCTP */
       #include <sys/socket.h>

Also, please use at least 2 spaces between code and comments (unless the 
line goes close to the 78 column (right margin), in which case, reducing 
that space is the most readable thing to do).

Rationale:

<https://google.github.io/styleguide/cppguide.html#Horizontal_Whitespace>

That helps visually separate code from non-code.

> 
>>> +.PP
>>> +The API for MCTP messaging uses a standard sockets interface, using the
>>> +.BR sendto (2)
>>> +and
>>> +.BR recvfrom (2)
>>> +classes of system calls to transfer messages.
>>> +Messages may be fragmented into packets before transmission, and reassembled at
>>> +the remote endpoint.
>>
>> Break at the comma.
> 
> Just this comma? or all of them? There's a couple of sentences right
> before this one that would seem to have a similar style - if it's the
> former, for my own learning here: what makes this one different?

There are a few more that I missed, that's right:

[
 > +This is a connectionless protocol, typically used between devices 
within a
 > +server system.
 > +Message reliability and ordering are not guaranteed, but message 
boundaries are
 > +preserved.
]

Those should also be broken at the comma.  Rationale: semantic newlines 
(man-pages(7)).

In the case of the following one, although you could break at it if you 
want (maybe better for consistency), I won't enforce it too much, since 
it is a couple of words and the line is already broken in a non-semantic 
way due to the formatting.  So I don't care too much:

[
 > +The API for MCTP messaging uses a standard sockets interface, using the
 > +.BR sendto (2)
]

As Branden said, you can use "/[;:,]." and "/[!?.][^\\]" to check the 
correct use of semantic newlines.

> 
> [and you mean a line-break, right? or a break-point escape sequence?]

Yes, line break.

> 
>>> +Packets between a local and remote endpoint are identified by the source
>>
>> Break after "by" (or perhaps just before it).
> 
> Same as the above, why is this?

This is more or less for the same reasons as above, semantic newlines, 
but it goes a bit deeper.  Branden and I discussed a few months ago 
about my strong preference for semantic newlines not only in clause 
boundaries but also phrase boundaries.

man-pages(7) recommends breaking long lines at clause boundaries 
(commas, semicolons, and so on), but somethimes clauses (if you don't 
know the difference between phrases and clauses, which you don't need 
to, basically clauses are made up of phrases) are too long, and you can 
have a single clause that uses more than a single line.  In those cases, 
the most sensible place to break the line is at the next level: phrase 
boundaries.

"the source and destination EIDs" is a single phrase, so it's a bit 
weird to break the line in the middle of it.  I avoid breaking phrases, 
which makes reading the source code a bit more difficult.  Hopefully, it 
will also make diffs easier to read in the future.

> 
>>> +struct sockaddr_mctp {
>>> +    unsigned short     smctp_family;  /* = AF_MCTP */
>>> +    uint16_t           __smctp_pad0;  /* pad, must be zero */
>>> +    int                smctp_network; /* local network identifier */
>>> +    struct mctp_addr   smctp_addr;    /* EID */
>>> +    uint8_t            smctp_type;    /* message type byte */
>>> +    uint8_t            smctp_tag;     /* tag value, including TO flag */
>>> +    uint8_t            __smctp_pad1;  /* pad, must be zero */
>>
>> Do we want to tie the implementation to this pad?
> 
> Yes. The pad will be there anyway, due to the natural alignment of the
> struct. Since we want to be explicit about the padding (and require it
> to be zeroed), I would strongly suggest keeping it documented.

If there was padding in the middle of the struct, yes, it should 
definitely be documented in the man page.

> 
> There is an 'extended' MCTP addressing struct, which encapsulates a
> struct sockaddr_mctp. For us to be absolutely clear about the layout of
> that structure, the explicit pad here makes that unambiguous.

What I mean is, if in the future this structure will have additional 
trailing fields, documenting this padding is unnecessary, since that may 
vary.  Code should not rely on this structure having _only_ that 
padding.  And if code handles any arbitrary extra stuff in this 
structure, it will implicitly also handle that __smctp_pad1 field, so 
there's no need to mention it.

Example:

struct sockaddr_mctp {
     unsigned short     smctp_family;  /* = AF_MCTP */
     uint16_t           __smctp_pad0;  /* pad, must be zero */
     int                smctp_network; /* local network identifier */
     struct mctp_addr   smctp_addr;    /* EID */
     uint8_t            smctp_type;    /* message type byte */
     uint8_t            smctp_tag;     /* tag value, including TO flag */
     uint8_t            foo;           /* was __smctp_pad1 */
     uint8_t            bar;           /* extra stuff */
};

Here I got rid of the pad, and even added an extra field.  Code should 
be written to be compatible with this case, right?  If so, I don't see 
any reason to document that padding field, IMHO.

Also, we prevent some crazy programmers from relying on that padding 
byte being actually padding and not something else, even if it "must" be 
zero.  I've seen too much crazy stuff; programmers relying on undefined 
behavior just because "we don't plan to move from C++17 to C++20, so 
this is safe".

> 
> [unless, for man pages, we don't care about the ABI, only the API?]

We care about the ABI.  Especially, if it's about a type that we control.

In the case of ISO C or POSIX types, system_data_types(7) doesn't 
document Linux-specific details, for portability reasons, but that's an 
exception, not the rule.

> 
>> Future implementations of sockaddr_mctp are not going to use that
>> byte for anything else?
> 
> They might, hence requiring zero at present.

Okay, then code should be able to handle _any_ trailing fields, 
including that padding, so documenting it is irrelevant, I think.  We 
could say something like "trailing fields may be added to this 
structure", and that already implies the current padding byte, doesn't it?


Cheers,
Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
