Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CA25A7D5841
	for <lists+linux-man@lfdr.de>; Tue, 24 Oct 2023 18:28:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343837AbjJXQ2N (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 Oct 2023 12:28:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343747AbjJXQ2M (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 Oct 2023 12:28:12 -0400
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA55FDD
        for <linux-man@vger.kernel.org>; Tue, 24 Oct 2023 09:28:10 -0700 (PDT)
Received: by mail-pj1-x1033.google.com with SMTP id 98e67ed59e1d1-27d1aee5aa1so3396086a91.0
        for <linux-man@vger.kernel.org>; Tue, 24 Oct 2023 09:28:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698164890; x=1698769690; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=59IMLqc6emhtyu79ZdqqMAYKH1Qf7y4E5XYTkgVt0tY=;
        b=yYNhNpvCS+RZpOm2TUBIM6UYT5qga1jZxgLZVt2bUvaQx5vmd/EtldAyADBY2whHFs
         7ioyjn7xbTfBNjti5f0DXfuL/+APncj/oVSnzYXfSlOpI/g9i7UDbRBdgA212g/r35Gh
         B9J1e870I2dTSIHnTG6NEYDQ4czCFKJghFkLFxlGbluj7Auxy3h7wRmgr5rKsI77FDEM
         aLHkhslLcyVK9viLNr9BzXbWc7WZFkoxKQ0MKeo7lU373UxZ56jBQyo3RWQatCM5+szK
         fUP83D3w4xXaMUMBlEhi0jQWYwsU/2Y7iDMNzAYNAwZyPgzPkWOBi6as5C7LX1w8aD/m
         Oixg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698164890; x=1698769690;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=59IMLqc6emhtyu79ZdqqMAYKH1Qf7y4E5XYTkgVt0tY=;
        b=jClE2LsEmPdMi1+PBllB+39eLYy1A3UPoeeq6rgDFmYcTCAWmfdO6REU+vXTz4ZXx/
         9WBG+M/5WNm62BQCrKP33m+XFB3XsbllobHpWkhZOjD5SKht6lYah3pVnXeXyl82TOEX
         0s3fUC+pMY4amSUM+8tYUDpFvtjb7gjmZAkb+bk9sd2JiZNqxYTBvLT8vlkEVaess84Z
         zfsAfiKYUunRhPJGkxRvvz0Gr9P+WU+9UGtHEL2jK9XEbbZJixHRKvOeSt2ii2b/kaTH
         rYAqAiKunr+MzqLO8mqHLt+1O7fGfXwl+19Csi1axUJHGZmQGZNLTPiOl/ST6B+PTgPt
         nBPA==
X-Gm-Message-State: AOJu0YxST0iZacwgIDBdvOGL09AaPdaG817JGQ3+2r9X7xGVkkgXBXiP
        EmMKoYz8lZo/mx97l+ZI31fbbg==
X-Google-Smtp-Source: AGHT+IHl+I5DRH5S6cFH1QO8T1jijf7PjwxqozwWSnEIvxchONerNsQBcE1njmpuWYtS5cZ500/pkQ==
X-Received: by 2002:a17:90b:1e12:b0:27d:d9a:be8b with SMTP id pg18-20020a17090b1e1200b0027d0d9abe8bmr17081019pjb.6.1698164889913;
        Tue, 24 Oct 2023 09:28:09 -0700 (PDT)
Received: from ?IPV6:2804:1b3:a7c3:a647:f05a:5f8b:2693:4fff? ([2804:1b3:a7c3:a647:f05a:5f8b:2693:4fff])
        by smtp.gmail.com with ESMTPSA id ge13-20020a17090b0e0d00b00271c5811019sm7113045pjb.38.2023.10.24.09.28.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Oct 2023 09:28:09 -0700 (PDT)
Message-ID: <8b505776-755c-42bb-8b8c-e6311a13f17b@linaro.org>
Date:   Tue, 24 Oct 2023 13:28:06 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] mcheck.3, mtrace.3: update examples for glibc 2.34
Content-Language: en-US
To:     Alejandro Colomar <alx@kernel.org>,
        Vincent Lefevre <vincent@vinc17.net>
Cc:     linux-man@vger.kernel.org,
        GNU C Library <libc-alpha@sourceware.org>
References: <20231024143144.76490-1-vincent@vinc17.net>
 <ZTfjnCHDc_meBr4S@debian>
From:   Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
Organization: Linaro
In-Reply-To: <ZTfjnCHDc_meBr4S@debian>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLACK autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 24/10/23 12:32, Alejandro Colomar wrote:
> Hi Vincent,
> 
> On Tue, Oct 24, 2023 at 04:31:17PM +0200, Vincent Lefevre wrote:
>> The glibc 2.34 NEWS file says that mtrace() and mcheck() have now been
>> disabled in the main C library, and preloading libc_malloc_debug.so is
> 
> Can you please clarify "disabled"?  What is the behavior if that library
> is not preloaded?  My attempt to run this program is that mcheck(3)
> returns -1.  So, the preload interposes the dummy function that only
> returns -1 with an actual mcheck(3) implementation?

The libc mcheck and mcheck_pedantic now return -1, while mprobe returns
MCHECK_DISABLED.  All the implementation that used to live in libc.so
were moved to libc_malloc_debug.so.

> 
> Are these functions deprecated by glibc?  If so, we should probably use
> [[deprecated]] in the SYNOPSIS.  Or did they just move the functionality
> for other reasons but without deprecating?

There is no deprecation because the functionality is still fully supported,
albeit in a different library. Setting to deprecated would require to move
the prototypes to a different header.

> 
> Should we document the need for LD_PRELOAD in the LIBRARY section?

Yes, I think it would be better.

> 
> Thanks,
> Alex
> 
>> needed to get this functionality back.
>>
>> So the examples now need a "LD_PRELOAD=libc_malloc_debug.so".
>>
>> Signed-off-by: Vincent Lefevre <vincent@vinc17.net>
>> ---
>>  man3/mcheck.3 | 2 +-
>>  man3/mtrace.3 | 2 +-
>>  2 files changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/man3/mcheck.3 b/man3/mcheck.3
>> index 285ea946c..e17650a4c 100644
>> --- a/man3/mcheck.3
>> +++ b/man3/mcheck.3
>> @@ -169,7 +169,7 @@ when running the program:
>>  .PP
>>  .in +4n
>>  .EX
>> -.RB "$" " ./a.out"
>> +.RB "$ " "LD_PRELOAD=libc_malloc_debug.so ./a.out"
>>  About to free
>>  \&
>>  About to free a second time
>> diff --git a/man3/mtrace.3 b/man3/mtrace.3
>> index f30511cd0..d0cde42c9 100644
>> --- a/man3/mtrace.3
>> +++ b/man3/mtrace.3
>> @@ -153,7 +153,7 @@ diagnosed memory leaks at two different locations in the program:
>>  .EX
>>  .RB "$ " "cc \-g t_mtrace.c \-o t_mtrace"
>>  .RB "$ " "export MALLOC_TRACE=/tmp/t"
>> -.RB "$ " "./t_mtrace"
>> +.RB "$ " "LD_PRELOAD=libc_malloc_debug.so ./t_mtrace"
>>  .RB "$ " "mtrace ./t_mtrace $MALLOC_TRACE"
>>  Memory not freed:
>>  -\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-
>> -- 
>> 2.42.0
>>
> 
