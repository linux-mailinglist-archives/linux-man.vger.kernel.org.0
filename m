Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1FBB225E414
	for <lists+linux-man@lfdr.de>; Sat,  5 Sep 2020 01:14:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728222AbgIDXOk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 19:14:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728215AbgIDXOj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 19:14:39 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15A93C061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 16:14:39 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id c18so8922823wrm.9
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 16:14:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Ya+opLL5VVT2raFqCePvKtpxX6u/FXShwJdxMPBG5u8=;
        b=Pqq8Ko0FqENYfDBRTrnXxo8YWsvO8Vg+J1XxcVNft5ecLS9/v6U1BTAt0xRSn0LVEg
         P0VtdVSDujLspRDmirI22OYJfJGU2z4AiUzR4e9qR+GdIXAdzE3GNIHgT2fbEeSTLmVs
         4wuC88sVqNssnIxqpCN1jDbM8KWJ4jXSRGiJCUsauTE3XrwjH3gZxBgJBu5RXw+kE0OB
         THkgb2rwQq33i4seGuFhkHsYq2cvUuUGk6UquC5ezhA3vxJhU/E+nQySnVG8bKcLCUZd
         RxP9iMphCjsvnVwiLV4YNZ/ez+0m+ZNs3a7VwX1WrxsDYLSnER/LPAkxzMRrv3j0/rce
         Sthw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Ya+opLL5VVT2raFqCePvKtpxX6u/FXShwJdxMPBG5u8=;
        b=GSydFzqL8VY0xlUA7Q4uHKWSByroXM4iMhDaENgscxxvobrsvKd7KSjN2swBPsy+pB
         3mlgrE/4I+GAkh5RUWnXJuDIg/KYK28w38NSwLvcVAvvtxgrtTt/o9nSymHpq34cepgm
         AgR1Y+by/l3dGv0ZLQUEpHXFfbnXzJFdTHpGEeserKg4NkiQWiYJ1w7fimZ5ORPKi+kv
         GZ9dwNXp095DriuvJ8Wwv3eCRrNN5rk+X2D+crUWZ/IkGyWiAS+X+mcxj9PMTjJl5rKG
         qaRJorzerzi1f18SyK/8dP/URsnHlk8uwJ36dvGRC/AEOd1EqP+LPRDrTOkqYlNZ/DBA
         ueBA==
X-Gm-Message-State: AOAM531utaHqrAec4kImRGc8B6fe6lOKa7Szb/nCThNY5eAu2TcuY/ca
        OjFl/HRa+WMVY+zXrd1tdzPTcyv31tsH7g==
X-Google-Smtp-Source: ABdhPJxH4LhbvTnbC38SNvgCPQk6bUlxQlFOuNoo2e8+9nFFhMk8jUCR7SUj/o7lo9nxgzxDHmipVA==
X-Received: by 2002:adf:edcc:: with SMTP id v12mr9390589wro.240.1599261277599;
        Fri, 04 Sep 2020 16:14:37 -0700 (PDT)
Received: from [192.168.0.12] (cpc87281-slou4-2-0-cust47.17-4.cable.virginm.net. [92.236.12.48])
        by smtp.gmail.com with ESMTPSA id y207sm15226503wmc.17.2020.09.04.16.14.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 16:14:36 -0700 (PDT)
Subject: Re: strlen
To:     Florian Weimer <fw@deneb.enyo.de>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
References: <0bf239e9-cfc7-8889-ca00-b1d1566bd174@jguk.org>
 <87lfhpgxf8.fsf@mid.deneb.enyo.de>
From:   Jonny Grant <jg@jguk.org>
Message-ID: <017a5a66-ba66-7cc8-c607-f851c2e54fc4@jguk.org>
Date:   Sat, 5 Sep 2020 00:14:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <87lfhpgxf8.fsf@mid.deneb.enyo.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 04/09/2020 20:21, Florian Weimer wrote:
> * Jonny Grant:
> 
>> Hello
>>
>> https://man7.org/linux/man-pages/man3/strlen.3.html
>>
>> Is it possible to clarify :-
>>
>> * glibc will SIGSEGV if 's' is NULL
>> * there are no ERROR returns
> 
> That would be misleading.  Whether strlen (NULL) is undefined also
> depends on the compiler.  They know that the argument cannot be zero
> and optimize accordingly.
> 

Hi,

Do you know a compiler that has a different behaviour? I only tested gcc and clang. How would a compiler optimise?

The header has non-null attribute for the compiler (ie gcc) to use to give a nice warning

str.c:6:8: warning: null argument where non-null required (argument 1) [-Wnonnull]
    6 | return strlen(NULL);

However, if the implementation gets NULL it still crashes.

I was using -fno-builtin-strlen so it was glibc, but the __builtin_strlen ha SEGV just like glibc

clang is the same as gcc.

So it feels like it's pretty clear, there is no NULL check, can this be documented? 

Jonny
