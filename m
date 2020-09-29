Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1CC2927C96E
	for <lists+linux-man@lfdr.de>; Tue, 29 Sep 2020 14:10:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730249AbgI2MKp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Sep 2020 08:10:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43546 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730201AbgI2MKo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Sep 2020 08:10:44 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74622C061755
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 05:10:43 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id x23so4371727wmi.3
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 05:10:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=j6FGQlylTZhOY/ockHDrPBOtFX8IG9wvdom8wKqvKw4=;
        b=lYJ2oFqpk2nINOVSTkqzprl8SfYhgUGATZ+9Wfkk49dw5q8WZVp6AqgZ51e9JTljo7
         XufG6hCFc+jub7SyqlDbGX86JoGOhrSWfCgYcuJ+CcFh6RrN9WxEieJyEVDi61gY1Q/j
         +BnCotbjNYSnnr9QNityKXzLm4GY6hFBahkx+mtfLOc62wCu+E7XV/cqyGlSX+HqZ8Nb
         enFl5s22/Aq9FseHRXfxbfhFPJlK6JpsHHUB1tzJ6T7DRxO35h7Pmcmu96nvPHz+92Tr
         bvRLLMGH4Z6b1ecttoSZYPi7/YMbiAKP8TF/h50kOPWJIFc1fiLskeNJqknSVY/hNgoE
         vTAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=j6FGQlylTZhOY/ockHDrPBOtFX8IG9wvdom8wKqvKw4=;
        b=i0mgP+510qeUZlVUYLuNCJDt8/8P5s0A6dDj1RHXpqaDvMWk5cF0VPMZ7Wioix2+g0
         Y8xvw4rxYGt+HuMFeWa3CKPZoIs46qGu4Hh9/6LFhXnT5HrKAzL45JIcQCFlCeY/XRJ6
         8Dmd5BpRytXy1MyOKJJ7a0bshVODXl2VaitHKlRr0p6phP1yCEVVMUVUfc2qw32H40g5
         UMPX1yYhvp1qWqj2B/SjFCMke9WgDYMx33pWwB9muHKGSshPCrUYHtAPdyVKGjMrNHMk
         R9Jp1uQsv4zPzgcC0F1DqH3O37GZ2w45tCzkfHDSrtFxaiQwNXnL9NPliz1939rVNyZ4
         ft4Q==
X-Gm-Message-State: AOAM533ON2m54Zq9BCOD+W/NXF2VHU3jOrg8+VPb78umEHhJm6CFveq4
        jcScf/beIXRsXQAZ32gLpxs=
X-Google-Smtp-Source: ABdhPJw9uMeoQIX2gGH4R/mIcQK41X4wH89DJW0zP0lYOnIkHM9xWpmCXFVPO0tXC/hkiS25cu5NLg==
X-Received: by 2002:a1c:a988:: with SMTP id s130mr4157342wme.31.1601381442081;
        Tue, 29 Sep 2020 05:10:42 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id m13sm5661739wrr.74.2020.09.29.05.10.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 05:10:41 -0700 (PDT)
Subject: Re: [RFC] system_data_types.7: wfix + ffix
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Dave Martin <Dave.Martin@arm.com>
Cc:     g.branden.robinson@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
References: <b49c082f-06fb-aeed-d6c0-6ab619215d43@gmail.com>
 <20200928151646.20271-1-colomar.6.4.3@gmail.com>
 <20200929103719.GJ6642@arm.com>
 <a65faef4-42c3-8a55-e1ed-e06499769735@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <d714d0e3-e9fd-0f31-4d5c-4f9232a6b55b@gmail.com>
Date:   Tue, 29 Sep 2020 14:10:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <a65faef4-42c3-8a55-e1ed-e06499769735@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael & Dave,

On 2020-09-29 13:34, Michael Kerrisk (man-pages) wrote:
 > Hi Alex, Dave,
 >
 > [Alex, just to note: this patch doesn't apply against current master.]
 >
 > On 9/29/20 12:37 PM, Dave Martin wrote:
 >> On Mon, Sep 28, 2020 at 05:16:47PM +0200, Alejandro Colomar wrote:
 >>> The previous format/wording for the includes wasn't very clear.
 >>> Improve it a bit following Branden's proposal.
 >>>
 >>> Reported-by: G. Branden Robinson <g.branden.robinson@gmail.com>
 >>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
 >>> ---
 >>>
 >>> Hi,
 >>>
 >>> What do you think about this?
 >>>
 >>> Would you change something?
 >>
 >> Why should the user of a man page have to go look at the comments in the
 >> page source in order to find an explanation of what the notation in the
 >> page means?  That seems very strange.
 >
 > I do agree that we need to add some help for the reader.
 >
 > Alex, how about we start as follows. At the end of the NOTES Section,
 > let's add a "Conventions used in this page" subsection (.SS).

I just sent an email I wrote an hour ago,
where I proposed to add a paragraph in NOTES.
Your proposal is a bit more specific :)

 >
 > Some things to mention there:
 >
 > * In "Conforming to" we only concern ourselves
 >    with POSIX.2001 and later and C99 and later.
 >    The type may be specified in earlier versions
 >    of one of these standards, but in the interests
 >    of simplicity we omit details from earlier standards.

Agree.

 >
 > * In "Include", we first note the "primary" header(s)
 >    that define the type according to either the C or POSIX.1
 >    standards. Under "Alternatively", we note additional headers
 >    that the standards specify shall define the type.

Agree.

 >
 > And then I have a question. Alex, did you so far find a case of
 > type where the C standard specified that a particular header
 > shall define the type, but PPOSIX.1 either did not have that
 > requirement or did not specify that header?

No.

I've found types where the "primary" header is different in C and POSIX.
But in all the cases I've checked, POSIX always adds headers to C,
and never removes them.
I hope it is always true, because I didn't check all of them one by one.

 > I've been kind of
 > expecting that the set of headers specified by POSIX be a proper
 > superset of the the set of headers specified by C, but maybe
 > you have found otherwise.

AFAICS, that holds true.

 >
 >>>   man7/system_data_types.7 | 285 
++++++++++++++++-----------------------
 >>>   1 file changed, 113 insertions(+), 172 deletions(-)
 >>>
 >>> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
 >>> index 16930985e..dc4a3bae4 100644
 >>> --- a/man7/system_data_types.7
 >>> +++ b/man7/system_data_types.7
 >>> @@ -33,20 +33,21 @@ system_data_types \- overview of system data types
 >>>   .\"	Each entry will have the following parts:
 >>>   .\"		* Include
 >>>   .\"			The headers will be in the following order:
 >>> +.\"			"Include:"
 >>>   .\"			1) The main header that shall define the type
 >>> -.\"			   according to the C Standard,
 >>> -.\"			   and
 >>> -.\"			   the main header that shall define the type
 >>> -.\"			   according to POSIX,
 >>> -.\"			   in alphabetical order.
 >>> -.\"			;
 >>> -.\"			2) All other headers that shall define the type
 >>> +.\"			   according to the C Standard.
 >>> +.\"			["or"]
 >>> +.\"			2) The main header that shall define the type
 >>> +.\"			   according to POSIX.
 >>> +.\"			[". Alternatively,"]
 >>> +.\"			3) All other headers that shall define the type
 >>>   .\"			   as described in the previous header(s)
 >>>   .\"			   according to the C Standard or POSIX,
 >>>   .\"			   in alphabetical order.
 >>>   .\"			*) All headers that define the type
 >>>   .\"			   *if* the type is not defined by C nor POSIX,
 >>>   .\"			   in alphabetical order.
 >>> +.\"			"."
 >>
 >> It is fine to have notes about page maintenance here -- i.e., which
 >> headers should be placed where in the list, and what order to sort them
 >> in.
 >>
 >> However, I think that statements about which header(s) provide the type
 >> under which standard need to be in the actual page text.  Programmers
 >> need this information.
 >
 > My question (to Alex) above is related. (And to repeat, the thing
 > I most care about in the man pages is POSIX.1, rather than C.)

If/when the NOTES section documents that clearly,
I may remove that comment.

 >
 >>>   .\"
 >>>   .\"		* Definition (no "Definition" header)
 >>>   .\"			Only struct/union types will have definition;
 >>> @@ -203,8 +204,8 @@ See also:
 >>>   .RS
 >>>   .br
 >>>   Include:
 >>> -.IR <stdio.h> ;
 >>> -or
 >>> +.IR <stdio.h> .
 >>> +Alternatively,
 >>>   .IR <wchar.h> .
 >>>   .PP
 >>>   An object type used for streams.
 >>> @@ -268,19 +269,14 @@ type in this page.
 >>>   .RS
 >>>   .br
 >>>   Include:
 >>> -.IR <sys/types.h> ;
 >>> -or
 >>> -.I <grp.h>
 >>> -or
 >>> -.I <pwd.h>
 >>> -or
 >>> -.I <signal.h>
 >>> -or
 >>> -.i <stropts.h>
 >>> -or
 >>> -.I <sys/ipc.h>
 >>> -or
 >>> -.I <sys/stat.h>
 >>> +.IR <sys/types.h> .
 >>> +Alternatively,
 >>
 >> How does the reader of the page know that "alternatively" here has a
 >> specific and different meaning from "or"?
 >>
 >> Can we describe this somehow along the lines of:
 >>
 >> The C standards specify this type in the following header:
 >>
 >> 	<stddef.h>
 >>
 >> In POSIX environments, it is sufficient instead to include any of the
 >> following headers, but the resulting program may not be portable to
 >> other C implementations unless <stddef.h> is also included:
 >>
 >> 	[etc.]
 >>
 >>
 >> (I'm not sure this is 100% true, but it seems a safe recommendation.
 >> I'm also being lazy by writing "the C standards" and "POSIX
 >> environments" here -- it would be better to be specific.)
 >
 > This feels too verbose to me. Again, I care more about POSIX
 > than C here. This is Linux; it quacks like a UNIX; so POSIX
 > is the most relevant thing. And I want to keep the discussion
 > of these types reasonably brief. In particular, I think that
 > people who care a lot about portability across C implementations
 > need to be looking somewhere else than the Linux manual pages.

Agree,

 >
 > Thanks,
 >
 > Michael
 >

Thanks,

Alex
