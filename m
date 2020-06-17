Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1BC011FCBF8
	for <lists+linux-man@lfdr.de>; Wed, 17 Jun 2020 13:14:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725964AbgFQLOR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 17 Jun 2020 07:14:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726701AbgFQLOM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 17 Jun 2020 07:14:12 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BD37C061573
        for <linux-man@vger.kernel.org>; Wed, 17 Jun 2020 04:14:10 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id p5so1876775wrw.9
        for <linux-man@vger.kernel.org>; Wed, 17 Jun 2020 04:14:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=vIDlUA87kYeX/7yEaySf0/aCMU7m6SHzRaWiC/feaKY=;
        b=Kcb+rBEnLljVtMsvIFI5k4tupHkv08VLExXM4bdohuvRflbOuS2Ex2oh09WxoK1Ar3
         Mtev25AJfa/AQKBt7q/PVnMZhzFy8lVhYQxsKjqVEOnsVOL9H+hLhn43eahvxHKX0I0m
         E2czBknakWlowC+098nWMBZVlU7g/cjs2HioNkvPRHv306H3uoqSSKC6mMA6qhlpXQns
         lkdAjfBR2D2c0r4j9+azLwExet71dQDgLWEi4U1qc3iEOLERxZaPT1YFZln3AeZpscty
         jPNvPn/bhXHyh/M1GWhAWxa0FNHlas7u596J6mS23SH1szw4d0FcFBb0PwZ26FX8W7XX
         TGRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=vIDlUA87kYeX/7yEaySf0/aCMU7m6SHzRaWiC/feaKY=;
        b=iiWOHfZdcB5lllJExV5WCuPfeUvs921ieP2lEVF10MLGHETUawKDjcKj2X7Xq+1Xjs
         4+ji1ZBAiJMgBF6VUCc9wq9rjGPvix/19069Ajmo/tkGacu3krKYSOcIEIahBqhX9A8K
         KWs/uXrKaUhUB0EtKs3XcZkQ9SOlOuZLkQHaqJs+M7VTndhORDODbJeIV233QsmvSzNf
         udVJpD8QYyNwLOp6O7twy2VWcQ8w2VHvl1MqpJ54Rpc/aHZmUKHjJ/w+1LZ2OYTkSF8q
         aE9+G9KvVNrWoHxBtusKocNg2cieiQoV+BxZbQgiYESIBFJZjjqxNhHg5RcDWz2Vthdx
         lnjg==
X-Gm-Message-State: AOAM531egtwP1Ri/lWDzo+idj5ILnuoA5xKWMqUW91keSXMswk9FNl3m
        E6OeWPIqTTjgRyPRTGlcu8XZQXGLk/k=
X-Google-Smtp-Source: ABdhPJzbHVPEry3cHVFUUxKfKbXVxXvUDdQApQuBF7dl0AJwR3nCESQA0DGkHBRAXWlU6g7/J+xDbw==
X-Received: by 2002:a05:6000:10c3:: with SMTP id b3mr8463819wrx.53.1592392448992;
        Wed, 17 Jun 2020 04:14:08 -0700 (PDT)
Received: from [192.168.0.12] (cpc87281-slou4-2-0-cust47.17-4.cable.virginm.net. [92.236.12.48])
        by smtp.gmail.com with ESMTPSA id u4sm8230621wmb.48.2020.06.17.04.14.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jun 2020 04:14:08 -0700 (PDT)
Subject: Re: gettid
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <23ca3363-5a24-9862-4872-811678527b50@jguk.org>
 <20200617102232.7zzi2klj3onh2nur@jwilk.net>
From:   Jonny Grant <jg@jguk.org>
Message-ID: <cbbb7e4f-8774-c598-e9d3-6f13142dc3d3@jguk.org>
Date:   Wed, 17 Jun 2020 12:14:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200617102232.7zzi2klj3onh2nur@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 17/06/2020 11:22, Jakub Wilk wrote:
> * Jonny Grant <jg@jguk.org>, 2020-06-16, 12:36:
>> SYNOPSIS         top
>>   #define _GNU_SOURCE
>>   #include <unistd.h>
>>   #include <sys/types.h>
>>
>>   pid_t gettid(void);
>>
>> I can compile on Ubuntu without #define _GNU_SOURCE and call gettid()
>>
>> Maybe that line can be removed?
> 
> I don't think so. Here's what I get (with GCC 9):
> 
>   $ gcc test.c
>   test.c: In function ‘main’:
>   test.c:6:9: warning: implicit declaration of function ‘gettid’; did you mean ‘getgid’? [-Wimplicit-function-declaration]
>       6 |  return gettid();
>         |         ^~~~~~
>         |         getgid
> 
> Prepending "#define _GNU_SOURCE" fixes the above.

Hi Jakub,

Apologies, I should have shared my test case, I was compiling as C++
// g++ -Wall -o tid tid.cpp

#include <unistd.h>
#include <sys/types.h>

int main()
{
    return gettid();
}  



$ g++ -Wall -o tid tid.cpp
tid.cpp:3: warning: "_GNU_SOURCE" redefined
    3 | #define _GNU_SOURCE
      | 
<command-line>: note: this is the location of the previous definition


Looks like it is set by default, even when specifying the C++ standard version for g++
g++ -std=c++11 -Wall -o tid tid.cpp


Checked, yes, if compiling as C, see the same result as you.

Not sure how it gets enabled by default in my c++

$ g++ --version
g++ (Ubuntu 9.3.0-10ubuntu2) 9.3.0

Cheers, Jonny


