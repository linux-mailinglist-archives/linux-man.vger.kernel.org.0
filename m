Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DF7522E7FFE
	for <lists+linux-man@lfdr.de>; Thu, 31 Dec 2020 13:47:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726549AbgLaMrC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 31 Dec 2020 07:47:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726219AbgLaMrB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 31 Dec 2020 07:47:01 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CB95C061573
        for <linux-man@vger.kernel.org>; Thu, 31 Dec 2020 04:46:21 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id v14so7259158wml.1
        for <linux-man@vger.kernel.org>; Thu, 31 Dec 2020 04:46:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=UPlLPxz3grVg/C4UHfTOYmnxvaVAf95aacbqZI/Bibk=;
        b=UZD3UUe2YwD+Jpv0Bretd5PTYdHoIQJnbWJsRXjfbzBiY/aTRWpSECMcmPWikaJnVR
         SdzPKaS2i4O0pp4PX9do/UW85OAOyVxdzMqtpoolPaPcPjykPbmSbmH+r1yWexmAGRzt
         xYXkCp6YvsE+9XzP4qta4FkoL3/OLqzRDtrK1OM4pJwccdalNkaxXbOJHHW3Am6sqKjX
         vmeQpI2M4MxLrp3fYdew5vc4vGwD+dKQw3C8lh/gkhlOXugQW1tp+ZxbTtw4elPEuzvV
         rb7JbYyPk5SmwtXF3z0wkisQcc1BMYEDezQIO1d8RKSCb7+U1eC9SBV5KFosDTfTo8HG
         V6uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=UPlLPxz3grVg/C4UHfTOYmnxvaVAf95aacbqZI/Bibk=;
        b=svd2Vita4mXFKLgVMTQeZldsdW7kJUvAu8V/t72gBRtKRfaGgBpUA8jXkwPgAG/yP9
         dRuIBYF1GWRvYBioNbuuttwl+Y1jSY9m4B8fq9175w51MTSbsArTycYbeK8x5FRRa/pM
         oefhoN/Fswa7TWEaVUkajmkyz14qkyhhusCst5QnxWWq63CtuTvI7pfyJTSPWamu5wpW
         fludD8ze/j+jgerfoneXCmrfs0i5HzD3zkWx5oNgOutdm08tqnnhJcHXAa09W02ShOx6
         bLtFHsBaYElhqK85wBRnnpUvSQMSI/OWweS648XCW07QJBUzF1tIp839iJQzTlQjno3i
         szXw==
X-Gm-Message-State: AOAM53152/f7DAQe/TQ2TQ7HVUqvYh9bgJg+G3hxA/MrieJxwR8OEN8w
        57LcxrvHa+K02kwuQtBXDWkxcjQUt1o=
X-Google-Smtp-Source: ABdhPJyp8jYT1V8rSwlwZepfN4hc53oixzLItbskLdOGm0W4Sa9TxQpL1Mh3pRaTzliqW1Rb63989g==
X-Received: by 2002:a7b:c208:: with SMTP id x8mr11750381wmi.179.1609418780009;
        Thu, 31 Dec 2020 04:46:20 -0800 (PST)
Received: from [192.168.0.160] ([170.253.49.0])
        by smtp.gmail.com with ESMTPSA id u5sm7190885wrr.32.2020.12.31.04.46.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Dec 2020 04:46:19 -0800 (PST)
Subject: Re: [PATCH] copy_file_range.2: SYNOPSIS: Fix prototype parameter
 types
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20201230214147.874671-5-alx.manpages@gmail.com>
 <2b1cbbc7-a1f3-dbef-1d23-d96409e4490c@gmail.com>
 <a27fb355-f3be-036a-459a-1769e72e3a70@gmail.com>
 <f54456d9-882a-b98a-f8fd-7f790ae2b39b@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <99e9cd99-880d-7ae6-2e90-6b3877c314d3@gmail.com>
Date:   Thu, 31 Dec 2020 13:46:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <f54456d9-882a-b98a-f8fd-7f790ae2b39b@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

I'm fixing the example, and I trying to see if I can remove some of the
headers with the change.  However, it's difficult to find that for sure,
at least from the manual pages alone.  I think that's one of the biggest
inconsistencies in the pages and I'd like to fix that some day.

Also, I'll resend the old patch documenting off64_t in
system_data_types(7), given that this interface uses it.

For the SYNOPSIS sections of man2 and man3,
I'll try to have a single header,
and if there are some other headers needed (for type definitions, or
other), I'll add a comment to all of them, so that it's clear why each
header is needed.

See stat(2) as an example of what I don't like:

[[
SYNOPSIS
       #include <sys/types.h>
       #include <sys/stat.h>
       #include <unistd.h>

       int stat(const char *pathname, struct stat *statbuf);
       int fstat(int fd, struct stat *statbuf);
       int lstat(const char *pathname, struct stat *statbuf);

       #include <fcntl.h>           /* Definition of AT_* constants */
       #include <sys/stat.h>

       int fstatat(int dirfd, const char *pathname, struct stat *statbuf,
                   int flags);

   Feature Test Macro Requirements for glibc (see feature_test_macros(7)):

       lstat():
           /* glibc 2.19 and earlier */ _BSD_SOURCE
               || /* Since glibc 2.20 */ _DEFAULT_SOURCE
               || _XOPEN_SOURCE >= 500
               || /* Since glibc 2.10: */ _POSIX_C_SOURCE >= 200112L

       fstatat():
           Since glibc 2.10:
               _POSIX_C_SOURCE >= 200809L
           Before glibc 2.10:
               _ATFILE_SOURCE

]]

Why should one include all of those headers?
Which has the function definition?
And what do the others provide?

Cheers,

Alex


On 12/31/20 9:58 AM, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On 12/31/20 12:20 AM, Alejandro Colomar (man-pages) wrote:
>>
>>
>> On 12/30/20 11:43 PM, Michael Kerrisk (man-pages) wrote:
>>> Hi Alex,
>>>
>>> On 12/30/20 10:41 PM, Alejandro Colomar wrote:
>>>> Glibc uses 'off64_t' instead of 'loff_t'.
>>>
>>> Okay.
>>>
>>>> This patch doesn't change the types in the code example,
>>>> because it uses the Linux syscall, and not the glibc wrapper.
>>>
>>> I think the example probably also needs fixing then. There's
>>> no longer a need for syscall(2) in this example, I think.
>>
>> Hi Michael,
>>
>> I thought the same, but glibc 2.26 is still supported,
>> and lacks the wrapper.
>> Would you change it already?
> 
> Yes.
> 
> Thanks,
> 
> Michael
> 
> 
