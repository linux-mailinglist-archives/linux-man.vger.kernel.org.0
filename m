Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 56B157E6C06
	for <lists+linux-man@lfdr.de>; Thu,  9 Nov 2023 15:05:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234194AbjKIOFo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Nov 2023 09:05:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43930 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234046AbjKIOFn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Nov 2023 09:05:43 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 541B2B0
        for <linux-man@vger.kernel.org>; Thu,  9 Nov 2023 06:05:41 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-4079ed65471so6397345e9.1
        for <linux-man@vger.kernel.org>; Thu, 09 Nov 2023 06:05:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google; t=1699538740; x=1700143540; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NjG14n/+bNAAOu2jqE4gO+dc2sRWw6edIewZbDEdC/Q=;
        b=Mag3QqsOiWHd2pFCnpVU15jQT+AoaQe48v0U+U247TN3cLjmPh189U8kiUbeq+r27Q
         xc812Li228O9AgDtl199fe1VGt/8omsP4t4m1vjJBFYibwTT+QtzV5ogR4zMfv+TXoni
         YIgceeOcc31h4AWZpoNFSpJQQPDJuXpFNbanL9FIE8FvNrM1bsGQXzdLtmlO4C3kpmKr
         ywe8r2+VgxZ1IxENRS75NqT2spfHqrby1TJqFmrQgUWor9qXqQr51IsuiKEEAyvttAW9
         xWEQZBLxmNgMR/16Ga7xvFUx+q1yVrSEgps/L2tA7CXpvKxJXjmCSZ7DhYXsiF2TOz1C
         J1DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699538740; x=1700143540;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NjG14n/+bNAAOu2jqE4gO+dc2sRWw6edIewZbDEdC/Q=;
        b=eQkyD0BKW5NgpgB5XtBoypK8qw0Hlb1HNLhGdl066dO/yUbDmLZV0AA/wYNPO4Ohtt
         y02QMpprGDPcYH/1q2vxs3OUVl0PBTP2bVXKkC69snhlXJim/6eEmoD0gPic+/XwgdKo
         amh+AL4U6PE/dXNUOb1slppHrxzX+ZpZbzVRxurNHxYf6/VACqelFDYxT6CY1Kb6fjOt
         7ADdxJNbMfZQmwOptlljU/zGBfeLfY5KJRSo/N93bbk1pHyW1itwh8Ad+QDdklXgzZeq
         4cABG+WFYXLl005jFN8TEKbAhfMtgVNeHDMfvGM4s2HNq9cB1PBLJDDZ9W4VnkYEj0SW
         LzpA==
X-Gm-Message-State: AOJu0YzL7Vfo5G2b+TVMWFipG7Txvyp6QTu8Yl+0vO/BqU8KfarmkEvf
        mCKqQw034B2OQ6MsBAHw1iZogA==
X-Google-Smtp-Source: AGHT+IFyEo2wSBiPRJnckrDegNg0NeDZqDlPhe8hJH/cfxJUh9p+yLAaU1S7w4zitiNGkGO/gvZ7HA==
X-Received: by 2002:a05:600c:19d1:b0:405:dbe2:df10 with SMTP id u17-20020a05600c19d100b00405dbe2df10mr4204939wmq.35.1699538739722;
        Thu, 09 Nov 2023 06:05:39 -0800 (PST)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id o7-20020a05600c4fc700b004064ac107cfsm2215648wmq.39.2023.11.09.06.05.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Nov 2023 06:05:39 -0800 (PST)
Message-ID: <66d80e73-221b-4510-ab4f-2e0b896be4e8@jguk.org>
Date:   Thu, 9 Nov 2023 14:05:38 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From:   Jonny Grant <jg@jguk.org>
Subject: Re: strncpy clarify result may not be null terminated
To:     Alejandro Colomar <alx@kernel.org>
Cc:     Paul Eggert <eggert@cs.ucla.edu>,
        Carlos O'Donell <carlos@redhat.com>,
        Zack Weinberg <zack@owlfolio.org>,
        GNU libc development <libc-alpha@sourceware.org>,
        'linux-man' <linux-man@vger.kernel.org>
References: <ZUpjI1AHNOMOjdFk@devuan> <ZUsoIbhrJar6ojux@dj3ntoo>
 <ZUtaH35V3koxTSL0@debian>
 <16cc15a4-cfc0-49f4-9ebf-ecf0901700ce@app.fastmail.com>
 <ZUukRqsFNr7v_2q7@debian> <d213e504-9b2a-1526-ded8-2d283a226b4d@redhat.com>
 <ZUwHr2-l1WADR57b@debian> <8ebee0fc-1e77-41d9-8feb-8c1083a30a93@cs.ucla.edu>
 <ZUwn82bp6wHceMS1@debian> <bc621e0c-2e00-4cda-b888-637fd48ec32b@jguk.org>
 <ZUy-1XlYyQ7MAI6f@debian>
Content-Language: en-GB
In-Reply-To: <ZUy-1XlYyQ7MAI6f@debian>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 09/11/2023 11:13, Alejandro Colomar wrote:
> Hi Jonny,
> 
> On Thu, Nov 09, 2023 at 10:13:24AM +0000, Jonny Grant wrote:
>> On 09/11/2023 00:29, Alejandro Colomar wrote:
>> How about following the style of the other man pages that put the notes about each function below them? (rather than above)
>> https://man7.org/linux/man-pages/man3/string.3.html
>>
>> size_t strlen(const char *s);
>> Return the length of the string s.
>>
>>
>> At the moment on string_copying there are // comments on the line above each function. So the presentation of the information is different:
>>
>> // Copy/catenate a string.
>> char *strcpy(char *restrict dst, const char *restrict src);
>> char *strcat(char *restrict dst, const char *restrict src);
> 
> The reason for this presentation is that I want to first look at what
> they do, and only then look at the function you need to do that.

That appears different to the man page convention. It looks odd especially with the extra // that I don't recall other pages having in the description, usually that would be for examples. Consistency is best, but I'll leave it with you.
Kind regards
Jonny

> 
> So, if you want to copy from a character sequence into a string, you
> search for that, and it will tell you what functions you can use for
> that (strncat(3) is the only standard one).
> 
> If you want to search for a specific function, you can always search
> with '/strncpy'.
> 
> Cheers,
> Alex
> 
