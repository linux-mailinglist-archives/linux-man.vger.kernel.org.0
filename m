Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B43F96A2526
	for <lists+linux-man@lfdr.de>; Sat, 25 Feb 2023 00:43:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229452AbjBXXnX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 24 Feb 2023 18:43:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229446AbjBXXnW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 24 Feb 2023 18:43:22 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B5331A4A7
        for <linux-man@vger.kernel.org>; Fri, 24 Feb 2023 15:43:21 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id az36so834377wmb.1
        for <linux-man@vger.kernel.org>; Fri, 24 Feb 2023 15:43:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lWUBL9Tgv1Ii7Xkna4xTR9dyBjNsLBpxXOFhCrSCJps=;
        b=DJRo3WBxxTS68XSU35kQgBA8hOKvFgRn8rwVsVgrejpFzJZAeAhtZlOM0ei1Ue8nv0
         FG9Juf2sHwIkVGfD3r1IlqQNiDnPTV26bXm0A2ASw/iupF3jb0VS+Olrr0TbOPf6FEB1
         K+CEcKaar+D05IkISWyPDwkvjrfiNUIrj9H2ki8YWt8d57d2Eb4idw0eLd3jax1JfmMG
         ARBV01B5j5EBGLO7lSGqok8lUS9vPQaPvWEOFEYA0c2V9/7qVpspXqz2p4/rB+4LHUxu
         r+kxPh7p+vugEcd9o5wpTkdlCdAUMv1+ipDIOnSmjW6gYSugGB8sNQrkWa0e7VddNC4y
         4pcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lWUBL9Tgv1Ii7Xkna4xTR9dyBjNsLBpxXOFhCrSCJps=;
        b=c5WQUMVgcZvbfnh7pAwqggWRMydQe50Eb5c0eh60DwWyea8WzbqM7Pda1sagRNXysY
         Nk2UPzKiiudxtVXHyOP2b61JmR41kCfNYuypbZfAHzugjOZKBvDwL1JZ8mr/OiT0ATZG
         yc0MW5MOd4zl5aT8jgRib7P791Kzra9ZlMEIcIz5o1+WExr7jWfpopdDJCkrLsr4K10Z
         cBo5Xg78qECIHQ+X12i61l1dnIoHhUhXmeer5kLJzoU38JnF1ECo+4kt8roiNIkqkdFT
         1PWuLPKOmgvihplNhSF96sLFo/5S8D/T+inN7XH2AesWyUghpCzvLBvZ0Gmy7aTYUlxc
         SPrw==
X-Gm-Message-State: AO0yUKVE3FXrChZssqd2ciV758n+bG5AsuAEoP9DMXM96NdqWfdmXwvz
        xardGEtAw7W9Hcnjq2Uh2jutJo4NJ08=
X-Google-Smtp-Source: AK7set9/HRepcbuKVVzqym7frXrY0nH0d1UkByRr20qEakncpuC3kBvabOnhuUSAC3NTPQcfCrxQ1A==
X-Received: by 2002:a05:600c:548c:b0:3dc:3b29:7a4 with SMTP id iv12-20020a05600c548c00b003dc3b2907a4mr1161321wmb.0.1677282199864;
        Fri, 24 Feb 2023 15:43:19 -0800 (PST)
Received: from ?IPV6:2a02:587:6e15:d61a:5cc8:cceb:8cd5:6326? ([2a02:587:6e15:d61a:5cc8:cceb:8cd5:6326])
        by smtp.gmail.com with ESMTPSA id t25-20020a7bc3d9000000b003e896d953a8sm4372991wmj.17.2023.02.24.15.43.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Feb 2023 15:43:19 -0800 (PST)
Message-ID: <c8931c0d-afa2-e43f-cc53-4c29114f322f@gmail.com>
Date:   Sat, 25 Feb 2023 01:43:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH] ptrace.2: Add details about usage of
 PTRACE_GET_SYSCALL_INFO
Content-Language: en-US
To:     "Dmitry V. Levin" <ldv@strace.io>
Cc:     linux-man@vger.kernel.org, alx.manpages@gmail.com,
        mtk.manpages@gmail.com, Nate Eldredge <nate@thatsmathematics.com>,
        Elvira Khabirova <lineprinter0@gmail.com>
References: <20230224163142.29934-1-fvalasiad@gmail.com>
 <20230224185347.GB7758@altlinux.org>
 <2d242bd0-becc-71d3-3666-43c9271d143b@gmail.com>
 <20230224220502.GA9955@altlinux.org>
 <23a102ec-e146-0e82-c5d2-434e9ae56b28@gmail.com>
 <20230224233148.GB9955@altlinux.org>
From:   =?UTF-8?B?zqbPjs+EzrfPgiDOks6xzrvOsc+DzrnOrM60zrfPgg==?= 
        <fvalasiad@gmail.com>
In-Reply-To: <20230224233148.GB9955@altlinux.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Better?

diff --git a/man2/ptrace.2 b/man2/ptrace.2
index 55d9fd36d..ad0543b0b 100644
--- a/man2/ptrace.2
+++ b/man2/ptrace.2
@@ -1111,6 +1111,15 @@ stop.
  .B PTRACE_SYSCALL_INFO_NONE
  No component of the union contains relevant information.
  .RE
+.IP
+Note that in case of
+syscall entry or exit stops, the data returned by
+.B PTRACE_GET_SYSCALL_INFO
+is limited to type
+.B PTRACE_SYSCALL_INFO_NONE
+unless
+.B PTRACE_O_TRACESYSGOOD
+option is set before the corresponding ptrace stop has occurred.
  .\"
  .SS Death under ptrace
  When a (possibly multithreaded) process receives a killing signal

On 25/2/23 01:31, Dmitry V. Levin wrote:
> On Sat, Feb 25, 2023 at 01:05:24AM +0200, Φώτης Βαλασιάδης wrote:
>> So, what about this?
>>
>> diff --git a/man2/ptrace.2 b/man2/ptrace.2
>> index 55d9fd36d..e5f49c289 100644
>> --- a/man2/ptrace.2
>> +++ b/man2/ptrace.2
>> @@ -1111,6 +1111,16 @@ stop.
>>    .B PTRACE_SYSCALL_INFO_NONE
>>    No component of the union contains relevant information.
>>    .RE
>> +.IP
>> +Note that in case of
>> +.B PTRACE_SYSCALL
>> +syscall entry or exit stops, the data returned by
> I'm not sure about mentioning PTRACE_SYSCALL in this context as it's not
> the only way to have the tracee stopped at a syscall stop.
>
>> +.B PTRACE_GET_SYSCALL_INFO
>> +is limited to type
>> +.B PTRACE_SYSCALL_INFO_NONE
>> +unless
>> +.B PTRACE_O_TRACESYSGOOD
>> +option is set before the corresponding ptrace stop has occurred.
>>    .\"
>>    .SS Death under ptrace
>>    When a (possibly multithreaded) process receives a killing signal
