Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 95BF12DE0CC
	for <lists+linux-man@lfdr.de>; Fri, 18 Dec 2020 11:14:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733162AbgLRKM5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Dec 2020 05:12:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732586AbgLRKM4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Dec 2020 05:12:56 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EECC6C0617B0;
        Fri, 18 Dec 2020 02:12:15 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id q18so1546461wrn.1;
        Fri, 18 Dec 2020 02:12:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=3GwnuhQdIORWgD9BROvJZtFDVEPlXSzGDz8GjXATe74=;
        b=D0pxryC2X0Y8mE37oIGey6ZNzxS5RSncwh09tnNNWHJ0ZqAs4nlWH2EbpNtQgQ1BYz
         rpAjjnJ9BqChzji5v8BB3yexDdJL1LsEN/RPeBNZoAwN5FXZMk076JQEvWex3VwG9n+K
         u5Wf8O21qfuIXd67EdvxyaJWJIFw7yTtGqTYu+CpB+ovtkwLKkHrnnFMU2EqydL4OJTS
         zWfSfDBfZ7RMIJT5eWSrqDbWpjfquZ8Zf6CCxolSpDKMw46dImw0lEVZuFVUVZtpZ15A
         Oe14sWzelCopn6teMwjkVdGppXRMHNGNOgbX615fJwxsvAKk+vqOn8vPuCaf6gVqdAY4
         aDoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=3GwnuhQdIORWgD9BROvJZtFDVEPlXSzGDz8GjXATe74=;
        b=FMkmxRSnd5CEkUltfW4mf7wh5wDd2V5Ah7xDTxF/buuybIhyPwPHj0gH8m4Z0Lc2KS
         UeEP9bfjqWKP9wzdERW/0OsBkwbsEX3kdZZ3Mkm0r/pKymbqkew5JkB1Efi6FEmFRgNG
         TgQjAfGxqTjcdyTKvmiZ9WjuIWocCqu2NN6Btn4zWdj+wKiq915NY418AVGBL4SGGm4e
         q9ZCqPpkjH3d+fAGPQa6JoSOLpNk3OdEUnSRVBRrPBc5qcGMfMuqh3nml5fhQBF3uhP/
         f3UUB5Q9DbjX4b++dpUfNk7minVoNVb9qUQJVoahh5paW1GEZ6IONJJFJfHJJ6sMyGep
         7JlQ==
X-Gm-Message-State: AOAM530/6ME1nu8DUGqJHUq6zpD7g1RLnT9YLcJqUxNkqKfZz8N6DSFj
        27s+cRcG3VfO28igzY7i0Dwcxx6F4Qw=
X-Google-Smtp-Source: ABdhPJz/SMofVEOPj9oZ3ppUKC5RsFpFJAxzXyPr3kYpPSiJo9OQZSqFexl+L1UkvcHEZGIphaVsRw==
X-Received: by 2002:adf:fd05:: with SMTP id e5mr3525217wrr.225.1608286332557;
        Fri, 18 Dec 2020 02:12:12 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id u66sm11638999wmg.2.2020.12.18.02.12.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Dec 2020 02:12:12 -0800 (PST)
Subject: Ping: [patch] close_range.2: new page documenting close_range(2)
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     Stephen Kitt <steve@sk2.org>
Cc:     linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-kernel@vger.kernel.org,
        Christian Brauner <christian.brauner@ubuntu.com>
References: <20201208215133.30575-1-steve@sk2.org>
 <20201209095817.7ksihhftmnd3c3hi@wittgenstein>
 <5f69d42d-c36d-b98a-3d00-7a5e7f489a07@gmail.com>
 <20201209105618.okw5lgcdikg5bvae@wittgenstein>
 <0ea38a7a-1c64-086e-3d64-38686f5b7856@gmail.com>
 <20201212121419.odpgbaigrjhpkjnm@wittgenstein>
 <47a388ca-bcd8-d917-0a0a-cdbd185d6998@gmail.com>
Message-ID: <6c32a7c3-4bed-8d5e-134f-47a4bd49dc78@gmail.com>
Date:   Fri, 18 Dec 2020 11:12:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <47a388ca-bcd8-d917-0a0a-cdbd185d6998@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Stephen,

Linux 5.10 has been recently released.
Do you have any updates for this patch?

Thanks,

Alex

On 12/12/20 6:58 PM, Alejandro Colomar (man-pages) wrote:
> Hi Christian,
> 
> Makes sense to me.
> 
> Thanks,
> 
> Alex
> 
> On 12/12/20 1:14 PM, Christian Brauner wrote:
>> On Thu, Dec 10, 2020 at 03:36:42PM +0100, Alejandro Colomar (man-pages) wrote:
>>> Hi Christian,
>>
>> Hi Alex,
>>
>>>
>>> Thanks for confirming that behavior.  Seems reasonable.
>>>
>>> I was wondering...
>>> If this call is equivalent to unshare(2)+{close(2) in a loop},
>>> shouldn't it fail for the same reasons those syscalls can fail?
>>>
>>> What about the following errors?:
>>>
>>> From unshare(2):
>>>
>>>        EPERM  The calling process did not have the  required  privi‐
>>>               leges for this operation.
>>
>> unshare(CLONE_FILES) doesn't require any privileges. Only flags relevant
>> to kernel/nsproxy.c:unshare_nsproxy_namespaces() require privileges,
>> i.e.
>> CLONE_NEWNS
>> CLONE_NEWUTS
>> CLONE_NEWIPC
>> CLONE_NEWNET
>> CLONE_NEWPID
>> CLONE_NEWCGROUP
>> CLONE_NEWTIME
>> so the permissions are the same.
>>
>>>
>>> From close(2):
>>>        EBADF  fd isn't a valid open file descriptor.
>>>
>>> OK, this one can't happen with the current code.
>>> Let's say there are fds 1 to 10, and you call 'close_range(20,30,0)'.
>>> It's a no-op (although it will still unshare if the flag is set).
>>> But souldn't it fail with EBADF?
>>
>> CLOSE_RANGE_UNSHARE should always give you a private file descriptor
>> table independent of whether or not any file descriptors need to be
>> closed. That's also how we documented the flag:
>>
>> /* Unshare the file descriptor table before closing file descriptors. */
>> #define CLOSE_RANGE_UNSHARE	(1U << 1)
>>
>> A caller calling unshare(CLONE_FILES) and then an emulated close_range()
>> or the proper close_range() syscall wants to make sure that all unwanted
>> file descriptors are closed (if any) and that no new file descriptors
>> can be injected afterwards. If you skip the unshare(CLONE_FILES) because
>> there are no fds to be closed you open up a race window. It would also
>> be annoying for userspace if they _may_ have received a private file
>> descriptor table but only if any fds needed to be closed.
>>
>> If people really were extremely keen about skipping the unshare when no
>> fd needs to be closed then this could become a new flag. But I really
>> don't think that's necessary and also doesn't make a lot of sense, imho.
>>
>>>
>>>        EINTR  The close() call was interrupted by a signal; see sig‐
>>>               nal(7).
>>>
>>>        EIO    An I/O error occurred.
>>>
>>>        ENOSPC, EDQUOT
>>>               On NFS, these errors are not normally reported against
>>>               the first write which exceeds  the  available  storage
>>>               space,  but  instead  against  a  subsequent write(2),
>>>               fsync(2), or close().
>>
>> None of these will be seen by userspace because close_range() currently
>> ignores all errors after it has begun closing files.
>>
>> Christian
>>

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
