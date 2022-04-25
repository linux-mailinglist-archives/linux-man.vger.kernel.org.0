Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C447850EA31
	for <lists+linux-man@lfdr.de>; Mon, 25 Apr 2022 22:26:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245260AbiDYUYt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 25 Apr 2022 16:24:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39020 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245224AbiDYUYm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 25 Apr 2022 16:24:42 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88BB31291D7
        for <linux-man@vger.kernel.org>; Mon, 25 Apr 2022 13:21:35 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id q20so9963054wmq.1
        for <linux-man@vger.kernel.org>; Mon, 25 Apr 2022 13:21:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=2fEF5HXweOMYU15qnWa2KhgHoOzWloS5VbA7NPCQYQI=;
        b=XXpLXYJaoY0kl7s3TrKCHO8FFS2s1HpOLJzD1Bq+HDkJnhYDawsxZXnYM3ljFJ5TWA
         42nIxKfsGqMNCC/3qbxjim72l1pE4akYVrniPfEAiWAevhr4+bpgF7TxRnRzfbhgutdY
         WS7rOSYaobohAhqEiUDCXCdgXYhZv8t4gOvr+HWTByT+sHa62c8wbUdggaHvm0ML29gj
         sM1+EcMPBgt5tvuKWyNR4cHYE+XxAiukQp13i0c+XeOX20NLl3yTWL4A0jRjI91FAzcQ
         6Y0TBVUZToiTa+ej5fLw3GDpFYgJZQ3S0xss1BWcrrcBTPVw6RFbT5arIfulrufMjzi8
         IBdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=2fEF5HXweOMYU15qnWa2KhgHoOzWloS5VbA7NPCQYQI=;
        b=iI10C0eFY2mniQRQYs2wZF2S+SZsuKQ8TItlYrdsZwzgh2fb9rQApPu13D7hDn5SZT
         TU85MjT77FkUGUbsnFt1TQ5/qs/JzT31kiP4LXClz5lP3mN8U6McDfk5kT7ERcSfp3Rw
         S9D3f5k3rbldG13nChn6CJpJDfAOJjsECwRHq7PkwwDlj7bd2ZXGGUcfYpZiafTtaDoc
         UvJYGHqbMcdsJU5uAumvD0bhzZIdjzpv4P3Cp1dvNXC5ZhXe+j3YoBPnWDXMRKgp622A
         ZLF7y7sEMYBDrJlPZiuP768akluLXNbTm/0nN3sKRRpNNri3U5BhijLgV0nWOQCeXZK5
         ZoZQ==
X-Gm-Message-State: AOAM530CoCnHT1Frxk/uLBwd9znBRdfnx+pYutCR+I/HXGWfWKC0KBkM
        R5tAF1zQHHy9Y/cQwNzin/k=
X-Google-Smtp-Source: ABdhPJxHPgRcLwkLUJqs97pquWln0jIYfWKsali4LT2jbb5Ayv/Kmj0YaWTy2Bl2J6xzOL3dnkIqaA==
X-Received: by 2002:a7b:cb83:0:b0:37e:bc50:3c6b with SMTP id m3-20020a7bcb83000000b0037ebc503c6bmr27818437wmi.67.1650918093987;
        Mon, 25 Apr 2022 13:21:33 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id d17-20020adfa351000000b0020adbfb586fsm3969861wrb.117.2022.04.25.13.21.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Apr 2022 13:21:33 -0700 (PDT)
Message-ID: <6dbbc686-73ed-2ce7-9d3b-2896b4c7cba8@gmail.com>
Date:   Mon, 25 Apr 2022 22:21:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH] pthread_atfork.3: Remove a confusing reference to the
 current thread
Content-Language: en-US
To:     Arjun Shankar <arjun@redhat.com>
Cc:     linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Florian Weimer <fweimer@redhat.com>
References: <20220412135520.2388424-1-arjun@redhat.com>
 <9f65abd8-0df3-4c28-7428-21d6fdc59261@gmail.com>
 <CAG_osaYFb6mfX8x0SqgHpoj3GL8oyNZmFYzDiG696cH1_bTbcQ@mail.gmail.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <CAG_osaYFb6mfX8x0SqgHpoj3GL8oyNZmFYzDiG696cH1_bTbcQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Arjun,

On 4/14/22 01:51, Arjun Shankar wrote:
> Hi Alex,
> 
>> I already applied a different patch recently.  See
>> <http://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/commit/man3/pthread_atfork.3?id=f30deb08a9a0db95a3d6b4d00c0927fb43928cc4>.
> 
> I wasn't aware of this repository and therefore missed the change.
> I'll keep it in mind. >
>> If you think that can be improved, please send a patch on top of the
>> main branch in that repo.
> 
> The commit you mentioned looks good to me. Apologies for the noise and
> thanks for looking into this.

No problem.  It's not noise, IMO :-)
It's always nice to have more wording options to consider.

Cheers,

Alex
