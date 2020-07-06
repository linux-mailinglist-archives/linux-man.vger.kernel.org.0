Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 80B9E215423
	for <lists+linux-man@lfdr.de>; Mon,  6 Jul 2020 10:45:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728505AbgGFIpG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jul 2020 04:45:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728404AbgGFIpG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jul 2020 04:45:06 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8F9EC061794
        for <linux-man@vger.kernel.org>; Mon,  6 Jul 2020 01:45:05 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id o8so38341005wmh.4
        for <linux-man@vger.kernel.org>; Mon, 06 Jul 2020 01:45:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=5l4Gh+x3CpKH+cMT4aPVBwnXTi6OSsfFtmjy2o+PERs=;
        b=EfbxMN71LMiFya62iuMo5XcEiVV6N9NikBiOVvttZ5/glnMs7jYQPUAQOhkExRv+B1
         XxQq7prA+hbQyz75Xg7l0DUJ7z5cDNXpmtINy8cjaQxUgKKcD8x+gvm0KY13qWFF3qab
         OFfu1htY7sfuPDNvR6WEHQFllGUBSDyJdg6zdY0heN2Pk3ftTlfM2nVELLY+cd6JsFHP
         2B1VaC5tqrD6HNQDJ8cKriQ2yXFJaFPWBPSrXnc549QfSi8VeBPT1qF4jT8j65IZ1bsD
         3YkWwEi9iWzUuYi6nyV+OPUOMf/U3+LBNMQbYn8CUDE1oh2ofS/52pr5NqtZzhCLu5YZ
         bX5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=5l4Gh+x3CpKH+cMT4aPVBwnXTi6OSsfFtmjy2o+PERs=;
        b=pF4ZBND3GgvcScUBQorTvGggiFmzJutjPwC/J5UwWp3bHiF3IlbRyea4DT8M/6ctE9
         /Bb1ry/yNyabKuLYB0/5WfqspE7hoLOIKPaoASwCMFyiindmUbgqpVxikHYKW6casBTb
         JhMEiE1e56I4F4y0VuFWYuS/iQneAhhMXNour7aeQ0JFZHimlYg7g4WHF9HI1kWgF7sv
         qFddIKD1YBDSOF1mC7aUaSI7+RmHfD+K4P8+ewuHm0FRQljfDEDxKdnBLEG8He5qYl6e
         QtToEaoFnig4WC5QQ9HB5RSV5qs4G1Y5ptIGROAY/UUeE9Y2Xz0qVL2oOjjDj9yP4A/C
         bLkw==
X-Gm-Message-State: AOAM533/QKowCBk4ib5LnGB7CRKpmIWW59mZ3RSGFahvHjH6X1jYZfWd
        EPr/PNU45Y8GgCqIywQ8R7Nmw4BK
X-Google-Smtp-Source: ABdhPJyxpRyVVV3FpxbJ+KCtz09GjlTwproqaeUOUSr25BFliZXbVkg+zAbg9TYiArJjcosrxqquEw==
X-Received: by 2002:a1c:408b:: with SMTP id n133mr47658611wma.88.1594025104356;
        Mon, 06 Jul 2020 01:45:04 -0700 (PDT)
Received: from ?IPv6:2001:a61:3adb:8201:9649:88f:51f8:6a21? ([2001:a61:3adb:8201:9649:88f:51f8:6a21])
        by smtp.gmail.com with ESMTPSA id 33sm24631355wri.16.2020.07.06.01.45.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2020 01:45:03 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] man3/*: ffix, change '-' to '\-' for options
To:     Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
References: <20200701225059.GA26940@rhi.hi.is>
 <47d84128-6235-c1c0-b54e-cf1e87836297@gmail.com>
 <20200704000211.GA1330@rhi.hi.is>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <3defbf91-5022-b042-ee2b-779fa5931343@gmail.com>
Date:   Mon, 6 Jul 2020 10:45:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200704000211.GA1330@rhi.hi.is>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/4/20 2:02 AM, Bjarni Ingi Gislason wrote:
> On Thu, Jul 02, 2020 at 12:27:25PM +0200, Michael Kerrisk (man-pages) wrote:
>> Hello Bjarni,
>>
>> On 7/2/20 12:50 AM, Bjarni Ingi Gislason wrote:
>>>   Change '-' to '\-' for the prefix of names to indicate an option.
>>>
>>> Signed-off-by: Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
>>
>> Patch applied, but:
>>
>>> ---
>>>  man3/dlopen.3             | 2 +-
>>>  man3/fts.3                | 2 +-
>>>  man3/getsubopt.3          | 2 +-
>>>  man3/insque.3             | 2 +-
>>>  man3/mq_getattr.3         | 2 +-
>>>  man3/posix_spawn.3        | 8 ++++----
>>>  man3/pthread_setname_np.3 | 2 +-
>>>  man3/sincos.3             | 2 +-
>>>  man3/strfromd.3           | 6 +++---
>>
>> The above piece was broken, so I applied manually. Was your patch 
>> against master?
>>
>   I always use my own copy of the repository where I apply my new
> patches to.

Please don't. When I've rejected particular changes (as below),
for reasons that I already explained (several times), then basing
your patches on private repo that still has those changes will
just cause breakage and wasted time for me. Please base patches
off a pristine master.

Thanks,

Michael


>   The difference is the non-applied patches to master, that change a
> two-fonts macro to a single-font macro for a single argument.
> 
>   In this case in the man3/strfromd.3, ".B f" (master has ".BR f").
> 
>   So my "git pull" sometimes causes a merge conflict, which is easy for
> me to correct.
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
