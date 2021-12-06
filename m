Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E5C3746A58B
	for <lists+linux-man@lfdr.de>; Mon,  6 Dec 2021 20:20:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348394AbhLFTX5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Dec 2021 14:23:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348367AbhLFTX5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Dec 2021 14:23:57 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF913C061354
        for <linux-man@vger.kernel.org>; Mon,  6 Dec 2021 11:20:27 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id a9so24519143wrr.8
        for <linux-man@vger.kernel.org>; Mon, 06 Dec 2021 11:20:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=xDnQ2sjzodTqxtbnMaqP8FYMUbypjh9TLRiWkmWW9ec=;
        b=lzMh6AwvYMoupJHCzlXWvbrRXKwMee6GQhuPhP2gcNLTgvTLxy/+QSmYEIWzgbB54g
         /53luiJaBWs1wIV3BONHY5u3WCaJwvvxp5EUKpcXW336KS46gGtDJuOPPhq2kYBd4fc/
         E8QgV75KRqOYbYVKghIsZfIfWaM3JexFHWWFrwEzlVz9vY80btmsLV/bokG6srutCeDZ
         gJlkQc0DyrjvDjQFDjA9/ML4SrOBXeVXjo48sPi5kxw7rsGeiGig1aysXdiC7ASJVi1T
         TRfXNR+qc1VBV1r5u+tbkiU0Z7M40mkpybeqwRPlySkWT+zWyPhACCtfoPllYpKa+OZe
         IQiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=xDnQ2sjzodTqxtbnMaqP8FYMUbypjh9TLRiWkmWW9ec=;
        b=NYgWEmhgf325WB0HFVlPY9Ifd1nviNRoTgtvnNYlvCXS4ooKXba5re65WcSRVYkbvK
         I7UNPxYtHIJpAeLZz52++e5exz5GPyP3i8xhxVw483H1XLFmeONoLFMhapT1ukoHwnqw
         gyHqk/Fi7zdENjCUEXk6q1UbMBIvkrE4sKx3Pq06Ru3IbQyqK2Bj+6ixm+miVoCqwy/g
         ayTp2D5eGawkOgRr+2yX3xnBpNMmQhWec9VFNEW8eds6JZTI21ZxO0uXOWsQQ9zBsihx
         EMSX2fhU38WzmJZtteezd/OuJ9ehzbgm56p0TNgQHhmjwto8LFFKWn+IjS9TFTEqFJNv
         zqGg==
X-Gm-Message-State: AOAM532h/zlV5JoaoSz/w5xsEJLNo+ke3emZhzJzI2pXvd37WILJIswE
        oeD2CfSXD+dMwi4JkJH+BpU=
X-Google-Smtp-Source: ABdhPJygz35gULFioF+444zxIdvVOpopV03AybHrrC86TP+Vp1Ezwvt1a/9PYaiCCCovJodpnNtxAA==
X-Received: by 2002:a05:6000:547:: with SMTP id b7mr45440193wrf.543.1638818426477;
        Mon, 06 Dec 2021 11:20:26 -0800 (PST)
Received: from [10.8.0.6] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id f13sm341554wmq.29.2021.12.06.11.20.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Dec 2021 11:20:26 -0800 (PST)
Message-ID: <ae5d1e85-969f-80fe-69d9-43f99d463954@gmail.com>
Date:   Mon, 6 Dec 2021 20:20:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Subject: Re: [PATCH] madvise.2: tfix
Content-Language: en-US
To:     Matheus Tavares <matheus.bernardino@usp.br>,
        linux-man@vger.kernel.org
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>
References: <3ec6befd53f36e2795c71f7d07501eb3067c226e.1638552486.git.matheus.bernardino@usp.br>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <3ec6befd53f36e2795c71f7d07501eb3067c226e.1638552486.git.matheus.bernardino@usp.br>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Matheus,

On 12/3/21 18:28, Matheus Tavares wrote:
> Add a missing period.
> 
> Signed-off-by: Matheus Tavares <matheus.bernardino@usp.br>

Patch applied.

Thanks,

Alex

> ---
>   man2/madvise.2 | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/madvise.2 b/man2/madvise.2
> index f1f384c0c..cdcc6cbfe 100644
> --- a/man2/madvise.2
> +++ b/man2/madvise.2
> @@ -62,7 +62,7 @@ about the address range beginning at address
>   .I addr
>   and with size
>   .I length
> -bytes
> +bytes.
>   In most cases,
>   the goal of such advice is to improve system or application performance.
>   .PP
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
