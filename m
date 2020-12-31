Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9E04C2E7F34
	for <lists+linux-man@lfdr.de>; Thu, 31 Dec 2020 11:07:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726317AbgLaKHi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 31 Dec 2020 05:07:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726302AbgLaKHi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 31 Dec 2020 05:07:38 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA133C061573
        for <linux-man@vger.kernel.org>; Thu, 31 Dec 2020 02:06:57 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id d13so19664767wrc.13
        for <linux-man@vger.kernel.org>; Thu, 31 Dec 2020 02:06:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=MNZeXTBIUyhOvKomHptv45QgY4fkrFGDhiNMaTxwtuw=;
        b=ez7MtS6zcSx6Wra8KaaG5Ntkw0KpCqoC9NJF+sd85a89DwMlK5EL5l+piEkUP8DpvP
         T8ysqT7UKFl/C6j7WLVJ2nKxavsgwV3xtwo9YWsM9P4JhY15hd1xgpIewNsWBqVl+jtn
         dyXto/578ghIfzLQf8RHSp1Xozykj3983xDJBi08ZDJvqZP8Z7FKjLouP8HqPyyzSVVU
         eFbdRm8QmDFqDM9SymfGZtGh7xeexwh/8PqTdSKYrPen0ePQcr4JgIPdGcADDzaCGyNG
         PEhNizLVMHhA10sLk18DkQ2Gf6SMgXz1twDS9A11VM4PkoFWi0XaIDmcBzhDSuIWc/vt
         Cj7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=MNZeXTBIUyhOvKomHptv45QgY4fkrFGDhiNMaTxwtuw=;
        b=f/CWRh0//qZHmQPTdZvgPtP6hOhjNOv6KRArc3bpjXciu+Eoeyuxmp5Xfq+QrS6LHF
         hsDJE1nYXWBqo2fo7FGcd8Qu1vIk0Qu8a3tKbQx8/V7rAWCW9ctZ9DMCFLDmJ9UunyEg
         s6wzy9Tw31iOhysRFHtVnCzamT55OP6scuVd/suwiRCErGvGgIBpi8lUrHEgy+nsXDWX
         go8Hc/I0E98ugwoPtVLS6EwKe2EuYexIOuHZIHhwVsxen+5q09yNoYPJ+DE39OlnlIZD
         C8qnoKynGbSIUzjjttIpyS80Y+ohCiMfhC2H4pLVUKK/vE27fFSBn8gtl40DyXFelKeJ
         0vUw==
X-Gm-Message-State: AOAM531UCwOUVq2n6ngoKCYxP7Iunn6TCD+IKUjw0O/OPF7jlrQxXjCi
        m6xMjHlN606W0UfQP1dUx8kaua4+Rwk=
X-Google-Smtp-Source: ABdhPJxVQQSyR8PdWUMOjb4y4/0Wxvb+N4BDsvowoIZE7EUMg4mubqfYc9gv2NEe5Y0AxfLS5mA4IA==
X-Received: by 2002:adf:d218:: with SMTP id j24mr28661164wrh.361.1609409214939;
        Thu, 31 Dec 2020 02:06:54 -0800 (PST)
Received: from ?IPv6:2001:a61:2467:2f01:faca:3d43:5e40:30d1? ([2001:a61:2467:2f01:faca:3d43:5e40:30d1])
        by smtp.gmail.com with ESMTPSA id w13sm67440635wrt.52.2020.12.31.02.06.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Dec 2020 02:06:53 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] execveat.2: srcfix
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <20201230214147.874671-1-alx.manpages@gmail.com>
 <CAKgNAkjf8gS5Av2pzYqt_JHjjnCw-FrjqQicjhr20+MzgsK3Xg@mail.gmail.com>
 <bdda57ff-acdd-9109-5720-ba0db8138d41@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <993e801d-4126-4e11-5a06-4b92879a7eb7@gmail.com>
Date:   Thu, 31 Dec 2020 11:06:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <bdda57ff-acdd-9109-5720-ba0db8138d41@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi ALex,

On 12/31/20 12:28 AM, Alejandro Colomar (man-pages) wrote:
> 
> 
> On 12/30/20 11:27 PM, Michael Kerrisk (man-pages) wrote:
>> Hi Alex,
>>
>> On Wed, 30 Dec 2020 at 22:41, Alejandro Colomar <alx.manpages@gmail.com> wrote:
>>>
>>> Use .nf/.fi in the SYNOPSIS.
>>
>> I'm not against the patch. But why this particular page?
> 
> Hello Michael,
> 
> I fixed this while adding the notes about missing headers in that page,
> but I felt that it was better as a separate patch.
> And the other patch I didn't send it in the last moment as I found a
> missing line :p

Ahhh -- that explains a lot :-).

> 
> Would you prefer a global fix about .nf/.fi or just fix as we go?

So, I think by now there's a lot of inconsistency in the layout
in SYNOPSIS, and before making a global change, there should be
some design decisions.

There are things to consider:
* .nf/.fi should probably be used around the all functions
  signatures.
* There should be no .br between function signatures.
* .PP should be used where appropriate to get white space
  separation between function signatures.

The worst mess though is probably the Feature Test Macro (FTM)
requirements. Even though nearly all of this information was
added by me, and I tried to be consistent, this was complicated
by the fact that (a) the info was added over several years and
(b) the details are surprisingly complicated sometimes, mainly
because of changes to FTM requirements across glibc versions
and that several functions might be documented in the same page
(e.g., see chmod(2), setpgid(2)). So, there is some inconsistency
(perhaps worse in the actual page source, than in the rendered
output). Also, the material in the FTM text is heavily oriented
around the assumption of an 80-column display.

I'm not sure how much effort it is worth putting into fixing 
this, but before any global edit, there probably needs to be
quite a bit of discussion.

All of that said, I've just made a bunch of commits to tidy
up some of the more obviously messy pieces.

Thanks,

Michael

>>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
>>> ---
>>>
>>>  man2/execveat.2 | 11 ++++++-----
>>>  1 file changed, 6 insertions(+), 5 deletions(-)
>>>
>>> diff --git a/man2/execveat.2 b/man2/execveat.2
>>> index 7c31d8f17..c5cd843f9 100644
>>> --- a/man2/execveat.2
>>> +++ b/man2/execveat.2
>>> @@ -27,13 +27,13 @@
>>>  .SH NAME
>>>  execveat \- execute program relative to a directory file descriptor
>>>  .SH SYNOPSIS
>>> +.nf
>>>  .B #include <unistd.h>
>>>  .PP
>>> -.BI "int execveat(int " dirfd ", const char *" pathname ","
>>> -.br
>>> -.BI "             char *const " argv "[], char *const " envp "[],"
>>> -.br
>>> +.BI "int execveat(int " dirfd ", const char *" pathname ,
>>> +.BI "             char *const " argv "[], char *const " envp [],
>>>  .BI "             int " flags );
>>> +.fi
>>>  .SH DESCRIPTION
>>>  .\" commit 51f39a1f0cea1cacf8c787f652f26dfee9611874
>>>  The
>>> @@ -224,7 +224,8 @@ where scripts recursively employ
>>>  .\" For an example, see Michael Kerrisk's 2015-01-10 reply in this LKML
>>>  .\" thread (http://thread.gmane.org/gmane.linux.kernel/1836105/focus=20229):
>>>  .\"
>>> -.\"     Subject: [PATCHv10 man-pages 5/5] execveat.2: initial man page.\"                        for execveat(2
>>> +.\"     Subject: [PATCHv10 man-pages 5/5] execveat.2: initial man page
>>> +.\"                        for execveat(2)
>>>  .\"     Date: Mon, 24 Nov 2014 11:53:59 +0000
>>>  .SH SEE ALSO
>>>  .BR execve (2),
>>> --
>>> 2.29.2
>>>
>>
>>


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
