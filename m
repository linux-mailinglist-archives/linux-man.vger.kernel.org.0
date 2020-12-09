Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B0DA02D403C
	for <lists+linux-man@lfdr.de>; Wed,  9 Dec 2020 11:47:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729887AbgLIKpG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Dec 2020 05:45:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58270 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729382AbgLIKpG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Dec 2020 05:45:06 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D44FC0613D6;
        Wed,  9 Dec 2020 02:44:26 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id l9so1173402wrt.13;
        Wed, 09 Dec 2020 02:44:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=e9U14YbvPQ65OpVh9QyrJJaUt+mKvoE8C0Y0f02ixB8=;
        b=rdUwne1A+4a4WU3fu2Ua/8s6HdxJWXvV63jmt5PQ/bid8f+M6MPNES6HxHukqCsNVv
         h45zlHSRDbAV5AsmOtNtyrNspJBtIuPQzkqDNjdd3MKMrRNREfErX5Y+KOJ7XMJ8cD+o
         ldaHkmFZXmcaHDWcAgROqddd1pyPQG0Qy42+52kDwKs5jtpnmUrr9oXAkqiyYhij0p8T
         ISKfeQFvgRSApK4Ny+1CufDOHZ3ncghx+Cfi8QMmTfmfh5j4BrrR5zVFbcTGw5GRhIua
         tH3hJ2QBPsyVqp5LNgXGPSh4slTFVemaYbIy9tVmd2+7g/jXSyxznmalwip8wNs+PYFs
         FjMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=e9U14YbvPQ65OpVh9QyrJJaUt+mKvoE8C0Y0f02ixB8=;
        b=IXG84fMQiGw3sceZ3ufCx6w87prUvS+FuLqLFIybZIOjb7EGPeCrXuGFJWsgY6LttE
         dKVhaAIzR5q30OIz0US32qNy5tlEdmhM4800Uwe26a4p7sVfqRS0umHzkN32xd09nQio
         EwIs3HEZyaTWKmqT4q68klWbdfOVjA7BoaCB8tlf2uoon6nEN4TrK3Z46VoPrzK4nXZ3
         R5lvepW1YnkuXS8bKG9Ma8BzITQC7B85oP6R9UdQMl3djXedlUfjpTrN+y+g6657tIkQ
         7GCYsY4KFIzuMyM9UEv0vs2YbeFGig03qkIUcDL44NcZDJqjETZ/0Gkn2ZcyBEXUwMug
         vReQ==
X-Gm-Message-State: AOAM533DpTgG8Fllv2wYpAhyVtHRPw/AqGbqiah/TlvhV1n9qru9CCsl
        o+voFkLgfL94LAAVgNe4RGnRRKABzj/cGg==
X-Google-Smtp-Source: ABdhPJzOJ3IkoPp2j9FdlXjWeLwGt3aK7bZ31z40KjIzv62CXeeOMndxYJx+HpoiBOoMVc4hCRV1kw==
X-Received: by 2002:adf:c589:: with SMTP id m9mr1960375wrg.370.1607510663842;
        Wed, 09 Dec 2020 02:44:23 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id d187sm2777012wmd.8.2020.12.09.02.44.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Dec 2020 02:44:23 -0800 (PST)
Subject: Re: [patch] close_range.2: new page documenting close_range(2)
To:     Christian Brauner <christian.brauner@ubuntu.com>,
        Stephen Kitt <steve@sk2.org>
Cc:     linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-kernel@vger.kernel.org
References: <20201208215133.30575-1-steve@sk2.org>
 <20201209095817.7ksihhftmnd3c3hi@wittgenstein>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <5f69d42d-c36d-b98a-3d00-7a5e7f489a07@gmail.com>
Date:   Wed, 9 Dec 2020 11:44:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201209095817.7ksihhftmnd3c3hi@wittgenstein>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hey Christian,

I have a question for you below.

Thanks,

Alex

On 12/9/20 10:58 AM, Christian Brauner wrote:
> On Tue, Dec 08, 2020 at 10:51:33PM +0100, Stephen Kitt wrote:
>> This documents close_range(2) based on information in
>> 278a5fbaed89dacd04e9d052f4594ffd0e0585de and
>> 60997c3d45d9a67daf01c56d805ae4fec37e0bd8.
>>
>> Signed-off-by: Stephen Kitt <steve@sk2.org>
>> ---
> 
> Hey Stephen,
> 
> Thanks for working on this that's an early Christmas present as it gets
> an item off my todo list!
> 
>>  man2/close_range.2 | 112 +++++++++++++++++++++++++++++++++++++++++++++
>>  1 file changed, 112 insertions(+)
>>  create mode 100644 man2/close_range.2
>>
>> diff --git a/man2/close_range.2 b/man2/close_range.2
>> new file mode 100644
>> index 000000000..62167d9b0
>> --- /dev/null
>> +++ b/man2/close_range.2
>> @@ -0,0 +1,112 @@
>> +.\" Copyright (c) 2020 Stephen Kitt <steve@sk2.org>
>> +.\"
>> +.\" %%%LICENSE_START(VERBATIM)
>> +.\" Permission is granted to make and distribute verbatim copies of this
>> +.\" manual provided the copyright notice and this permission notice are
>> +.\" preserved on all copies.
>> +.\"
>> +.\" Permission is granted to copy and distribute modified versions of this
>> +.\" manual under the conditions for verbatim copying, provided that the
>> +.\" entire resulting derived work is distributed under the terms of a
>> +.\" permission notice identical to this one.
>> +.\"
>> +.\" Since the Linux kernel and libraries are constantly changing, this
>> +.\" manual page may be incorrect or out-of-date.  The author(s) assume no
>> +.\" responsibility for errors or omissions, or for damages resulting from
>> +.\" the use of the information contained herein.  The author(s) may not
>> +.\" have taken the same level of care in the production of this manual,
>> +.\" which is licensed free of charge, as they might when working
>> +.\" professionally.
>> +.\"
>> +.\" Formatted or processed versions of this manual, if unaccompanied by
>> +.\" the source, must acknowledge the copyright and authors of this work.
>> +.\" %%%LICENSE_END
>> +.\"
>> +.TH CLOSE_RANGE 2 2020-12-08 "Linux" "Linux Programmer's Manual"
>> +.SH NAME
>> +close_range \- close all file descriptors in a given range
>> +.SH SYNOPSIS
>> +.nf
>> +.B #include <linux/close_range.h>
>> +.PP
>> +.BI "int close_range(int " first ", int " last ", unsigned int " flags );
> 
> Note, the kernel prototype uses unsigned int as the type for file
> descriptor arguments. As does the close() syscall itself. Only glibc
> wrappers expose file descriptor types (at least in close variants) as
> int.
> Since this is a manpage about the syscall not the wrapper it might make
> sense to note the correct types.
> 
>> +.fi
>> +.SH DESCRIPTION
>> +The
>> +.BR close_range ()
>> +system call closes all open file descriptors from
>> +.I first
>> +to
>> +.IR last
>> +(included).
>> +.PP
>> +Errors closing a given file descriptor are currently ignored.
>> +.PP
>> +.I flags
>> +can be set to
>> +.B CLOSE_RANGE_UNSHARE
>> +to unshare the range of file descriptors from any other processes,
>> +.I instead
>> +of closing them.
> 
> As Michael has noted, this needs to be reworded. A few things to note:
> - CLOSE_RANGE_UNSHARE will ensure that the calling process will have a
>   private file descriptor table. This ensures that other threads opening
>   files cannot inject new file descriptors into the caller's file
>   descriptor table to e.g. make the caller inherit unwanted file
>   descriptors.
> - CLOSE_RANGE_UNSHARE is conceptually equivalent to:
>   unshare(CLONE_FILES);
>   close_range(3, ~0U);

AFAICS after reading the code, if the unsharing fails,
it will not close any file descriptors (please correct me if I'm wrong).

Just wanted to be sure that it was the intended behavior with you,
and if so, it would be good to document it in the page.

> - Whenever the requested range @last is greater than the current maximum
>   number of file descriptors allocated in the caller's file descriptor
>   table the kernel will only unshare a new file descriptor table for the
>   caller up to @first, i.e. the new file descriptor table will be 0 up
>   to and including @first not 0 up to and including @last. Which means
>   that the kernel will not have to do any costly filp_close() calls at
>   all. In essence, the close_range() operation is finished after the
>   in-kernel unshare call in such cases.
> 
> Christian
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es
