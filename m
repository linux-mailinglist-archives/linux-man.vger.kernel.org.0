Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5CBEA4E1E11
	for <lists+linux-man@lfdr.de>; Sun, 20 Mar 2022 22:55:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244578AbiCTV5R (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 20 Mar 2022 17:57:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343771AbiCTV5R (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 20 Mar 2022 17:57:17 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13A1852E32
        for <linux-man@vger.kernel.org>; Sun, 20 Mar 2022 14:55:52 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id d7so18452002wrb.7
        for <linux-man@vger.kernel.org>; Sun, 20 Mar 2022 14:55:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=AkEXIpwei2tOXYt21lV3NR8v751DulgZOYbuFtUZyVI=;
        b=Q67ZJLJRZzNRhQi7RJG2vSgwiOC0CVHEW9jFgODpBVm2ujtILVQ742IskiqvMs46rt
         Ar16K/otQmrP8viQ+AaTH1TLwWydqpcig5rn4wq6Xxq7+eU2+AwXl0RnXyan4CgadKO2
         ZgLJdoWQC8i35Tnv9eNcplKWItI4higv2+iI2hqBIeBVoZcao4DyYIB4HjioS7GX76v8
         Vi6OZk+w7/ITJvMMEtoVjsDj23ak9KfhsBLqX8Pm+sfsrxmatpTNGWIKwuEFG9HI8kYy
         +7cQD/zTIc51CuHxWw13RLtKxdP7CrDdit5ZzGNdxszXGkpx5A7yrsGzzLiOW/NhmlG0
         o9HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=AkEXIpwei2tOXYt21lV3NR8v751DulgZOYbuFtUZyVI=;
        b=X/lQUIGoah7W5TBPhcb0xIwOBZYVTyBP5nkqSsW5C4qt4TKiWo3OHlwIQ2Hq/NZf+Q
         nc5li3vcwOSKv3p72RWPzGxoPG9Vvyjzf35g4K9PygdgOp1C9gxE5KhRecC5kCZxTyr9
         xO9GyXedydj01GravLshey0C2M9PvXlQJawsat580ZbQzygF3VN49at6gih/uqIhtDvK
         Be/jVGOSv+ZYeTsiNkiMFxdR1u4Sx3lE4VGJsBifNHjOr0Lhu3mAOFyxwl9Z8+I55/9c
         k/zcYHeFSxE6UgYXUnBNU73J4f4rgBX/J9dJ43eRx4z9V+xWa39LcfLbQ9ce1PL466+Z
         /t7Q==
X-Gm-Message-State: AOAM533XGyZu6IAligG906EXpWDD0QNDJpTGh1+95IqWLtQLv+57cWhu
        teazESflClSqstM0688wlTw=
X-Google-Smtp-Source: ABdhPJwMHPC0/TmQEJoS/emMqfJ2X+Tkdyc63j8ORWc9b+zKGCG4hyYcUlzZldS9fBJBa5RRt9xnsg==
X-Received: by 2002:a5d:4a45:0:b0:1f0:5e70:1088 with SMTP id v5-20020a5d4a45000000b001f05e701088mr15780903wrs.258.1647813350493;
        Sun, 20 Mar 2022 14:55:50 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l11-20020a5d674b000000b0020402c09067sm4320778wrw.50.2022.03.20.14.55.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Mar 2022 14:55:50 -0700 (PDT)
Message-ID: <7559214e-bef1-f52d-a716-19ea31ee149b@gmail.com>
Date:   Sun, 20 Mar 2022 22:55:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: Exctracting source code from EXAMPLES
Content-Language: en-US
To:     Ingo Schwarze <schwarze@usta.de>
Cc:     steve@sk2.org, g.branden.robinson@gmail.com,
        mtk.manpages@gmail.com, linux-man@vger.kernel.org
References: <e4ea99a0-b65c-467f-047d-2cb466df86e7@gmail.com>
 <Yjeb9VPXl0+ITuIr@asta-kit.de>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <Yjeb9VPXl0+ITuIr@asta-kit.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Ingo,

On 3/20/22 22:26, Ingo Schwarze wrote:
> Hi Alex,
> 
> Alejandro Colomar (man-pages) wrote on Sun, Mar 20, 2022 at 09:34:47PM +0100:
> 
>> I have ready some code to extract source code from EXAMPLES in man-pages.
> 
> Frankly, i don't see the point at all.
> 
> Manual Pages are not HOWTO documents that mindless users are supposed
> to copy from verbatim without understanding what they see.  Instead,
> the are supposed to be read with your brain switched on and the reader
> is supposed to *apply* what they learnt, not copy it.

This feature is not supposed to be used by manual page readers (users),
but by manual page editors.

I wanted to do this a long time ago for a few reasons:

- I know some manual pages are incorrect in some minor ways, which I'd
like to fix.  For example, the includes in some examples are incorrect,
typically with more than needed.  Reading 100s of pages carefully to fix
them would be impossible.  And having slightly incorrect examples in the
manual pages is something I would really like to avoid.  We have
received reports of programs having added headers because the manual
page said they had to add them, but they were really not needed.

- Some times, incorrect patches accidentally break the manual page
formatting (for example, "\n" instead of "\en").  If the patch is simple
enough that I may not care enough to render the manual page to check its
correctness, and I don't realize the small detail, I may apply a patch
that breaks an example program very badly.  Having a magic button that
checks that the code at least compiles would greatly reduce those bugs.

- When reviewing an incoming patch, instead of me having to read through
it and after some time then replying "hey, please render your manual
pages before sending patches to see that your code doesn't produce what
you thought", I can just run `make build-src && make lint-src`, and if
it fails, I can tell the contributor: "run `make build-src && make
lint-src`, and you'll notice that your program contains some serious
problems.  Rerun until you are happy with it.  If you can't figure out
how to fix something, you can ask.".

It's kind of a man-pages static analyzer.  Having it passing is not a
measure of how good a manual page is, but having it break is an
indicator that the manual page may actually have some problems.

> 
>> .\" SRC BEGIN (program_name.c)
> 
> Ugly as hell.  I would very strongly object to have anything
> like that added to any manual pages i maintain.  When people add
> comments in order to convey syntax and semantics to a machine,
> that is a sure sign that the design of whatever it is intended
> to achieve was totally botched.

I first thought of some way to achieve this without markers, but the
regex would be very unreliable with current manual pages.  If we
standardize them a bit more, these markers might be made unnecessary,
but I'm not sure about that.

> 
>> The next step will be to add targets to lint and compile the produced
>> files, to check their correctness.
> 
> If any code snippet from an EXAMPLES section does compile, i would
> argue that it is severely ill-designed as it obviously contains lots
> of needless fluff that distracts from the point the example is
> actually trying to demonstrate.  It ought to be stripped down to
> what really matters, to become shorter, more readable, and more
> to the point.

In this project, there are examples as the ones you point below, but
they are usually embedded in the text.  In the EXAMPLES section we
usually have full programs, which are normally minimal working programs
that demonstrate the functions described.  I don't think they have much
noise.  I've sometimes used them myself, and I like them, because I have
something working from which I can test stuff.  Sometimes it's quite
hard to translate man-pages text into a running program, and having a
working example program helps disambiguate the text (at least in my
brain it works like that).

> 
> Here are a few EXAMPLES sections (in formatted form for readability)
> that demonstate how EXAMPLES sections should look like:
> 
>   EXAMPLES  /* from chroot(2) */
>      The following example changes the root directory to newroot,
>      sets the current directory to the new root, and drops some
>      setuid privileges.  There may be other privileges which need to
>      be dropped as well.
> 
>            #include <err.h>
>            #include <unistd.h>
> 
>            if (chroot(newroot) != 0 || chdir("/") != 0)
>                    err(1, "%s", newroot);
>            setresuid(getuid(), getuid(), getuid());
> 
[...]
> 
> Yours,
>   Ingo

Cheers,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
