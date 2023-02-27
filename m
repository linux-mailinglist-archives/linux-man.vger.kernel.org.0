Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0CA8A6A4AAC
	for <lists+linux-man@lfdr.de>; Mon, 27 Feb 2023 20:19:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229752AbjB0TTG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 27 Feb 2023 14:19:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229693AbjB0TTG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 27 Feb 2023 14:19:06 -0500
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04D771968A
        for <linux-man@vger.kernel.org>; Mon, 27 Feb 2023 11:19:05 -0800 (PST)
Received: by mail-ed1-x530.google.com with SMTP id o15so27678451edr.13
        for <linux-man@vger.kernel.org>; Mon, 27 Feb 2023 11:19:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OFqEiVnuAdznBroQtdKGAVp6quluX0ej8aKgT9Fm1HU=;
        b=H/CrL9N2b7pH6X4f42Ae/U+I1aj1ZT08WFAz4VAFpx1lEjNmhuvHl++JGI6LQXH6AJ
         xr1Cd0/7IiGmQPOnLFP1PVV/8DSirgs+sHR5A9a8CpCiPE5ecPSmnu5XPnnBn+CHN8BN
         rV7awb4de916emp7aPN4okaUBPa7/DxJCr6KsR6DjS00DLH6jhYPTm03efWkKQmwKGGN
         hRAMQc1MuWFNoZffW4LgIGN6CMO1R4dAO3XKVyIX6dwgneJBBzVe6U9LwzHX1LqAsuzy
         JlrWJGLohYrn7wLiNkwBCAo84OA9Q0UahiLq59y1UHgNFgUSomO8TjTqprEOW3VF0Fb+
         1tGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OFqEiVnuAdznBroQtdKGAVp6quluX0ej8aKgT9Fm1HU=;
        b=dNIxZs6JQo1AJ2Jbe7bXo7KvL+gALkax/poqdgFnCW+qpxGC4z7R5A18y7f79YuReZ
         CGxB4TWj0v0QwzrFHOJjIVqvULzDrw/43lYNozap1UI6k/MR1mjUy3VwaSrbBE1B+P8n
         P3hdaTP7WnWMuHdrzchv8GMWP9NmNx4kMzElBAed0immsgOXecLmOLxkEJZ3t3oGa/gI
         LH0wJqRsO1eqj5KC4MgA7mIVGCBlWt1FbFqXf6BA0LPnyzF7KTTYC4A3CYIqkP/hiiao
         ZKn/ZOBVQC+YKl74E+pKafL23frUyT5+goPYj6bpKB8vhckbDSI36/uUxe9aghjcXlqv
         qaUA==
X-Gm-Message-State: AO0yUKVRVk7QoDB/N27C+fQMquwOVmp76rfu/tP7skzmzMNROxiRsKOH
        Gnv9mWrXcD1XZFWjOIcSC3BCpZjPGyo=
X-Google-Smtp-Source: AK7set/n/rSrJmG6Apv1HBkpyUFMvZ1qp0fgFIDU2AJz2BVLW7ZTEFwZ4hbRs8Z+iDWwJybYnqZZlA==
X-Received: by 2002:a17:906:9f29:b0:8b1:3821:1406 with SMTP id fy41-20020a1709069f2900b008b138211406mr47907337ejc.45.1677525542990;
        Mon, 27 Feb 2023 11:19:02 -0800 (PST)
Received: from ?IPV6:2a02:587:6e15:d61a:5cc8:cceb:8cd5:6326? ([2a02:587:6e15:d61a:5cc8:cceb:8cd5:6326])
        by smtp.gmail.com with ESMTPSA id h11-20020a1709063c0b00b008e82cb55195sm3514096ejg.203.2023.02.27.11.19.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Feb 2023 11:19:02 -0800 (PST)
Message-ID: <aa9ed282-a4ff-b853-b07a-9acb9b3d1739@gmail.com>
Date:   Mon, 27 Feb 2023 21:19:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH] ptrace.2: Add details about usage of
 PTRACE_GET_SYSCALL_INFO
Content-Language: en-US
To:     linux-man@vger.kernel.org
Cc:     alx.manpages@gmail.com, ldv@strace.io, mtk.manpages@gmail.com,
        lineprinter0@gmail.com, Nate Eldredge <nate@thatsmathematics.com>,
        Alejandro Colomar <alx@kernel.org>
References: <9f4aaf34-66cc-554f-d45f-73f0bb9b4a94@gmail.com>
 <20230227191731.15069-1-fvalasiad@gmail.com>
From:   =?UTF-8?B?zqbPjs+EzrfPgiDOks6xzrvOsc+DzrnOrM60zrfPgg==?= 
        <fvalasiad@gmail.com>
In-Reply-To: <20230227191731.15069-1-fvalasiad@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex!

Is that good enough?

-- fvalasiad --

On 27/2/23 21:17, Fotios Valasiadis wrote:
> Document the role of PTRACE_O_TRACESYSGOOD option in connection with
> PTRACE_GET_SYSCALL_INFO.
>
> Came upon this after writing a test program using PTRACE_GET_SYSCALL_INFO.
> After failing to find what's wrong I posted a StackOverflow question
> which you can find right here:
> <https://stackoverflow.com/questions/72410182/ptrace-get-syscall-info-always-returns-info-op-as-ptrace-syscall-info-none>
>
> Nate Eldredge found out what happens by looking into the kernel's source
> code, here is a link to the relevant part
> <https://github.com/torvalds/linux/blob/8291eaafed36f575f23951f3ce18407f480e9ecf/kernel/ptrace.c#L1018>
>
> In the code it can be seen that in case of system call entry or
> exit stops, the union is filled if and only if the signal matches
> "SIGTRAP | 0x80", a signal which is only sent if the PTRACE_O_TRACESYSGOOD
> option is set.  You can read about that in the PTRACE_O_TRACESYSGOOD
> section of ptrace(2)'s manual.
>
> Complements: fc91449cb "ptrace.2: Document PTRACE_GET_SYSCALL_INFO"
> Cowritten-by: Dmitry V. Levin <ldv@strace.io>
> Signed-off-by: Dmitry V. Levin <ldv@strace.io>
> Signed-off-by: Fotios Valasiadis <fvalasiad@gmail.com>
> Acked-by: Nate Eldredge <nate@thatsmathematics.com>
> Cc: Elvira Khabirova <lineprinter0@gmail.com>
> Signed-off-by: Alejandro Colomar <alx@kernel.org>
> ---
>   man2/ptrace.2 | 9 +++++++++
>   1 file changed, 9 insertions(+)
>
> diff --git a/man2/ptrace.2 b/man2/ptrace.2
> index 55d9fd36d..9737b3825 100644
> --- a/man2/ptrace.2
> +++ b/man2/ptrace.2
> @@ -1111,6 +1111,15 @@ stop.
>   .B PTRACE_SYSCALL_INFO_NONE
>   No component of the union contains relevant information.
>   .RE
> +.IP
> +In case of system call entry or exit stops,
> +the data returned by
> +.B PTRACE_GET_SYSCALL_INFO
> +is limited to type
> +.B PTRACE_SYSCALL_INFO_NONE
> +unless
> +.B PTRACE_O_TRACESYSGOOD
> +option is set before the corresponding system call stop has occurred.
>   .\"
>   .SS Death under ptrace
>   When a (possibly multithreaded) process receives a killing signal
