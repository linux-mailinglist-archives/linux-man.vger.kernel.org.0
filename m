Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CE56E46A580
	for <lists+linux-man@lfdr.de>; Mon,  6 Dec 2021 20:18:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348311AbhLFTWB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Dec 2021 14:22:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59572 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243909AbhLFTWA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Dec 2021 14:22:00 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2CD46C061746
        for <linux-man@vger.kernel.org>; Mon,  6 Dec 2021 11:18:31 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id k37-20020a05600c1ca500b00330cb84834fso78615wms.2
        for <linux-man@vger.kernel.org>; Mon, 06 Dec 2021 11:18:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=7qIyFatbHxYhbzm7vzosL3SUsip6uEdidJyOgA+rHkY=;
        b=Y0GIq4Iy5/CbmRrR3Tu3Qw73Wz1TC0DB5hK25ZredmoxH54gWjcIcwYDcsvkhWoANC
         YaYKQWOMHsNqiiKbzYrpbx5mjApZO1Mc1d1EUOsB38aoPj10IiPHvuXtdF3/VlDZyeEE
         BNPch4hZsOqRvUPkymiWER4ZyoYDGOjqRdN2vzUMCCPgVIBCtCE08V8jTqDoXO0FkVg5
         76uEtRMZnHh4husTtGAwbNz6MUc8jhQ/PQAYejvHdxLaNJWkNSW8QNmvGFZfgWDUezWk
         zcJTj+1Lecloyh3zJc9GLwPs7B0xTaptab+jmAFwMJbpssEXZ4Z16C6k1HUnSj68jhZn
         +mgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=7qIyFatbHxYhbzm7vzosL3SUsip6uEdidJyOgA+rHkY=;
        b=wyoohFbrZ5B9PE9EwNLIzoIPSt8/rDCYUAgcHGtBg53XjBO2jeCsBhAk1T+RNrGT1r
         /XLku/Wnpmo+oVo8ASSiIhw7Jrey9ogpesHpvn8DVIM41tkvAwgI84Kz+QlqrpNEGkkP
         BKCbuPKjRHu3QdvlE2pbZG6DijQTg0U9tY7KcJFrKvZOVP2Zs4Q6Bg9R7fA7krCNlMsV
         8PKfd2Bhtqt2AKgSJXxgdHSf/YtWVlcAKPuW43mo3unqVBJ9mgLhWEQUwOZ4QuKNCapg
         EJAhSfVAuDVJf/0oprcAIOI6l3wXHsAXiRTFJQfsSOy5twAse6hifnkUa1v/7jfC80AU
         J61A==
X-Gm-Message-State: AOAM531W3b52cWJGlPzjuW7rmJqPrDkNo6HKexTI+P35FRFthapz1LX1
        YkpANstiDL+pJEQWd1Nb/+4=
X-Google-Smtp-Source: ABdhPJxDBJBn+FhsWCVtwGzGmguR9ZJmaLuFXtx5HJh06i9PjaI/JYzE+wxt12PJnxhYMPkzNpvbXg==
X-Received: by 2002:a05:600c:4e02:: with SMTP id b2mr586938wmq.105.1638818309752;
        Mon, 06 Dec 2021 11:18:29 -0800 (PST)
Received: from [10.8.0.6] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id t17sm285486wmq.15.2021.12.06.11.18.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Dec 2021 11:18:29 -0800 (PST)
Message-ID: <8d80e54b-6881-ee5e-0d14-305b510a28b1@gmail.com>
Date:   Mon, 6 Dec 2021 20:18:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Subject: Re: [PATCH 3/4] Many pages: correct struct timespec::tv_nsec type for
 x32
Content-Language: en-US
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     linux-man@vger.kernel.org,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
References: <ec1dcc655184f6cdaae40ff8b7970b750434e4ef.1638123425.git.nabijaczleweli@nabijaczleweli.xyz>
 <de0b63287590038675ef723e052ec1d765f7c59b.1638123425.git.nabijaczleweli@nabijaczleweli.xyz>
 <c2b59b57-ed75-3530-3ac7-13c187700410@gmail.com>
 <20211203234650.advb5m3bh3labgp5@tarta.nabijaczleweli.xyz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20211203234650.advb5m3bh3labgp5@tarta.nabijaczleweli.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi, наб!

On 12/4/21 00:46, наб wrote:
>> But this would be a simpler commit if we only had one definition.
> I was going to suggest it originally, but held up because, well,
> before writing this patchset I didn't even know about
> system_data_types.7, and it seemed that most other declarations are
> in-line (which is sensible, I think, and in line with the common
> use-case).
> 
>> Do you agree in changing the whole patch set in that (IMO simpler) way?
> I mean, IMO in-line is better to use, but a struct this short and
> relatively confusing when you actually unroll the types
> makes sense to be banished.
> 
> So, just so we're clear on the direction of this before I re-write
> a lot of these sections, do these (cherry-picking a few):
>    clock_getres.2:
>      The res and tp arguments are timespec(3) structures, as specified in
>      <time.h>.
>    mq_receive.3:
>      This value is an absolute timeout in seconds and nanoseconds since
> 	the Epoch, 1970-01-01 00:00:00 +0000 (UTC),
> 	specified in struct timespec(3).

I think I slighly prefer "in a timespec(3) structure" (the main two 
reasons are: consistency with existing pages, and also compatibility 
with a possible future change that I have in mind[1] of the link from 
timespec(3) to timespec-struct(3), which would read better as 
timespec-struct(3) structure rather than struct timespec-struct(3)), as 
in the previous example.  However, I only slightly prefer that and don't 
really care that much, and will leave the final decision up to you.

[1] 
<https://lore.kernel.org/linux-man/20211102181454.280919-4-alx.manpages@gmail.com/>

>    pthread_tryjoin_np.3:
>      If the timeout expires before thread terminates, the call returns an
> 	error.  The abstime argument is a struct timespec(3), specifying an
> 	absolute time measured since the Epoch (see time(2)).
>    + adding timespec(3) to the SEE ALSO sexions
> Sound about right?

Yes, they sound great!

Cheers,
Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
