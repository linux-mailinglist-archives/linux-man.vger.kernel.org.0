Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 414A240820E
	for <lists+linux-man@lfdr.de>; Mon, 13 Sep 2021 00:39:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236546AbhILWky (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 12 Sep 2021 18:40:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231251AbhILWkx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 12 Sep 2021 18:40:53 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7C7EC061574
        for <linux-man@vger.kernel.org>; Sun, 12 Sep 2021 15:39:38 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id u19-20020a7bc053000000b002f8d045b2caso5281340wmc.1
        for <linux-man@vger.kernel.org>; Sun, 12 Sep 2021 15:39:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=38CUacbi5ICTH6+3yHEqAMngidptH3oj08GgxdCvEw0=;
        b=lIzyLYFlSeSTJRH2IBzQLDRpvotS6YGXLYCwOrrTjjZegsr2HWelJ2YrAq132cWrMP
         h3l3YtjlOP7D5HGMN4/ABfZyUl2BxlRHxnE+dJ+4ztq7S/4Tb2QTLq9di4fYFbGvQvoS
         6EHakdrGWas8dB+QtX5dAlE+1qK5jhUIVS7y1U12lYhf3KkqL2I4wYinOWfWQRadMFuM
         JiU+G79CIV/iHY2wqRHYV2COkztX1iQtZG66UZyPmjNnlq67iE8E5WFKnyvMkVB1zubC
         68DYnrn21v1Zt5n7BhLgJA13/O7Axsy2stWBljv2Jwr49wuORxT6aEa+boeJbtvGNUzw
         9mQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=38CUacbi5ICTH6+3yHEqAMngidptH3oj08GgxdCvEw0=;
        b=cnnJ52QIEAZd9Nu/mu6VfPHl7Pv/glCM4F4VDaWhYtOIOghACkQJ2AcA71uOdQiItR
         8Wlu5D/bh7QuvYq+f2fp0FzXP/bhsAmtKgeWlUFZoYFwG30WyfHRtUu6k0yxZYdfn1Oz
         HkQPVqMShoSWweJIPRgtIdgjdjnbRJ4RgNqxEg6dXsuGZSSOvGlGCGRpF76gkpgrx8ok
         HXPB5Kxv5Ulw/T4iCVBtud13znfrAPWfM1aEbaUcaHCt4GwFWubzZMomLjeMeZcqwZMZ
         Kt+IUFd6RyBXk+h+azIEopc2ALI9l9XeVQ/m7fh9Z6rKmjz/ngSCBEm89U0sC2WtSlZ5
         nptw==
X-Gm-Message-State: AOAM532Ogghazdlu7P1r/OnVg0JWfFqChdpMB8dv7e+AtfoOJNLqHY5t
        kmkufT3Nd9T9iBNYW0fOTo4=
X-Google-Smtp-Source: ABdhPJxOa8MKKJWGN7uTLVL5kOHsGa+mU/QS99IVcvRLT2CFALOROdP4+cCQB74RGcu1M9Ura0GHag==
X-Received: by 2002:a05:600c:2115:: with SMTP id u21mr312397wml.186.1631486377355;
        Sun, 12 Sep 2021 15:39:37 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id r129sm5120528wmr.7.2021.09.12.15.39.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Sep 2021 15:39:36 -0700 (PDT)
Subject: Re: [PATCH 3/3] Use subsections instead of sections
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org, "Thaddeus H. Black" <thb@debian.org>
References: <YTluPPbquS6ZHmHL@b-tk.org>
 <20210909072442.423117-4-alx.manpages@gmail.com> <YT4MsXe46WlMa8i0@b-tk.org>
 <6ca6520f-ed0e-75b4-7eb2-972a8b8f1dfb@gmail.com>
 <30501890-2a01-3be2-ed51-568a1cd55397@gmail.com>
 <20210912181242.pfbmwi3ayqyujda2@localhost.localdomain>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <d91100ad-e7b3-a964-797a-fd01eab2765b@gmail.com>
Date:   Mon, 13 Sep 2021 00:39:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210912181242.pfbmwi3ayqyujda2@localhost.localdomain>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi, Branden!

On 9/12/21 8:12 PM, G. Branden Robinson wrote:
> Hi, Alex!
> 
> At 2021-09-12T16:56:21+0200, Alejandro Colomar (man-pages) wrote:
>> I'm a bit worried that this might be overcomplicating it, and maybe a
>> hypothetical .SSS macro would be useful here (or another solution).
>> Do you have any thoughts about it?
>>
>> That hypothetical macro would behave like .TP + .B + .RS (as shown
>> above; and that .RS would only end at a following .SSS/.SS/.SH)
> 
> I've come to the view, due mainly to exposure rather than an attempt at
> rigorous reasoning, that if you need subsubsections in a _man page_,
> that the level of discussion for the page overall is too coarse.
> 
> It's pretty rare that I've seen a need for subsubsections expressed, and
> I must confess to some unease with recruiting the tagged paragraph macro
> to the purpose of achieving them.  To return to the perennial topic of
> semantic macros, `TP` has considerable semantic value (much more than,
> say, `SM` for small text), and that value is weakened if we reach for it
> because we desire its _visual_ effect.
> 
> Do you have a list handy of the man-pages documents that you see as
> requiring this kind of structure?  I can put on my technical writing hat
> and see what I think of them.


The only pages that I know from the top of my head that have a lot of 
subsubsection-like nested indentation, are the biggest ones (e.g., 
proc(5)), and my baby, system_data_types(7), which is already too grown 
that we should think about splitting it into many little pages.  So I 
think there's no good example (or more precisely, I don't know them).

So, I would like to reuse the same methods as in other pages, more since 
this is a quite small page, and shouldn't be problematic.  Maybe using 
.TP is the best option.  I was just afraid of overcomplicating it, but 
since the other alternatives seem worse, I think it's fine.

I'll prepare the (sub)patch for Thaddeus, probably tomorrow, and we'll see.

Thanks for your input!

> 
> For now, at the low level of *roff mac-fu, I don't actually see much of
> a technical challenge.  Just as a first stab in the dark, he's here how
> I might implement the beast you request.
> 
> .nr an-in-SX 0
> .de1 SX
> .  if !\\n[.$] \
> .    an-style-warn .\\$0 expects at least 1 argument, got \\n[.$]
> .  if \\n[an-in-SX] .RE
> .  TP \\n[.l]u
> .  B \\$@
> .  nr an-in-SX 1
> .  RS
> ..
> .am SH
> .  nr an-in-SX 0
> ..
> .am SS
> .  nr an-in-SX 0
> ..
> 
> Noteworthy points:
> 
> 1. I wrote this on the fly while composing this mail; if you try it,
>     don't expect it to work perfectly.
> 2. I defined the macro with groff's `de1` request so that the macro
>     would be interpreted with compatibility mode off.  This enables the
>     use of groff extensions even on Solaris where compatibility mode is
>     on by default, but I don't know if anyone reads the Linux man-pages
>     on Solaris boxen.  Plain `de` would be fine if they don't.  I
>     needed only a couple of groff extensions anyway: (a) long request
>     names and (b) bracket-based register interpolation syntax.  Neither
>     of these is essential and the above could be implemented with few
>     changes in vintage 1979 AT&T troff.
> 3. I used a groff man(7) internal macro to style check and warn if
>     the number of parameters is not appropriate.
> 4. I told `TP` to use the width of an output line for the tag width.
>     This guarantees that the paragraph proper won't begin on the same
>     output line as paragraph tag no matter how short that tag is, which
>     is what we want since we're faking a (sub-sub-)section heading.

BTW, if I understood this right, that's already forced by .RS, so you 
don't need to care.  .RS (at least in the cases I used it) already 
forced a line break between the tag and the paragraph (see 
system_data_types(7)).

[
        cc_t
               Include: <termios.h>.

               Used for terminal special characters.  According  to
               POSIX, it shall be an unsigned integer type.

               Conforming to: POSIX.1‐2001 and later.

               See also: termios(3)

]

> 5. I set up a Boolean variable to keep track of whether we're "in" a
>     sub-sub-section.  For this to work cleanly I need to (a) initialize
>     it outside of any macro definition; (b) test it so I know when I need
>     to undo my relative inset for the subsection; and (c) append to the
>     macros SH and SS since they already clear all relative insets,
>     including any I may have set up with this new macro.
> 
> You might experiment with this by adding it to man pages that require
> it.  This sort of material is then called "page-local macros" and Ingo
> Schwarze and I both discourage such practice in publicly distributed man
> pages[1].
> 
> To be able to manage sub*sections to arbitrary depth would require
> maintenance of a stack or queue rather than a simple Boolean flag, but
> it could be done.
> 
> However, my intuition is, again, that if you feel a strong pressure to
> have three tiers of page organization before you even get to the level
> of individual topics of discussion in paragraphs (tagged or otherwise),
> maybe the page is trying to cover too much material.

Yes, and I was seeking your intuition!  So, .TP will do it, I think. 
The second best option I think would be using custom sections.

Thanks!

Best regards,

Alex

> 
> Regards,
> Branden
> 
> [1] Admittedly, groff itself still has some man pages with page-local
>      macros.  I haven't deeply researched the history, but my impression
>      is that they antedate mandoc(1) and a variety of "man2html" tools of
>      divergent, mostly horrible, quality.  Some pages, like groff(7),
>      will require a major effort to clean up.  However, groff 1.22.4 was
>      already improved over 1.22.3 in this respect, and groff 1.23.0 will
>      be _much_ improved.
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
