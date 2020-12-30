Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 04B2B2E7C85
	for <lists+linux-man@lfdr.de>; Wed, 30 Dec 2020 22:04:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726470AbgL3VCH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Dec 2020 16:02:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57066 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726462AbgL3VCH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Dec 2020 16:02:07 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50B38C061573
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 13:01:26 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id y23so5805840wmi.1
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 13:01:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=LcYWquoQdl1TM22cLcO/4Q0OiaD8uEt/I7RNvmKI88c=;
        b=sAsA+inBOjQ9SeOOk6jBB9oecacViHUix5kyIeGSH6ZKIT4rBq30SuPTQUa/y5Sw/k
         GRUoXuF0Jylzo/z0AjFY+uvvaZORbDNSSNTjMHD5cbgH6oNrWIytPn71JA4Rz84SbJGG
         XOPZ9JZy2ZIurODunK94Tha0DOWCxqAvK6PXou7rYOlIfJEdzOXVXohCEzSjV0N5GfTd
         PyY1U/8ockpsSEIl+eUyRVKPRm7Ux1xX5gpfIqknwkLzfokIKgqimqJUkW44ek499ywp
         I7A8SoQvj0ZHm7htO2cLIp55+gw6C40+beRhqf/S3I27dkdcjShcvqqKq2Nn/rHP1DlB
         Segw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=LcYWquoQdl1TM22cLcO/4Q0OiaD8uEt/I7RNvmKI88c=;
        b=lD8KX0gonjDVQtAkyIidIAOhRajxjWp4ZB3xJA3S3/BngyaWWHbXYrs9HCcxjiJXmp
         3+4+ujz6db2u7oQPCfu6RPUJQO1ex2Nc57On0zffPOwY4E5qIm2UuFwyzRELV7kHqCdI
         AN7w+9RrnrtYqokTntcTkkCHTksa6/90sNqa1NCsFjMTGnFSqv823q7RpeaLPrx0BXod
         cXQyL7dDbgBVOOlzFS87hxtVwC8Rk006i/G7wuDb2/OK67cTTycJrvdQvQdabxBoVc1Q
         PCMX52wNpXdPimQIxdwTQx2IJWS9F+v7GFoeJZqhdnRSprv1J730FP3l2m0I1Izh/ZX3
         vt4g==
X-Gm-Message-State: AOAM533uzpuToiV47/r/2Rm64RoK2sZNTdIMpcgLju48XPznKepxz2Vq
        gLz/ITxBsl2p03TmRStNYX8RLbPHM2Y=
X-Google-Smtp-Source: ABdhPJxor6yMZyj6pDFrtGsDIiQAAeCx2DV4NCf8zDE8TvJLnKbfTpvpzY7cemsaTObnuMzlXXRsSw==
X-Received: by 2002:a05:600c:3510:: with SMTP id h16mr8981173wmq.156.1609362085052;
        Wed, 30 Dec 2020 13:01:25 -0800 (PST)
Received: from [192.168.0.160] ([170.253.49.0])
        by smtp.gmail.com with ESMTPSA id o125sm9322299wmo.30.2020.12.30.13.01.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Dec 2020 13:01:24 -0800 (PST)
Subject: Re: [PATCH v2 2/2] Various pages: Normalize NOTES about nonexistent
 glibc wrappers
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Ganimedes Colomar <gacoan.linux@gmail.com>,
        linux-man@vger.kernel.org
References: <91ef6bdb-76db-ffdd-7d43-51d7abeb9beb@gmail.com>
 <20201230152025.300622-3-alx.manpages@gmail.com>
 <fd9894ed-43d4-6f8e-665f-812c407d58e1@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <0defcc4c-2dc1-d35e-c0a7-75034941e9af@gmail.com>
Date:   Wed, 30 Dec 2020 22:01:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <fd9894ed-43d4-6f8e-665f-812c407d58e1@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 12/30/20 5:07 PM, Michael Kerrisk (man-pages) wrote:
> Hello Alex and Ganimedes,
> 
> On 12/30/20 4:20 PM, Alejandro Colomar wrote:
>> From: Ganimedes Colomar <gacoan.linux@gmail.com>
>>
>> See previous commit.
>>
>> This commit normalizes texts under sections other than SYNOPSIS
>> (most of them in NOTES).
> 
> Good! Patch applied. I made one minor fix; see below.
> 
>> Signed-off-by: Ganimedes Colomar <gacoan.linux@gmail.com>
>> Cowritten-by: Alejandro Colomar <alx.manpages@gmail.com>
>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
>> ---
>>  man2/add_key.2              | 2 +-
>>  man2/arch_prctl.2           | 6 ++----
>>  man2/getdents.2             | 8 ++++----
>>  man2/io_cancel.2            | 2 +-
>>  man2/io_destroy.2           | 2 +-
>>  man2/io_getevents.2         | 2 +-
>>  man2/io_setup.2             | 2 +-
>>  man2/io_submit.2            | 2 +-
>>  man2/kexec_load.2           | 3 +--
>>  man2/keyctl.2               | 2 +-
>>  man2/pidfd_getfd.2          | 2 +-
>>  man2/pidfd_open.2           | 2 +-
>>  man2/pidfd_send_signal.2    | 2 +-
>>  man2/request_key.2          | 2 +-
>>  man2/s390_guarded_storage.2 | 3 +--
>>  man2/s390_pci_mmio_write.2  | 3 +--
>>  man2/s390_runtime_instr.2   | 3 +--
>>  man2/s390_sthyi.2           | 3 +--
>>  man2/seccomp.2              | 3 +++
>>  man2/sysctl.2               | 3 +--
>>  20 files changed, 26 insertions(+), 31 deletions(-)
>>
> 
> [...]
> 
>> --- a/man2/kexec_load.2
>> +++ b/man2/kexec_load.2
>> @@ -335,8 +335,7 @@ system call first appeared in Linux 3.17.
>>  .SH CONFORMING TO
>>  These system calls are Linux-specific.
>>  .SH NOTES
>> -Currently, there is no glibc support for these system calls.
>> -Call them using
>> +Glibc does not provide a wrapper for this system call; call it using
> 
> I changed to: "... these system calls; call them using..."

Hello Michael,

Good catch!

I'll send you a first round of fixes for syscalls and wrappers in a moment.

Thanks,

Alex

> 
> Thanks,
> 
> Michael
> 
