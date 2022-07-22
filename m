Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F117657E013
	for <lists+linux-man@lfdr.de>; Fri, 22 Jul 2022 12:35:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230308AbiGVKfg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 22 Jul 2022 06:35:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229671AbiGVKff (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 22 Jul 2022 06:35:35 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 010F55F70
        for <linux-man@vger.kernel.org>; Fri, 22 Jul 2022 03:35:34 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id p26-20020a1c545a000000b003a2fb7c1274so4916760wmi.1
        for <linux-man@vger.kernel.org>; Fri, 22 Jul 2022 03:35:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=3OoFsyH8agtpFX6oZjPYy5r8zN8iKSkinnp6hAsI+HE=;
        b=o/ApNV2ze5HJyAABHvslj1qzxWW96G9tDs7fWrFK4oqikfRkj4nnhp6LfV81gTMFuz
         wXqNEL7COLkHnQaOSHCHkCUizgFDo/y4VMuuipSx09awR5S46QLO6PhcU4k4Xih/lamR
         0FHh49nwxiKrHkxG0QImTe2w9Xoes5dQ60Y3cXHw+xoSZjnOCAGIqfmu8BiKrhrvoc9u
         i5ne6fNjxGtECgCxOe6o/uLFOcgwJFUJcUxJh5E91Az9BpmRYiiWDs6MQHEsx0aST6V4
         7mCnbLO/M9jS2iALEt7rwCXlohXG7K5hDwy8FIPI7SqIU7t5ZJrRi9eqTorhdCJt9NXb
         Sf4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=3OoFsyH8agtpFX6oZjPYy5r8zN8iKSkinnp6hAsI+HE=;
        b=e3qSpczKmLVygvD8XNS2bHhUmYB3PYj5IIwOPNa9NHl2mGMWDgqY2DkKXrCSBxVf62
         NlkyajgcUZpGxH0ECuhOtvHJRJzV5xxSK2jQqAA+OTIzfSTixKCLho+0eSOAbw3Gcb39
         QY5yr66dRi9wDdPRI9P24qFdde3A1cRl2q1/bfWze+uoDUvRbPue6KqU3rCywVfmVxd7
         cd6HvDQXSj/2TZWUF2B/Rm5PP/0xXatadzWKOOwrNFUpWp71RfTx7sjfH7a3S2g63JTU
         2w1tOke1RmPAkXd9+RCpdU5OCE+3JGLJ3/I5YnM00YntQmAV8rYHBeVbhWHGUQyDep+j
         In6w==
X-Gm-Message-State: AJIora/LjRGXGMMh7IRzryyPvbmo4Y9xsTCRYB311PgwBjJ5coXdJ11P
        IvDL5caVbJFrHcCbAP1Lwis=
X-Google-Smtp-Source: AGRyM1tYCZ+kWIeiAyYo0dSOE2ksP+dTEQZWYImf5i31/Z7Kc4Vnnk4/gfJrdU+eHDtObFqyrSP2Cw==
X-Received: by 2002:a1c:241:0:b0:3a3:142d:b65 with SMTP id 62-20020a1c0241000000b003a3142d0b65mr11697624wmc.171.1658486132352;
        Fri, 22 Jul 2022 03:35:32 -0700 (PDT)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id t21-20020a1c7715000000b003a331c6bffdsm4093576wmi.47.2022.07.22.03.35.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Jul 2022 03:35:31 -0700 (PDT)
Message-ID: <7a94b352-9ae5-a823-72c4-c526a0cc0e66@gmail.com>
Date:   Fri, 22 Jul 2022 12:35:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: All caps .TH page title
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>, groff <groff@gnu.org>
References: <66c19a09-ef0f-0d85-0380-37a67ac483dd@gmail.com>
 <20220721183620.hdvgwwef66hmrgln@illithid>
 <1e1f9197-a013-0d6b-6bfa-853fe28102cf@gmail.com>
 <20220722021452.5k43or5uwj2eiouh@illithid>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220722021452.5k43or5uwj2eiouh@illithid>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 7/22/22 04:14, G. Branden Robinson wrote:
>> At least, _Exit(2) and _exit(2) point to the same page.  nan(3) and
>> NAN(3) don't, though!
> 
> Pretty gross.  A useful counterexample of good practice, though.
> 
>> We can't blame the writers, since the identifiers have those names in
>> C.  Luckily, man(1) shows you the right page if you specify the right
>> string.
> 
> Yes, and at least they're closely related and from the same project.
> 
> This is the only man page I know of that documents only simple (i.e.,
> not function-like) C preprocessor macros.  You're more conversant with
> libc-ish man pages so you may know of others,

Actually, I don't.

At least not previous to my introduction of intN_t(3type), which 
documents things like INT8_WIDTH and INT8_MAX (although I didn't [yet] 
create link pages with those name).

> but this is the sort of
> content that, as a user, I would prefer to find in, say, a "math.h(3)"
> man page.  Having these constants in a page by themselves does little to
> situate them within the context of the C math library API.  But I know I
> have suggested this to you before.  ;-)

I remember.  And I didn't ignore the suggestion; I've been thinking 
about it several times.

There are various problems with documenting math.h(0) (section 0 was 
introduced for header files, but I don't know when, how, or why that 
happened; see the man-pages-posix repo for example.  Other projects 
(Oracle? I don't remember well) use a subsection 3head, though.

I think I don't like the idea of _only_ documenting macros in a header 
file doc.  That is likely to produce a huge page such as 
system_data_types(7) once was, or queue(3).  limits.h(0) is an exception 
in my head, since even though it's huge, all of them are related (all 
are limits), and it's easy to read.  limits.h(0) has the advantage that 
you can navigate the page to see the limit that best fits your need; I 
would counter argue that with the following for the general case: man(1) 
supports regex search, so if you just want to search for all limits, 
man(1) supports regex searching, so you could do `man -k -s3def _MAX` to 
serach for *_MAX limits in a hypothetical 3def (or 3macro?) subsection 
dedicated to macros.  See for example:

$ man -s3type -k int._t
int8_t (3type)       - fixed-width basic integer types
intN_t (3type)       - fixed-width basic integer types
uint8_t (3type)      - fixed-width basic integer types
uintN_t (3type)      - fixed-width basic integer types


> 
> I observe that the most popular simple macro of all, NULL, has no man
> page.

Oh, I had been thinking about it exactly yesterday, as I was wroking 
with the both loved and hated void(3type).

Maybe NULL(3something) starts a brand new subsection soon.  Do you have 
any preferences for the section name, since you mentioned it?  :-)


BTW, I think I didn't reply (or if I did was very short) to your comment 
that other languages may find it difficult to mirror our use of 
subsections, since their main section is already a subsection (e.g., 
3pl).  I'd say that since C is the native Unix language, and others are 
just... others?, I'd optimize for C, and let other languages find a way 
to document their things.  It would be easy to say just go away, the man 
pages are for C, but I won't dare to say that, since I like man pages, 
and I'd like to see more documentation for languages that I sometimes 
have to use be in the form of man pages, so I'll try to come up with a 
more imaginative answer:  how about using subsubsections of the form 
3pl_type?  At least it's a possibility.  man(1) would handle them as any 
other subsection, but that's not a big problem.  Maybe man(1) could 
develop a way to provide subsubsections...  Colin, any ideas in this regard?

> 
>> I feel a need to fix this lack of precision in the page titles.
>> Unless someone opposes to it with some strong reason, which I don't
>> expect.
> 
> You never know.  But keep in mind that a strong objection is not the
> same thing as a strong reason.

Yup.  I expect the former, but not the latter. ;)

> 
>> It'll take some time to do it, but if no-one speaks in a reasonable
>> time, I'll start doing it :).
> 
> We should all practice our scowling faces for anyone who dares to
> promulgate man pages named "lS", "prIntf", or similar.

Oh, I trust people is not so evil... I'll train the face just in case, 
though.


Cheers,

Alex

> 
> Regards,
> Branden

-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
