Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8001F483533
	for <lists+linux-man@lfdr.de>; Mon,  3 Jan 2022 17:54:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229750AbiACQyF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 3 Jan 2022 11:54:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229514AbiACQyF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 3 Jan 2022 11:54:05 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A90FCC061761
        for <linux-man@vger.kernel.org>; Mon,  3 Jan 2022 08:54:04 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id v7so70915464wrv.12
        for <linux-man@vger.kernel.org>; Mon, 03 Jan 2022 08:54:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=dVk16AGiqJKvoQ2qEzH7FwR6mfe8/ElwcoUYUQ3gbo8=;
        b=MmIGYp0QqZJcwRaYjcSN961OgNSKbB3TmQJffr47vO20yEZ5pQfBWcEaAKvDqV4Za6
         YQvxtJ+Nfll3iVU9USZu/Qd4DK/lNtrcjxeytl3NYs6v4dVNUeFBTtRDrxghkfuNwdqp
         o+LUROsy8767BcATahhhhvXiVjrxD5akZoTv1A0CLoGnyT/IliCwmVUMDcLNs/OvfXC8
         7juytBk5dktiSqO+c70/lYajJznA5E4AaHH6tI9C8iPc4GKuYxLiB76NmJamUN2/xkc0
         WFHYp0MTmB0w+N3lwcQu4crkj+mOszQ99Yw7z17lBtaXRVNmD3mKPBeGRhxrsoAWXxbt
         /0rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=dVk16AGiqJKvoQ2qEzH7FwR6mfe8/ElwcoUYUQ3gbo8=;
        b=7sfHCaBjKqvjec7/5H8JQfCH4icRKFpn+Z5Ng6nG13HaBGX4ink8UA3xomnpaXXRXa
         Gfk5NUXt7JKTDqqvIua/fi4tBKDcHi8HymBXVz7mkXtxDi9Bxt+bT1gMK/wcAyfE27Cg
         F0bYgfXlYE2HY0bEJnmHKnCQASRzEB2eKsjtB5k6GXjLZyzwV4vynfh8/XmTYiIu3td2
         Hzwx3iZ/dNP7jU+C0uIulCZpKhN7IqtyDI6uXG9p28eQWvEDCtMHUbuMwzZKehJYc4U5
         DfCS93cI0+3lCAt5pMq4lSJxb0Xt4b6bpLflSCrO5t74OLe+sBtg/D3iMk3PEpuce0oU
         iExA==
X-Gm-Message-State: AOAM531fjI4LBn6k5fgdQPzMTdRJgLhElpzxvyj6gWtjMVMCVGQ+5b1s
        x+f7hGnpS784Wph64CfS58k=
X-Google-Smtp-Source: ABdhPJxiYpWWyXh7jcBqQjHVMVITlZOeeiFwzG44kz9vHu7rZ+/UfQDbAm3R4fySc27ggVN6BpPeXw==
X-Received: by 2002:a05:6000:1542:: with SMTP id 2mr38616682wry.308.1641228843333;
        Mon, 03 Jan 2022 08:54:03 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id p18sm6229463wmq.23.2022.01.03.08.54.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jan 2022 08:54:03 -0800 (PST)
Message-ID: <36518e29-347c-e651-4656-faf8760158f7@gmail.com>
Date:   Mon, 3 Jan 2022 17:54:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Subject: Re: [PATCH v3 3/3] system_data_types.7: note struct timespec::tv_nsec
 type for x32 and portability
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org
References: <a6f79435-1d9c-2c12-168b-035164a3b938@gmail.com>
 <8ce5f7ace7a64a499d08228c3aeef870310a78ca.1638827989.git.nabijaczleweli@nabijaczleweli.xyz>
 <539b8054-a29e-32c0-14f0-c772543b2bb3@gmail.com>
 <20211206233138.ahvjamiftceufvmj@tarta.nabijaczleweli.xyz>
 <a55c07d0-960f-4dfe-90bf-4fee33976198@www.fastmail.com>
 <7c29781b-1030-44f9-b078-f5b09a14e321@gmail.com>
 <20211207014114.2ctce657cnnq4frv@tarta.nabijaczleweli.xyz>
 <20220103154456.3vrtv2jtvcn7rxbh@tarta.nabijaczleweli.xyz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220103154456.3vrtv2jtvcn7rxbh@tarta.nabijaczleweli.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/3/22 16:44, наб wrote:
> On Tue, Dec 07, 2021 at 02:41:15AM +0100, наб wrote:
>> Regrettably, I think this is the best we can do,
>> save for committing a plan9. Scissor-patch below.
> 
> Bumping this ‒ I think it's sensible to have this in as
> glibc/WG14/Austin Group proceedings transpire, but this is ultimately
> your decision ‒ how do you rule on it?

Thanks for the ping, I already forgot about it!
I like your patch, so I applied it :)

Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
