Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AD2EF3C283F
	for <lists+linux-man@lfdr.de>; Fri,  9 Jul 2021 19:26:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229491AbhGIR30 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 9 Jul 2021 13:29:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229459AbhGIR3Z (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 9 Jul 2021 13:29:25 -0400
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com [IPv6:2607:f8b0:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72614C0613DD
        for <linux-man@vger.kernel.org>; Fri,  9 Jul 2021 10:26:41 -0700 (PDT)
Received: by mail-ot1-x32a.google.com with SMTP id 7-20020a9d0d070000b0290439abcef697so10187989oti.2
        for <linux-man@vger.kernel.org>; Fri, 09 Jul 2021 10:26:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=AYWNaWlyMAyhXZr8eza1FBJmh+URfLRy6/ECGG/YiK4=;
        b=lTZGWwzt89PUSFAvVygLojtFFX/KPNAMWay2O5eQht4zFQrIlB1E/mpUIRnrTLDoIS
         icEVdUNfqZ6upSfyWIc6Ts0nkzvV3TYGWYSegNNp4OBbhRJOR8eQrjDxGmKyMJH/MtYl
         qnMLoAJse6tgzH14bHfEd8Uhbijvx97lVcijCly6VaWaTpBGT9+yUSc/uyo2liuc5XHP
         owt+6d8vvOmPcC3ulN0l1xq/FGz5tFZePZ73dPU9bPiIeuQsSECflHwpEPlYJKsga31v
         Soql+dmBG5gXeM0micH3hSvDc+i6pAMv6gQuPWVnmhF+tnFEDAjclNJNiExMnw9MTMcg
         WQtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=AYWNaWlyMAyhXZr8eza1FBJmh+URfLRy6/ECGG/YiK4=;
        b=XQzMDyCqvm0KuquEcCIR7TMYTLG1+YUQ8OBALsp+HoDjJCdmvpywm/PR7eDRhOaqtA
         ucB4/tEAemW9/GHKUjYKQkq8Yo1ZPANGzMnO89pLNgMvgMk7NtZ+yQvGPPKebiCOdY76
         g8z9/9dt5N/aEegqJOR6xPBij7PA3a1QqLjAzwCsf8AfRDLec06C2INpzhERdA3n7mLA
         A3km3aWNNSUK2BxxXFzfld+3Oa/AuYAB2wr56tnwHOpYVAL/OqVMyeDSVQgvnUubxnU0
         qODtjf8dNUzg4Lb4FgHADbqB4YILaqQhVLLJn8E/rX1xO+6kRcmdIvMZJqG/C0uUHgjH
         Exjw==
X-Gm-Message-State: AOAM532tFgQjk929G0k2UndYFNYrrzZ68Gtp6xlcLl9Or2qn2ozMGYHC
        4zKSG5tr/67+GuT/2Lc/7lE=
X-Google-Smtp-Source: ABdhPJyE2mCarB6I+ijnaRe0jFN/AENGfaAj31tyIs84ivWtsufwHn5TVWQtKoWPDiYhA9BezQ5SCA==
X-Received: by 2002:a9d:6a12:: with SMTP id g18mr24795904otn.44.1625851600810;
        Fri, 09 Jul 2021 10:26:40 -0700 (PDT)
Received: from [192.168.0.41] (75-166-102-22.hlrn.qwest.net. [75.166.102.22])
        by smtp.gmail.com with ESMTPSA id x20sm351415otq.62.2021.07.09.10.26.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jul 2021 10:26:40 -0700 (PDT)
Subject: Re: strlen
To:     LIU Hao <lh_mouse@126.com>, johnsfine@verizon.net,
        "gcc-help@gcc.gnu.org" <gcc-help@gcc.gnu.org>,
        "jg@jguk.org" <jg@jguk.org>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "fw@deneb.enyo.de" <fw@deneb.enyo.de>,
        "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
References: <0bf239e9-cfc7-8889-ca00-b1d1566bd174@jguk.org>
 <87lfhpgxf8.fsf@mid.deneb.enyo.de>
 <017a5a66-ba66-7cc8-c607-f851c2e54fc4@jguk.org>
 <87363whf2z.fsf@mid.deneb.enyo.de>
 <48e874cb-2b95-2783-ddfc-ae12d9aaf8f5@jguk.org>
 <87bl7fozxi.fsf@mid.deneb.enyo.de>
 <23679a28-5986-0af2-4d98-7de68ed0deec@jguk.org>
 <53b3666b-d200-ef97-b050-cc38669c61cd@gmail.com>
 <b6fccca1-6e2b-fb20-d9d6-9df94cd3f05f@gmail.com>
 <564825ed-1e1f-b344-da35-1b83c551ed5f@jguk.org>
 <b71170df-7c6b-4582-c3d1-84b811fe5259@gmail.com>
 <5566b180-1333-d73b-22ee-6c6d32053921@jguk.org>
 <feb6c15d-b242-83fc-c58d-2ebfbcd4f2bd@gmail.com>
 <1627912755.3783669.1625745946723@mail.yahoo.com>
 <59a70222-a46f-1e65-c9db-6c9e577c8adc@126.com>
From:   Martin Sebor <msebor@gmail.com>
Message-ID: <8e0db7f8-bbdb-1dc1-b4ce-5f2da0bf1708@gmail.com>
Date:   Fri, 9 Jul 2021 11:26:39 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <59a70222-a46f-1e65-c9db-6c9e577c8adc@126.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/8/21 8:08 PM, LIU Hao via Gcc-help wrote:
> 在 7/8/21 8:05 PM, johnsfine--- via Gcc-help 写道:
>>   This is not the forum for such a discussion.  But I want to make 
>> people reading this aware that many expert C and C++ programmers 
>> (likely a majority) consider that advice to avoid unsigned types to be 
>> horrible advice.
>> I advise people to avoid signed types and I do so myself.  If an 
>> integer value won't be negative, it shouldn't be signed.  That makes 
>> your intent clearer to anyone reading your code, and (especially in 
>> x86-64) lets the compiler generate smaller and faster code.
> 
> That makes no sense. Would you prefer unsigned integers to signed ones, 
> for something that can only be one of {1,2,3,4}? Just because something 
> can't be negative, does not mean it should be unsigned.

There are benefits to making that explicit by choosing an unsigned
type: the result of converting a narrower unsigned type to a wider
unsigned type is unchanged.  The result of converting it to a wider
signed type may change.  This has an impact on value range propagation
which in turn can influence other optimizations as well as warnings.

Choosing an unsigned type has liabilities as well.  Because unsigned
arithmetic wraps around zero whereas signed arithmetic does not (it
overflows which is undefined), its results are less constrained than
those of signed arithmetic.

Martin

> 
> Conversion between `uint64_t` and `double` is much slower than `int64_t` 
> on some platforms, e.g. x86, so 'smaller and faster code' is also 
> groundless [1].
> 
> 
> A signed integer is a value that denotes the number or amount of 
> something, such as bytes, characters, files, seconds, kilometers, or 
> even dollars. An unsigned integer is merely a fixed-sized collection of 
> bits. That's the only fundamental difference.
> 
> 
> [1] https://gcc.godbolt.org/z/6YY61rhGe
> 
> 

