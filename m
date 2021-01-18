Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4013B2FA4E5
	for <lists+linux-man@lfdr.de>; Mon, 18 Jan 2021 16:37:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390818AbhARPhM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 18 Jan 2021 10:37:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390661AbhARPg4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 18 Jan 2021 10:36:56 -0500
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4C56C061574
        for <linux-man@vger.kernel.org>; Mon, 18 Jan 2021 07:36:14 -0800 (PST)
Received: by mail-ed1-x531.google.com with SMTP id u19so18072321edx.2
        for <linux-man@vger.kernel.org>; Mon, 18 Jan 2021 07:36:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=XcQOSFl3bzB6nFDpAVu4YspaL6mJZdY5+ErMc3a3Pq4=;
        b=nMwSRk2WTrWmvATE2KGrWobbPRdkaLwbh7jAWHHFJb4DMiPB5r2IHVKqTRbh1uLRjK
         8uECncfz8+uf2/BYBBbnSh0dkD9vBpJ5KBl4ypIoYEkLcbOfa1yGAunZeWljSDa4qH4z
         vhP3lao8BgLmfx9SlrjEXKX30M9CuTsW68WkCwpmtt2CzTpJ5KLq2i30kSHMAsL9X/lz
         P5+aN0W87xBOWQ3pUvDSKQO72XjcnStMT4affRc/M+ypKJ7YE9NrAPcqxnFOAiYW6Qkv
         HMVySKBvLWzhGBnWKsIu3KAPpkAJ47I66FhADc9UnhplTxstez6OprdT38hcHCRP+yx2
         aYUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=XcQOSFl3bzB6nFDpAVu4YspaL6mJZdY5+ErMc3a3Pq4=;
        b=pX86lZDJvBN5MxyJAExJgEuBsC0/Kt2VaxbtE7VX/g44q3ShAwtMdGWGwHf5bmIUL2
         2N+dfFGmUdTmMvOozmClt3GQeBTZ97/1tHFcjShKTyhIfXWXMtjjHbQ4e6UksjuVYnyL
         3eFldtdlZnTknUyCS0i1B+JYCpt1F61Hs/rKEmEq4mvzFzqSCsOMcKj7fax1+vX4Pgjv
         LEEdColkQANSoLMo9xavGzEYVP4u3kS5vY4QYG4rnxcpw7fep7A5DlXFicXEQYmrgpK9
         WuxoZaNv4OerC9xbXnhQbaKwQ7OU68EtFHvZSp+D14FMfDWNtnq0E5LHrSiM3uAbTw4i
         /IJg==
X-Gm-Message-State: AOAM530aC+/1zfF/672ilyqtzgYSK2UutUG4WIK99NheTaE40xvA7BKK
        Go5QYHfMHVbgDTDx9lhXnFI=
X-Google-Smtp-Source: ABdhPJw5T2Ym6YOZXJnuonT9ixK3+rhNvRKrjymkDHVk41kKGYxt+Wre8l0d0g/n4uhxPpXNLszcEA==
X-Received: by 2002:a50:fe86:: with SMTP id d6mr59999edt.80.1610984173595;
        Mon, 18 Jan 2021 07:36:13 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id x16sm9629038ejb.38.2021.01.18.07.36.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Jan 2021 07:36:13 -0800 (PST)
Cc:     mtk.manpages@gmail.com, libc-alpha@sourceware.org,
        linux-man@vger.kernel.org,
        Ciprian Dorin Craciun <ciprian.craciun@gmail.com>,
        Florian Weimer <fweimer@redhat.com>
Subject: Re: [PATCH v4] system.3: Document bug and workaround when the command
 name starts with a hypen
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <20210104180420.74092-1-alx.manpages@gmail.com>
 <20210108142209.61938-1-alx.manpages@gmail.com>
 <a89dea2b-5b26-040a-2f12-3e096756f118@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <9bd7824e-32c6-6d9a-c5ab-2bbac30f624b@gmail.com>
Date:   Mon, 18 Jan 2021 16:36:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <a89dea2b-5b26-040a-2f12-3e096756f118@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/8/21 3:28 PM, Alejandro Colomar (man-pages) wrote:
> 
> 
> On 1/8/21 3:22 PM, Alejandro Colomar wrote:
>> man-pages bug: 211029
>>  https://bugzilla.kernel.org/show_bug.cgi?id=211029
>>
>> Complete workaround
> 
> Maybe a bit more readable:
> Complete workaround example

Changed.

Thanks,

Michael

> 
> 
>> (it was too long for the page, but it may be useful here):
>>
>> ......
>>
>> $ sudo ln -s -T /usr/bin/echo /usr/bin/-echo;
>> $ cc -o system_hyphen -x c - ;
>> #include <stdlib.h>
>>
>> int
>> main(void)
>> {
>>     system(" -echo Hello world!");
>>     exit(EXIT_SUCCESS);
>> }
>>
>> $ ./system_hyphen;
>> Hello world!
>>
>> Reported-by: Ciprian Dorin Craciun <ciprian.craciun@gmail.com>
>> Cc: Florian Weimer <fweimer@redhat.com>
>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
>> ---
>>
>> D'oh!
>>
>>  man3/system.3 | 20 ++++++++++++++++++++
>>  1 file changed, 20 insertions(+)
>>
>> diff --git a/man3/system.3 b/man3/system.3
>> index 753d46f7d..ead35ab30 100644
>> --- a/man3/system.3
>> +++ b/man3/system.3
>> @@ -255,6 +255,26 @@ are not executed.
>>  Such risks are especially grave when using
>>  .BR system ()
>>  from a privileged program.
>> +.SH BUGS
>> +.\" [BUG 211029](https://bugzilla.kernel.org/show_bug.cgi?id=211029)
>> +.\" [Glibc bug](https://sourceware.org/bugzilla/show_bug.cgi?id=27143)
>> +.\" [POSIX bug](https://www.austingroupbugs.net/view.php?id=1440)
>> +If the command name starts with a hyphen,
>> +.BR sh (1)
>> +interprets the command name as an option,
>> +and the behavior is undefined.
>> +(See the
>> +.B \-c
>> +option to
>> +.BR sh (1).)
>> +To work around this problem,
>> +prepend the command with a space as in the following call:
>> +.PP
>> +.RS 4
>> +.EX
>> +    system(" \-unfortunate\-command\-name");
>> +.EE
>> +.RE
>>  .SH SEE ALSO
>>  .BR sh (1),
>>  .BR execve (2),
>>
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
