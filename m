Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 21AD5458DD9
	for <lists+linux-man@lfdr.de>; Mon, 22 Nov 2021 12:51:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235207AbhKVLyF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 22 Nov 2021 06:54:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234451AbhKVLyF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 22 Nov 2021 06:54:05 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E29CC061574
        for <linux-man@vger.kernel.org>; Mon, 22 Nov 2021 03:50:58 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id i5so32229326wrb.2
        for <linux-man@vger.kernel.org>; Mon, 22 Nov 2021 03:50:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=+XbVfbn1rQBJ4Rw66Yc965f3oCkEubSHtLnziBD3m0s=;
        b=JF7k6piQvxAWzY5+jmyAQ1d8kIWc/pIhyEtXXDVOrOu95QdU4Rkrl7P14vpRndjSmw
         PyepN1PyzC2pwKImkzYNwjsmOEQmN+4zVD2z7CsQNOHuKODPFqJEt7uwkNxU9AMFXu5d
         jt6maoaxkvB6mfwHdRZ0mF56vIzDWaLqXef0zaMfZdTiKDVlUu2iBMwl5A1yOXSN4jgO
         JFd7/aeXEgxZZ9dSVuikyKfpVZNtIUgGGFlxSk106JcOv02fAGYdfoLTHorbHGJ5Ok/G
         326PToKw3YoIXpQSXYS5C3r0sSV76TaoguplOcUJD2sNKSlHEfGaYjOvgDr+aUr3l7ao
         g/Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=+XbVfbn1rQBJ4Rw66Yc965f3oCkEubSHtLnziBD3m0s=;
        b=5QQCzsQnS/wp/n5adKAtKz7plosHbtn7K+XXyi1ylUvnl0FJrcjSrH6btRs2hxV56V
         1PBR9IG143SGXK+YycclQv/W8FkmazIfLVCcC45b1cZ4Re+gtzrtVU9Qly9P2aEZhYF2
         kmTIIkN7EkxLeePk8YoPGoZIsLgy41p90ltRK/MTXTqlvovd+yvkz56qD/nKUsXPzk4y
         L2eAtytBN7DgV9BgWvI4EoPxEzowzRL334pRWeLk3lWJ0p+iwHdXV9rcb3Tc4HxpRXJi
         d/J2Gje2YY9IkdUGusgSz+Z7ZfeXCRfYEe56YWrapnsQ4T2qI215VPJFCUux7ultsc3p
         OeqA==
X-Gm-Message-State: AOAM532EM2/ShFzII0mdELf5a2mTno7aUISNUdkiswoQ8D7IaFI1mF6y
        1GzduPVulQTlieEmoEZTUKkIs3o+H3Cbeg==
X-Google-Smtp-Source: ABdhPJyP3kbqHtTmtRNXkzvN7S/9wf5RiU2yiE04KC6RwzcNwKmd+mzXqpTPHZIa0nHK81UuzQqlnw==
X-Received: by 2002:adf:ea90:: with SMTP id s16mr36643234wrm.288.1637581857028;
        Mon, 22 Nov 2021 03:50:57 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id 21sm8428753wmj.18.2021.11.22.03.50.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Nov 2021 03:50:56 -0800 (PST)
Message-ID: <ae193c20-6b65-be9a-5670-d6868cbae431@gmail.com>
Date:   Mon, 22 Nov 2021 12:50:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Re: Bold and italics, semantics and constness (was: [PATCH v2]
 mctp.7: Add man page for Linux MCTP support)
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <20211111015323.3542313-1-jk@codeconstruct.com.au>
 <76dd85f7-ab8a-1dcc-5b1a-5eb9a87d23bc@gmail.com>
 <20211112093536.hvifxgdtb2y6jzge@localhost.localdomain>
 <3fe7250d-eca3-663e-8ffe-11f67c08a879@gmail.com>
 <20211122090614.phhlheldl75xbxu6@localhost.localdomain>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20211122090614.phhlheldl75xbxu6@localhost.localdomain>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi, Branden!

On 11/22/21 10:06, G. Branden Robinson wrote:
>>> Phrasal semantic newlines!  :D  This 180-proof Kernighan whiskey is
>>> a stronger prescription than I would write (mainly because it
>>> requires natural-language-aware grepping), but if your contributors
>>> don't rebel, I think we will all ultimately see the benefits in
>>> diffs.
>>
>> I feel an urge to add it to man-pages(7).  :-}
> 
> I saw that.  I don't object, exactly, but I would be prepared for some
> contributors to simply disregard it.  Some man pages are going to be
> more excellent than others.  man-pages(7) calls out wait(2) and pipe(2)
> as models, for example.

So far, only one rebelled a bit.  I assume that I'll be fixing those few 
pages myself.  If this advise reduces the amount of work that I have to 
do, it's useful.  If some contributors learn to appreciate the benefits 
of thinking in terms of phrases when writing technical stuff, it will 
have been very useful.

> 
> I think in many cases this Kernighanization of man page running text is
> going to fall to you because contributors will feel it unnecessary or
> that they cannot justify to their managers the expenditure of the time
> necessary to write documentation so scrupulously.  I would agree that it
> can improve man page quality--attention to phrase and clause boundaries
> compels the writer to re-read what they write and may reveal to them
> gaps in the discussion or outright errors.

Those that would complain about phrases I think would also complain 
about clauses.  It's the same switch for the brain, just a bit further. 
  If they prefer to maintain the man-pages with looser rules, they can 
do themselves; no-one's paying me for reviewing their patches.  I'll 
keep doing this, as long as it's entertaining to me.  If managers don't 
want to spend worker's time in writing quality pages, I may ask some 
salary for my time reviewing their pages.

> 
> But documentary diligence is not part of the culture of much software
> development these days.  It's not Lean/Agile/XP/MVP.  Documentation is a
> cost center.  It's the opposite of secret sauce.  What will please the
> Street?  Move fast; break stuff; be far away when the building catches
> on fire.

I have had a very bad (and luckily short) experience with 
Lean/Agile/XP/MVP.  If I can help sabotage that, I will happily and 
intentionally do.


>>>> Only for Branden:  I just noticed a difference between
>>>> man-pages(7) and groff_man(7) advise:  groff_man(7) advises to use
>>>> italics for preprocessor constants, while man-pages(7) recommends
>>>> bold:
> [...]
>>> Would we then also bold constants that are C objects with the
>>> "const" type qualifier rather than language literals emplaced by the
>>> preprocessor?
>>
>> Yes!  The difference between "const" variables and macros is just
>> preprocessor, but they are all intended for very similar usage.
> 
> Hmm, yes, but personally I wouldn't mind it if we had a notation that
> distinguished preprocessor symbols from things the compiler proper sees.
> With only 3 faces in man(7), we probably can't get there from here, but
> I have dreams of a better world.  A Texinfo partisan would likely point
> out that the distinction is already made clear in the GNU C Library
> manual, for example.

Are we talking about libc, or C documentation in general?  Because libc 
doesn't have any 'const' variables at all, at least that I know of.

So we don't even need to care in the Linux man-pages.  Maybe manual 
pages for other C libraries can better decide what to do with those.



>> We have a mapping in our brains that says
>> "literal -> bold, variable -> italics".
> 
> I don't think I will ever be able to suppress my need to point out that
> this is a _loose_ generalization.  Italics are also used for emphasis
> and work titles in standard English.
> 
>> If we extend that mapping,
>> macros are replacements for literals,
>> so we would use bold for them too.
>> And "const"s are also mostly intended for the same use as macros,
>> so bold goes for them too.
> 
> But constness can be cast away; and some C library functions that
> _should_ take const-qualified parameters or return const-qualified
> objects, don't (and worse, got standardized without such qualifiers
> either out of excessive deference to poor practice or for fear of
> upsetting too many implementors).  So you might mislead the reader who
> assumes that a C object in bold type is always const-qualified, leading
> them to perform superfluous casts, which make the code noisier to read.
> Or you might mislead the reader who assumes that a C object in bold type
> is always "semantically" to be treated as "const" (i.e., don't assign to
> objects of this name even if you can without provoking a compiler
> complaint) might make the opposite false and overgeneralized inference,
> and fail to apply "const" where it would be useful.

I think we're talking about 2 different things:

- 'const' variables
- pointers to 'const'

'const' variables can never be cast away.  It's an error.

$ cat const.c
void foo(void)
{
	const int a = 1;

	a = 2;
}

That will never compile, and you can't cast 'a' enough so that you can 
make it work.  If you modify it through a pointer to 'const', then you 
can, but it will be Undefined Behavior, which brings us to the other 
thing: pointers to 'const'.

$ cat pointer_to_const.c
void bar(const int *p)
{
	int *q;

	q = (int *)p;
	*q = 3;
}

This is allowed by the compiler, but it is Undefined Behavior _unless_ 
the variable pointed to by 'p' is really not const.  Casting away const 
is IMO also braindamaged, so I don't consider it a valid thing.

One of the things that I like from C++ is that they correctly 
implemented const.  Hey, "asd" is 'char *' in C, but of course if you 
modify it, demons fly out of your nose!


Going back to formatting:

Pointers to const are just variables.  Their value is the address of 
some const, but that's not important.  The important thing is that they 
are variables, and therefore, you use italics with them.

So the only thing that IMHO should be bold (apart from constants and 
macros that expand to constants) should be global 'const' variables:

const int FOO = 3;

which some people prefer over macros, and which in C++, one could write as:

constexpr int FOO = 3;

In the case above, I don't see a reason why one would want to 
differentiate that from say

#define FOO  3


But in function parameters, 'const' is useless in variables, since they 
already got a copy, so they won't alter the original.  And in pointers, 
const applies to the pointee, but the pointer itself is variable, so 
italics.


>> Did I convince you? :)
> 
> No, but not for lack of trying.  :)  I don't think there is much
> distance between us, practically speaking.

No there isn't. :)

> I guess I should mention...I didn't announce it here, but groff 1.23.0
> will have a new "MR" macro for man page cross references[2] and its
> grotty(1) driver will emit OSC 8 hyperlink escape sequences to
> supporting terminal devices for clickable URLs and man page cross
> references declared with "MR".[3]

OMG, those HTML people better be scared of competition :D

> 
> I reckon groff is due for another release candidate...

Yes, please :-)


Cheers,
Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
