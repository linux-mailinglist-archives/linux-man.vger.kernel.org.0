Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2E0C33825D7
	for <lists+linux-man@lfdr.de>; Mon, 17 May 2021 09:51:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233552AbhEQHwf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 17 May 2021 03:52:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229755AbhEQHwe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 17 May 2021 03:52:34 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 722BFC061573
        for <linux-man@vger.kernel.org>; Mon, 17 May 2021 00:51:17 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id h4so5276423wrt.12
        for <linux-man@vger.kernel.org>; Mon, 17 May 2021 00:51:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Y9oL9JU8+c8H3KdL8gzR2hlDCaZzB5Pht4VYuqFmnGM=;
        b=WT4ZuHBaNe7wgSQH9+NpPUuvW01TKarLrlyESBNFHQlsWwdgbQ/u/v0exqNFVflKxa
         xu6YyNwXfWAiXy88F7N2BO+qEATau8mHImhGvwp47SNjUM+H+zriyXMlPNRnMNYRrZgR
         kmkf4rvXYiewx76M0SUvybFYCQKN+Bjyg9mysoJmoyCDOSHR8AXdhUicDCFSuPvg3OJt
         pOwjIbJ6Om+cdmEMgldwSA8K+yDBOzmj5jeVXAh0HYqNnakgX0KKtrIY4VdEH/LjAQSJ
         PBRPiVj5z72Z07rh5sgnC9VzvdbGiFIPv1HJjYXWnBdehEWJL2OG+A1SMqVsn2c04XI7
         MoeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Y9oL9JU8+c8H3KdL8gzR2hlDCaZzB5Pht4VYuqFmnGM=;
        b=AiqZykL0mvJe5d18B997tyvzb2E2FgPWrpUHZFw2uQRU/Q5DTlqX7B/6HFnPfKqMyG
         XFBRRC1faQgnrpk0WRtwlpsJkERZsTbjz9YH7ov8xjsROk+ZfsvcYUJY9gi2QLxuqjXE
         p/8FYUE3K1qWKZMenVBb4odr7YBDx0UgGrpFoXptaEDibDOr95fDVvBFiRfTJEV0k51I
         R5gGZLKVgjYPGR0PC6ur5AQi4pNdimwNWDWzTZo1QVD6vlM40QNUkZoPoGmSalLXHLSB
         nLr0ztfIJixfO5EYug2/5hoT2g/k7bOytTeob/xglfMf+OTBFRIeMvlmRujK8OTMGJH1
         uI7A==
X-Gm-Message-State: AOAM531EhLs9o8K5Y6WlxLdw1NAz9eeRrBxCO0SejADPV9nYNHnCRqMT
        U4y/w04WqPUIQS2ruqF85vgRVvuWoKE=
X-Google-Smtp-Source: ABdhPJybm+8pmDk2O6aaWZwTFpI56s4zY9qWo0OKuV+BZvUWjm7na8qh3txsCbpws/6eFF50u/6y7g==
X-Received: by 2002:a5d:64c4:: with SMTP id f4mr70319196wri.178.1621237876296;
        Mon, 17 May 2021 00:51:16 -0700 (PDT)
Received: from [10.8.0.106] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id y22sm4215280wma.36.2021.05.17.00.51.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 May 2021 00:51:16 -0700 (PDT)
Subject: Re: system calls not intended for user space
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man <linux-man@vger.kernel.org>
References: <cb816b17-df1e-8cb9-5847-1626571f7929@gmail.com>
 <CAKgNAki3XKdOdNrs9cG6P0A=ggSATeAGfXob1Ct1dy83SuLjeQ@mail.gmail.com>
 <c7dcc24d-3c7a-39cf-48a9-2357299e8b93@gmail.com>
Message-ID: <5cbacfde-8f54-1fef-77cc-6f45d4ae2bd3@gmail.com>
Date:   Mon, 17 May 2021 09:51:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <c7dcc24d-3c7a-39cf-48a9-2357299e8b93@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 5/17/21 9:47 AM, Alejandro Colomar (man-pages) wrote:
> Hi Michael,
> 
> On 5/17/21 3:04 AM, Michael Kerrisk (man-pages) wrote:
>> Hi Alex,
>>
>> On Fri, 14 May 2021 at 07:25, Alejandro Colomar (man-pages)
>> <alx.manpages@gmail.com> wrote:
>>>
>>> Hello Michael,
>>>
>>> There are some syscalls that are not intended to be used from user
>>> space.  See restart_syscall(2).  Should I document those as
>>> syscall(SYS_...) or not?
>>
>> Yes, this function is an odd case. (Are there others? Perhaps
>> sigreturn(2) also.)
> 
> rt_sigqueueinfo.2 maybe, for which, by the way, I sent a patch recently, 
> so you may prefer to ingore it.
> 
>>
>> I think I would just ignore these two. (That is, no changes.)
> 
> Agree.  I sent the patch for rt_sigqueueinfo.2 because in NOTES it 
> already talked about syscall(2), and by the DESCRIPTION it looks like 
> it's used by library writers (that's user space).


I see you've applied the patch (it was 2/8 that you applied today 
(<https://lore.kernel.org/linux-man/20210515182027.186403-2-alx.manpages@gmail.com/T/#u>)). 
  Check this before pushing and decide :)

Cheers,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
