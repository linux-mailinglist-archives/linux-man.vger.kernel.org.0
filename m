Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AF34B36C015
	for <lists+linux-man@lfdr.de>; Tue, 27 Apr 2021 09:30:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230232AbhD0HbT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Apr 2021 03:31:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229547AbhD0HbS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Apr 2021 03:31:18 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50E59C061574
        for <linux-man@vger.kernel.org>; Tue, 27 Apr 2021 00:30:34 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id e5so29710521wrg.7
        for <linux-man@vger.kernel.org>; Tue, 27 Apr 2021 00:30:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=PcpvmjLq4HHNusT4TixPiPVhdykQ/ieanoaPjVIxxqQ=;
        b=ashzY/UH2KwVxKl52zD/jODUY166Pr+xGbEowIpUA9/ikJp3mHq85oKS/FsG+oBt1I
         2X4uE4NqsMYZSlf07cID8IZot6k47E21C8xvzq1muabQRjUrO83oDkrsoCeRnxPQCX6q
         RO3P2A9k7Soi3RgyfsdS9quwnnUwpDxBD8gUDoGRmYU8N7mv/mBi4jqvI+1vvYOtLDPj
         vfULLDGrcFwFlHJJRGRmD5FVI+GP8jDZ3JCbq4qxFaBmFEutllD7zX+Ecgc+WxEofpeu
         os44FaZv5FGA1UOSy4GdKWDDBFx6MAVAzdEO6YKBzyVXuPWA7jSHc5J1gtHZRdAlVTwY
         FG1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=PcpvmjLq4HHNusT4TixPiPVhdykQ/ieanoaPjVIxxqQ=;
        b=AYcQ3S3hiLlmR1/UG4CLIFfsJcRz+jh02b5bfjRVk264DFCPn6ZHJqceSJUmsNBMbB
         LGIcYjLgtqb7pWV2tGMGpWBmzibF1GPyFhAd4I0TIV/J39jAIHI/5sk4ISNsOpP/lfO7
         MteSUC3DluMYDLYw31YBnRteB73VPbsvpUmB4iVY4jCkx3x2KdSFrz4x7yB3m2UGu7PV
         Ew/y4pGTEP2dZdmpCTqx4W2MomUtKbuRaFB83JloItaqB5+ahxDUVl7GQ7HBt7fu39R3
         ggzJT01yu/Brx+XfhkzMrLGML3TDIUpUCB2RD+9BO23s/CynAZH4j4SwPqt+Rue8p71N
         49sQ==
X-Gm-Message-State: AOAM532XvqfSbCSdtjS2CC0H/odM1IaJ6sIgbZh7Tq2BdB8dzFlS1QBy
        FWbmxx1BOzLFUGJU3EQe6SE=
X-Google-Smtp-Source: ABdhPJzrD2k7NW606QrIdsXh16/UKc92zcHIrs9wwbBDo/BxK0r8GA66JsDOYWzkr02uC7XD3tgtZA==
X-Received: by 2002:adf:fb87:: with SMTP id a7mr27917696wrr.58.1619508633063;
        Tue, 27 Apr 2021 00:30:33 -0700 (PDT)
Received: from [10.8.0.106] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id q4sm47525wrs.21.2021.04.27.00.30.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Apr 2021 00:30:32 -0700 (PDT)
Sender: Alejandro Colomar <alx.mailinglists@gmail.com>
Subject: Re: [PING v1] [PATCH] ptrace.2: mention PTRACE_GET_SYSCALL_INFO in
 RETURN VALUE section
To:     "Dmitry V. Levin" <ldv@altlinux.org>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20210222164256.GA1943@altlinux.org>
 <20210426183927.GA11060@altlinux.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <f9e5705e-934d-3266-c15f-7b3865a6bb1b@gmail.com>
Date:   Tue, 27 Apr 2021 09:30:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210426183927.GA11060@altlinux.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Dmitry,

On 4/26/21 8:39 PM, Dmitry V. Levin wrote:
> Ping?

Sorry, Michael is very busy these days.  Please prefer sending the 
patches to both of us, so I can apply them if Michael doesn't see them.

> 
> On Mon, Feb 22, 2021 at 07:42:57PM +0300, Dmitry V. Levin wrote:
>> Mirror the wording about PTRACE_GET_SYSCALL_INFO return value semantics
>> from "DESCRIPTION" section to "RETURN VALUE" section.
>>
>> Reported-by: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
>> Complements: fc91449cb "ptrace.2: Document PTRACE_GET_SYSCALL_INFO"
>> Signed-off-by: Dmitry V. Levin <ldv@altlinux.org>
Patch applied.

Thanks,

Alex


>> ---
>>   man2/ptrace.2 | 7 +++++--
>>   1 file changed, 5 insertions(+), 2 deletions(-)
>>
>> diff --git a/man2/ptrace.2 b/man2/ptrace.2
>> index 5245338ba..c5e75c274 100644
>> --- a/man2/ptrace.2
>> +++ b/man2/ptrace.2
>> @@ -2327,8 +2327,11 @@ On success, the
>>   requests return the requested data (but see NOTES),
>>   the
>>   .B PTRACE_SECCOMP_GET_FILTER
>> -request returns the number of instructions in the BPF program, and
>> -other requests return zero.
>> +request returns the number of instructions in the BPF program,
>> +the
>> +.B PTRACE_GET_SYSCALL_INFO
>> +request returns the number of bytes available to be written by the kernel,
>> +and other requests return zero.
>>   .PP
>>   On error, all requests return \-1, and
>>   .I errno
>> -- 
>> ldv
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
