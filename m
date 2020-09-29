Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 69FE627C8F5
	for <lists+linux-man@lfdr.de>; Tue, 29 Sep 2020 14:06:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730268AbgI2MGO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Sep 2020 08:06:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42858 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731901AbgI2MGN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Sep 2020 08:06:13 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0284BC061755;
        Tue, 29 Sep 2020 05:06:13 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id m6so5128555wrn.0;
        Tue, 29 Sep 2020 05:06:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=JkfzwPFEgR6eqrtsaH3iBBCMGvSyOxw11OTpBaI42jY=;
        b=BFDNDeO4JtAlWsNLc241AAkX+uwihHDXGI6cSeHgQO3WtsxM7KtgDzB9ZqKr45Mm/k
         5SIuPAnJZDdiy19k4VUk/zw9CL/04k51KHsOBw06EHaTK5Lj5MTs3QQpbfvt4TWOe49p
         7UHaLCHkbc028Ia8z72VNAmkzr0IJ1icTjkJRjG58DFgOmTV2L/F/RSy4qcAN943RkFr
         VxFDHkDNEP5FUZPatpzzKchrseqhPKNf25kK0cQM2GQxgsYA+M6NoDgTqyer6273v3DO
         0GimAPb3L9m11zJC+9pR37lHWks1daMT3qUg+9msYgvsKbrw9i8XCxUJYHnfCw/z4tvW
         t3xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=JkfzwPFEgR6eqrtsaH3iBBCMGvSyOxw11OTpBaI42jY=;
        b=M4IRqa3+GPeok/sx2NQXKZPENmRUGl6HfQyaBE2Qiss0A7L6sBMeDufW0wZLOvwmZx
         Op+UimclWbsBsxEUA7lHpFFLiD+5ifLuhhiegnaeR5QZyza5fDdBpfQvo7AQK2LOk49I
         PT3TyJoVfrKJ8TKyfIaR3u0hMt8tZy2LMbI89mlmK8HWLX/B2qYe3RBrxT78wwF0DkKl
         fzLxIJ+EgZEu09TncR3H0bpOPmxtMghKqSemulVHFwzydbsi/WvhHyHV26w7oiopAPKb
         JGgYc4OJNbOZGt1HTRdvh0sNNti4dZmm/Qb3xEn1gHJti6olIxSK7E4mwvVCcjBJGAZ9
         /EEw==
X-Gm-Message-State: AOAM530kT1NKsSzaZkztuVK2L1TSVNEmvCkWYVokbuOv5/RAoSIdNz0L
        M2APEkNgfm6YPgNPE7KddDFxn9dHEp4=
X-Google-Smtp-Source: ABdhPJxe8TS0p/7FhIKfQ3DZzhiud3KocCaTNj03DhjQfmrjzNFA9glvILUgS8isPzWjfHI2KlwQFw==
X-Received: by 2002:adf:e6c2:: with SMTP id y2mr4191333wrm.117.1601381171317;
        Tue, 29 Sep 2020 05:06:11 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id k8sm5325750wma.16.2020.09.29.05.06.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 05:06:10 -0700 (PDT)
Cc:     mtk.manpages@gmail.com,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 22/24] membarrier.2: Note that glibc does not provide a
 wrapper
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-23-colomar.6.4.3@gmail.com>
 <4ace434523f5491b9efcc7af175ad781@bfs.de>
 <20200921143617.2iskdncu3diginqn@localhost.localdomain>
 <2862c745-a23a-95d2-157e-7f91f671f839@gmail.com>
 <20200927054657.ea2zaiesle6hwjit@localhost.localdomain>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <baeb500b-f252-2632-585a-93adfab28141@gmail.com>
Date:   Tue, 29 Sep 2020 14:06:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200927054657.ea2zaiesle6hwjit@localhost.localdomain>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

On 9/27/20 7:46 AM, G. Branden Robinson wrote:
> At 2020-09-24T10:06:23+0200, Michael Kerrisk (man-pages) wrote:
>> Thanks for the interesting history, Branden!
> 
> Hi, Michael.  And you're welcome!  I often wonder if I test people's
> patience with my info dumps but I try to show my work when making
> claims.
> 
>> From time toi time I wonder if the function prototypes in
>> the SYNOPSIS should also be inside .EX/.EE. Your thoughts?
> 
> I think there are trade-offs.
> 
> 1. If you want alignment, the monospaced font that .EX/.EE uses is the
>    most portable way to get it.
> 2. For typeset output, you'll generally run out of line more quickly
>    with a monospaced font than with the troff/man default (Times).
>    _Any_ time filling is off, output should be checked to see if it
>    overruns the right margin, but this point strengthens in monospace.

Yes, it's a good point. I think I'll leave this idea for now.

> Here's something that isn't a trade-off that might come as a surprise to
> some readers.
> 
> * You can still get bold and italics inside an .EX/.EE region, so you
>   can still use these distinguish data types, variable names, and
>   what-have-you.
> 
> The idiom for achieving this is apparently not well-known among those
> who write man pages by hand, and tools that generate man(7) language
> from some other source often produce output that is so ugly as to be
> unintelligible to non-experts in *roff.
> 
> The key insights are that (A) you can still make macro calls inside an
> .EX/.EE region, and (B) you can use the \c escape to "interrupt" an
> input line and continue it on the next without introducing any
> whitespace.  For instance, looking at fstat() from your stat(2) page, I
> might write it using .EX and .EE as follows:
> 
> .EX
> .B int fstat(int \c
> .IB fd , \~\c
> .B struct stat *\c
> .IB statbuf );
> .EE
> 
> Normally in man pages, it is senseless to have any spaces before the \c
> escape, and \c is best omitted in that event.  However, when filling is
> disabled (as is the case in .EX/.EE regions), output lines break where
> the input lines do by default--\c overrides this, causing the lines to
> be joined.  (Regarding the \~, see below.)
> 
> If there is no use for roman in the line, then you could do the whole
> function signature with the .BI macro by quoting macro arguments that
> contain whitespace.

I was more or less aware of all of the above. (But the \c technique
is something that I see rarely enough that I often take a moment to
remember what it does.)
> 
> .EX
> .BI "int fstat(int " fd ", struct stat *" statbuf );
> .EE
> 
> As a matter of personal style, I find quoted space characters interior
> but adjacent to quotation marks visually confusing--it's slower for me
> to tell which parts of the line are "inside" the quotes and which
> outside--so I turn to groff's \~ non-breaking space escape (widely
> supported elsewhere) for these boundary spaces.
> 
> .EX
> .BI "int fstat(int\~" fd ", struct stat *" statbuf );
> .EE
> 
> Which of the above three models do you think would work best for the
> man-pages project?

I understand what you say about quoted interior spaces being 
a little hard to parse. But I find the \~ makes the source
less readable. Likewise, IMO, the \c technique renders the source
harder to read.

> Also, do you have any use for roman in function signatures?  I see it
> used for comments and feature test macro material, but not within
> function signatures proper.

I think you're correct. Roman only occurs in comments.

> 
> As an aside, I will admit to some unease with the heavy use of bold in
> synopses in section 2 and 3 man pages, 

It's been that way "forever" in the Linux man-pages.

> but I can marshal no historical
> argument against it.  In fact, a quick check of some Unix v7 section 2
> pages from 1979 that I have lying around (thanks to TUHS) reveals that
> Bell Labs used undifferentiated bold for the whole synopsis!
> 
> $ head -n 13 usr/man/man2/stat.2
> .TH STAT 2 
> .SH NAME
> stat, fstat \- get file status
> .SH SYNOPSIS
> .B #include <sys/types.h>
> .br
> .B #include <sys/stat.h>
> .PP
> .B stat(name, buf)
> .br
> .B char *name;
> .br
> .B struct stat *buf;

As ever, thanks for the history!

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
