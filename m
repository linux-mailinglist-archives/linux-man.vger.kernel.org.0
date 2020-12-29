Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 068622E73F8
	for <lists+linux-man@lfdr.de>; Tue, 29 Dec 2020 21:46:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726111AbgL2UqZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Dec 2020 15:46:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726126AbgL2UqZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Dec 2020 15:46:25 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E449C061574
        for <linux-man@vger.kernel.org>; Tue, 29 Dec 2020 12:45:45 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id m5so15677254wrx.9
        for <linux-man@vger.kernel.org>; Tue, 29 Dec 2020 12:45:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=NPO0K1qVuFFQ3SZVgxusSGOycD5LpE8FBtM5gk8ciR8=;
        b=uqH/TS4YhMVUcSmMt+YNVfUogezfow0QTT1Um8QonS0DXBRzsui8tfpJQEUhkEZkzt
         vmJ3CBb+M+nJU/ecGznV3vnHeVvcs9sjQ28JM0RkgjoIP4DrU/UJzhRf4YS3AjMMmag9
         9ngjb9oqOHIN5DTeHsGRlz8SSM4jg5iRnmjGSDY0RcVk3G5kqidKL96KYMp+UNUAqyJT
         MktIjtjXAKIxYjrtiMMyphVdjQHJLK9E2qxpyuXOahHJ7i0n0z0liN9cLMBAGZqtdXRH
         YbEtOE8k9Hclof70D1JHQbaNLh97xFf4jfQyBAwQWiLSrlTR+5hvfpsEnJxjWXHZl2Bc
         CpHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=NPO0K1qVuFFQ3SZVgxusSGOycD5LpE8FBtM5gk8ciR8=;
        b=K5/QuImUqWKTkQSdcl8XY12UORJNKWLC42RSJjexT9gDebq8j4QH+yAD/kvGsrP8vu
         g+ggmLJjnru+WEA2STqN4GJa/d7ftYyHtY75JepXk80+r+pP90siyKeNavZ5zpJtY2/4
         xvH58NgtAcsXDp4f7uiGu3k+Jigcr9hxYzndOJnasZi9qFhc4Pj2RWGAfMhBMYwq1And
         QgOWhJVlzJHjUCoFRs4gYJAI/DKPyoF3kWIbA04OspRSPx1qYUsfyqNNaQ3X6qdnroO5
         0wOO3Xe5dN7wdCPYDKeROkp5updUb3nOxOqDQ4kMCnsa1Z5odQTvHvGLvRLZKZbcw446
         3wQA==
X-Gm-Message-State: AOAM5319yKKGVvzzWwQuyZ4X29zXHojYz0xiH7770hPRo4dasPZo3zZn
        Q/H+Ueu1yD/AkVxVWujG9S8=
X-Google-Smtp-Source: ABdhPJzjFhJDd3oCvGYQ7QJPD85UweLeHaQG6yyvWO0hw2JqoIHEMCpMXJFgq5na9cu43jyyXbyHgw==
X-Received: by 2002:adf:ce82:: with SMTP id r2mr57165864wrn.181.1609274743968;
        Tue, 29 Dec 2020 12:45:43 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id b14sm60811046wrx.77.2020.12.29.12.45.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Dec 2020 12:45:43 -0800 (PST)
Subject: Re: [PATCH 0/2] Normalize notes about missing glibc wrappers
To:     mtk.manpages@gmail.com
Cc:     linux-man <linux-man@vger.kernel.org>,
        Ganimedes Colomar <gacoan.linux@gmail.com>
References: <20201229143859.17473-1-alx.manpages@gmail.com>
 <CAKgNAkiFtdOjvXEXUTO-XiTACd1xmfMfyWzW=QJHpzgTOdE4aQ@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <28019b16-51f3-7b48-b4f9-27f469d04fd1@gmail.com>
Date:   Tue, 29 Dec 2020 21:45:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <CAKgNAkiFtdOjvXEXUTO-XiTACd1xmfMfyWzW=QJHpzgTOdE4aQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 12/29/20 9:19 PM, Michael Kerrisk (man-pages) wrote:
> Hi Alex, hi Ganimedes!
> 
> On Tue, 29 Dec 2020 at 15:39, Alejandro Colomar <alx.manpages@gmail.com> wrote:
>>
>> Hi Michael,
>>
>> Here are 2 patches my brother and I prepared together.
> 
> Thanks. I'm really happy to have patches like this that bring
> consistent language where exactly the same thing is being talked
> about. I will send one or two comments on the patches.
> 
>> There are still some pages that we couldn't find with grep,
> 
> Does something like this help find others:
> 
> $ cd man2
> $ grep -l syscall $(git grep -l wrapper)

Hey M,

It may still not find everything, and I'll probably have to read through
a lot of text, so what I was doing is I'm comparing all the prototypes
against the glibc sources to fix them (I have a few of those patches
that I'm about to send (including the off64_t one).), and that way I'll
also find quickly which ones are missing in glibc.

Thanks,

Alex

> 
> ?
> 
> Thanks,
> 
> Michael
> 
>> so I'll send you more patches continuing these 2 as I find them
>> while fixing other things.
>>
>> Cheers,
>>
>> Alex
>>
>> Ganimedes Colomar (2):
>>   Various pages: Normalize SYNOPSIS notes about non-existing glibc
>>     wrappers
>>   Various pages: Normalize NOTES about non-existing glibc wrappers
>>
>>  man2/add_key.2              | 5 +++--
>>  man2/arch_prctl.2           | 9 +++++----
>>  man2/clone.2                | 2 +-
>>  man2/delete_module.2        | 2 +-
>>  man2/getdents.2             | 8 ++++----
>>  man2/init_module.2          | 6 +-----
>>  man2/io_cancel.2            | 2 +-
>>  man2/io_destroy.2           | 2 +-
>>  man2/io_getevents.2         | 2 +-
>>  man2/io_setup.2             | 2 +-
>>  man2/io_submit.2            | 2 +-
>>  man2/kexec_load.2           | 3 +--
>>  man2/keyctl.2               | 5 +++--
>>  man2/pidfd_getfd.2          | 5 ++++-
>>  man2/pidfd_open.2           | 5 ++++-
>>  man2/pidfd_send_signal.2    | 4 +++-
>>  man2/request_key.2          | 5 +++--
>>  man2/s390_guarded_storage.2 | 6 ++++--
>>  man2/s390_pci_mmio_write.2  | 6 ++++--
>>  man2/s390_runtime_instr.2   | 6 ++++--
>>  man2/s390_sthyi.2           | 6 ++++--
>>  man2/sysctl.2               | 3 +--
>>  22 files changed, 55 insertions(+), 41 deletions(-)
>>
>>
>> base-commit: c55f66855eccfcd92b35fe7b13a326121f2ee0fd
>> --
>> 2.29.2
>>
> 
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
