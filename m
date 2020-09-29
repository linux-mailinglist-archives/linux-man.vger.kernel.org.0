Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C9E9427CB04
	for <lists+linux-man@lfdr.de>; Tue, 29 Sep 2020 14:24:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729833AbgI2MYD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Sep 2020 08:24:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729778AbgI2LfJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Sep 2020 07:35:09 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06F7BC0613E0
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 04:34:55 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id j2so4980917wrx.7
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 04:34:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=c5fXOtf7lkedRTbIqv+UVBPZkbQpmlhM92seLZS5gR0=;
        b=fGb1Hv3E3G0vU3k/wUUYQ26PVbADMBYf2UjfAvCfUJk4BLLrBrrrZqqp55o6Oewgsp
         vvi0DHOaweuiOquunTYKoG8Xhb8ZsWXk3S0Z8lmSb4gbVj2wbQUa1ewNXxdrGXcS5MEG
         oTUlwGD9h+RLGKpPRc57j0W/YQtLWawhg8i9D0GLq9TD/6vIy2b3qf7qYAwTKe4TWPFX
         lWYMj965B/bA+TJrjvqMDY03kboQ3K5jCZF2gtxQaFrLBNjswpembq72GK5DqNsbF7x7
         XduFa5pEaUUQZNZWs+XNDPt9+cg5Cqr4eyS6TN+WjuHWCMmdodq6O9wdW9dNLb4KcjR3
         41kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=c5fXOtf7lkedRTbIqv+UVBPZkbQpmlhM92seLZS5gR0=;
        b=f7YUyKspVCYUD5w4b1XXumVUbEbVqJ9EWpMbTHt4wOnERh0oFXcraqoeb/84wbhqaN
         XH/52FLs8oiB9eiC9nE0w90VXHroMTppQW/61cSqGz33sSsNOAF3YNDRZLxOkBvw0Iim
         VuZaJPSFbQ46oVZ5WBq8Iei8WoYAOcOo91WW9P2AW1+DpxrOdWmEYjDYIRfF0ihikT7V
         fR2/tKi+CPuOAN7M3PXliQIseMj4dVcEYOoqJfm1PFDA/84rR06QVVm+hP9bX+mClnp7
         z0iv0WThXdRYQtljkcANK+Wmi+NfFFvOHDheQ7jyMyD4o8wjtgmBSG7rq/MqZinY9uuq
         J3tA==
X-Gm-Message-State: AOAM532t7A8VOM4g1vDiNpzTGi4/NJzayTx6S+DrjQ0ebv4XbeVNaYaU
        eBd/xNaf+o5hmgDULxCiRO4=
X-Google-Smtp-Source: ABdhPJyZIowNiDfn6Df9XN84ZYH7z5ZaFpF7/EGLEBoH3lt1k5x8uEZNv6ZxIREzax2RZfo+vRsGAw==
X-Received: by 2002:adf:e80b:: with SMTP id o11mr4068513wrm.118.1601379293654;
        Tue, 29 Sep 2020 04:34:53 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id m3sm5807736wrs.83.2020.09.29.04.34.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 04:34:53 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, g.branden.robinson@gmail.com,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: [RFC] system_data_types.7: wfix + ffix
To:     Dave Martin <Dave.Martin@arm.com>,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <b49c082f-06fb-aeed-d6c0-6ab619215d43@gmail.com>
 <20200928151646.20271-1-colomar.6.4.3@gmail.com>
 <20200929103719.GJ6642@arm.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <a65faef4-42c3-8a55-e1ed-e06499769735@gmail.com>
Date:   Tue, 29 Sep 2020 13:34:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200929103719.GJ6642@arm.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex, Dave,

[Alex, just to note: this patch doesn't apply against current master.]

On 9/29/20 12:37 PM, Dave Martin wrote:
> On Mon, Sep 28, 2020 at 05:16:47PM +0200, Alejandro Colomar wrote:
>> The previous format/wording for the includes wasn't very clear.
>> Improve it a bit following Branden's proposal.
>>
>> Reported-by: G. Branden Robinson <g.branden.robinson@gmail.com>
>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>> ---
>>
>> Hi,
>>
>> What do you think about this?
>>
>> Would you change something?
> 
> Why should the user of a man page have to go look at the comments in the
> page source in order to find an explanation of what the notation in the
> page means?  That seems very strange.

I do agree that we need to add some help for the reader.

Alex, how about we start as follows. At the end of the NOTES Section,
let's add a "Conventions used in this page" subsection (.SS).

Some things to mention there:

* In "Conforming to" we only concern ourselves
  with POSIX.2001 and later and C99 and later.
  The type may be specified in earlier versions
  of one of these standards, but in the interests
  of simplicity we omit details from earlier standards.

* In "Include", we first note the "primary" header(s)
  that define the type according to either the C or POSIX.1
  standards. Under "Alternatively", we note additional headers
  that the standards specify shall define the type.

And then I have a question. Alex, did you so far find a case of
type where the C standard specified that a particular header
shall define the type, but PPOSIX.1 either did not have that
requirement or did not specify that header? I've been kind of
expecting that the set of headers specified by POSIX be a proper 
superset of the the set of headers specified by C, but maybe 
you have found otherwise.

>>  man7/system_data_types.7 | 285 ++++++++++++++++-----------------------
>>  1 file changed, 113 insertions(+), 172 deletions(-)
>>
>> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
>> index 16930985e..dc4a3bae4 100644
>> --- a/man7/system_data_types.7
>> +++ b/man7/system_data_types.7
>> @@ -33,20 +33,21 @@ system_data_types \- overview of system data types
>>  .\"	Each entry will have the following parts:
>>  .\"		* Include
>>  .\"			The headers will be in the following order:
>> +.\"			"Include:"
>>  .\"			1) The main header that shall define the type
>> -.\"			   according to the C Standard,
>> -.\"			   and
>> -.\"			   the main header that shall define the type
>> -.\"			   according to POSIX,
>> -.\"			   in alphabetical order.
>> -.\"			;
>> -.\"			2) All other headers that shall define the type
>> +.\"			   according to the C Standard.
>> +.\"			["or"]
>> +.\"			2) The main header that shall define the type
>> +.\"			   according to POSIX.
>> +.\"			[". Alternatively,"]
>> +.\"			3) All other headers that shall define the type
>>  .\"			   as described in the previous header(s)
>>  .\"			   according to the C Standard or POSIX,
>>  .\"			   in alphabetical order.
>>  .\"			*) All headers that define the type
>>  .\"			   *if* the type is not defined by C nor POSIX,
>>  .\"			   in alphabetical order.
>> +.\"			"."
> 
> It is fine to have notes about page maintenance here -- i.e., which
> headers should be placed where in the list, and what order to sort them
> in.
> 
> However, I think that statements about which header(s) provide the type
> under which standard need to be in the actual page text.  Programmers
> need this information.

My question (to Alex) above is related. (And to repeat, the thing
I most care about in the man pages is POSIX.1, rather than C.)

>>  .\"
>>  .\"		* Definition (no "Definition" header)
>>  .\"			Only struct/union types will have definition;
>> @@ -203,8 +204,8 @@ See also:
>>  .RS
>>  .br
>>  Include:
>> -.IR <stdio.h> ;
>> -or
>> +.IR <stdio.h> .
>> +Alternatively,
>>  .IR <wchar.h> .
>>  .PP
>>  An object type used for streams.
>> @@ -268,19 +269,14 @@ type in this page.
>>  .RS
>>  .br
>>  Include:
>> -.IR <sys/types.h> ;
>> -or
>> -.I <grp.h>
>> -or
>> -.I <pwd.h>
>> -or
>> -.I <signal.h>
>> -or
>> -.i <stropts.h>
>> -or
>> -.I <sys/ipc.h>
>> -or
>> -.I <sys/stat.h>
>> +.IR <sys/types.h> .
>> +Alternatively,
> 
> How does the reader of the page know that "alternatively" here has a
> specific and different meaning from "or"?
> 
> Can we describe this somehow along the lines of:
> 
> The C standards specify this type in the following header:
> 
> 	<stddef.h>
> 
> In POSIX environments, it is sufficient instead to include any of the
> following headers, but the resulting program may not be portable to
> other C implementations unless <stddef.h> is also included:
> 
> 	[etc.]
> 
> 
> (I'm not sure this is 100% true, but it seems a safe recommendation.
> I'm also being lazy by writing "the C standards" and "POSIX
> environments" here -- it would be better to be specific.)

This feels too verbose to me. Again, I care more about POSIX
than C here. This is Linux; it quacks like a UNIX; so POSIX
is the most relevant thing. And I want to keep the discussion
of these types reasonably brief. In particular, I think that
people who care a lot about portability across C implementations
need to be looking somewhere else than the Linux manual pages.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
