Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8AB836A347F
	for <lists+linux-man@lfdr.de>; Sun, 26 Feb 2023 23:14:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229701AbjBZWOg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 26 Feb 2023 17:14:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229700AbjBZWOf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 26 Feb 2023 17:14:35 -0500
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A3A4EB6F
        for <linux-man@vger.kernel.org>; Sun, 26 Feb 2023 14:14:34 -0800 (PST)
Received: by mail-ed1-x52a.google.com with SMTP id o15so16022631edr.13
        for <linux-man@vger.kernel.org>; Sun, 26 Feb 2023 14:14:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=j5XdlQTcsTmcrVMIo6PIqKdS4rCD5LZngoGEDQywloU=;
        b=UBYlMR0wLIhfYuGn1lYHTdwgDKX6I4uQTZelhsXvO+lCk9imiPwnp1oBab7SaEb0RO
         n0l1GLfeW/JEteW14HmpLHJNC37IrCfxqXnkrJq7QHb2ekyk7YXrBxa5nZEErhJ3pz1p
         ts7n0E8aVJ4N/73iw8zvdzWPnc5beSmVwoP/vUgl4L91I5wLa7kTXOQyWsLLudxCEnVP
         3bmGK0WyphSblltowhR7f0b3qXLvMBJlOAKF6vT9FRq88P6++9Yg8J87cFeuaMuZf2DW
         G/uGdINulyJTf36d9aZBs60kx89g6iJivwBk3kbuanlDApaibaEwLzeafm8dHvg8vYyu
         PCAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=j5XdlQTcsTmcrVMIo6PIqKdS4rCD5LZngoGEDQywloU=;
        b=X/EEdT1/IbOkhy92alFoeY8jPBRuT3jp5adODQDBxedsMcCDeHAgG+x7v3951Cr9qE
         AFHKVZmmx0S3Fy9HRReGaPYsIEqxZm6VWSjufolSqCi2VdvcVUrnjtQWA3MgvbD4RXiA
         1cpYtVCNYQMAAp0x2ZxzgRH/rBuItHLP+68r4pi07aeIiMvY9HtxQZzD6elWENFT1es2
         RNcdNhSD2P+uiZX3jQLzXpfQDwoC1PYshbEqRIdaKYH3/mC40aeJnMyALzNMT4YoLEDk
         cPMgd14Ip0OToxYZTXRXBpM/Jk0nmraqSGe+AlECArsViSgnJKMGHo+1/DyRa3W+mZDp
         FZmw==
X-Gm-Message-State: AO0yUKWu453QNqoH9scqXLKciiahWY2pv+dapF/fpC+ndqDuvOi5rLT+
        u9NQofkzqGQL9o6HOSzhF9U=
X-Google-Smtp-Source: AK7set/Bh2Gje1mRXiF6LTLv00Ghyl8ukBk+6gvPFue9uiQij+9h3bE5VmBjyKkUW+bA8289gxfsOA==
X-Received: by 2002:a17:907:a397:b0:8b1:800b:9fbf with SMTP id se23-20020a170907a39700b008b1800b9fbfmr27461079ejc.13.1677449672440;
        Sun, 26 Feb 2023 14:14:32 -0800 (PST)
Received: from ?IPV6:2a02:587:6e15:d61a:5cc8:cceb:8cd5:6326? ([2a02:587:6e15:d61a:5cc8:cceb:8cd5:6326])
        by smtp.gmail.com with ESMTPSA id h6-20020a170906398600b008cf377e8795sm2380687eje.199.2023.02.26.14.14.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Feb 2023 14:14:32 -0800 (PST)
Message-ID: <ec92d3b0-f168-cd98-89ed-b264638a1c53@gmail.com>
Date:   Mon, 27 Feb 2023 00:14:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH] ptrace.2: Add details about usage of
 PTRACE_GET_SYSCALL_INFO
Content-Language: en-US
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        "Dmitry V . Levin" <ldv@strace.io>
Cc:     linux-man@vger.kernel.org, lineprinter0@gmail.com
References: <20230225105601.6079-1-fvalasiad@gmail.com>
 <63d2e471-b167-77a6-b713-5f76ff63fb96@gmail.com>
 <20230226220359.GA3440@altlinux.org>
 <fe116e4b-087c-5271-9ccf-0422f419235e@gmail.com>
From:   =?UTF-8?B?zqbPjs+EzrfPgiDOks6xzrvOsc+DzrnOrM60zrfPgg==?= 
        <fvalasiad@gmail.com>
In-Reply-To: <fe116e4b-087c-5271-9ccf-0422f419235e@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Ahhhh hello everyone! Give me 20 minutes and I will make the changes as 
requested!

By the way this patch is the very first patch I do through emails! I am 
using git format-patch and git send-email, is it okay for me to be 
opening a new thread for each change you request? Or should I send the 
new patches in the same thread as responses?

Is there a universal standard or is it per project? Any guidance shall 
be greatly appreciated!

Thanks!

-- fvalasiad --

On 27/2/23 00:05, Alejandro Colomar wrote:
> Hi Dmitry,
>
> On 2/26/23 23:03, Dmitry V . Levin wrote:
>> On Sun, Feb 26, 2023 at 10:58:02PM +0100, Alejandro Colomar wrote:
>> [...]
>>>> +.B PTRACE_GET_SYSCALL_INFO
>>>> +is limited to type
>>>> +.B PTRACE_SYSCALL_INFO_NONE
>>>> +unless
>>>> +.B PTRACE_O_TRACESYSGOOD
>>>> +option is set before the corresponding ptrace stop has occurred.
>>> You should say
>>> .BR ptrace ()
>>> right?
>>> Or is unformatted ptrace common in this page?
>> Or just say "syscall stop".
> Sure, that would work.  BTW, se prefer system call over syscall
> (there's not much consistency regarding that, but let's try to achieve it).
>
> Thanks,
>
> Alex
>
>>
