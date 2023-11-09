Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 687927E6780
	for <lists+linux-man@lfdr.de>; Thu,  9 Nov 2023 11:13:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231270AbjKIKNb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Nov 2023 05:13:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230055AbjKIKNa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Nov 2023 05:13:30 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 287882D51
        for <linux-man@vger.kernel.org>; Thu,  9 Nov 2023 02:13:28 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-507f1c29f25so838599e87.1
        for <linux-man@vger.kernel.org>; Thu, 09 Nov 2023 02:13:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google; t=1699524806; x=1700129606; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wMNrkAhv//Hbkoy69DjLzz/hNr0Q/ePPTqKiPCtUVfA=;
        b=XU2FN7pDAOxy9cyJXu6J9DgXP87aZKoGvzTMgvJAF0pwai0ER67K5UFHPBKy1qerxj
         hIyK3GCzBt0ul2/DB3t3a9Rme0j2+940MvxBP2tFxS+tlkW5W1x4vr1kmW+ztE3S1e4U
         xoAdk/dJ4Xrfu7ifwanO1j1fkW+9JLAewXr9F8j3fuFeo+1QB3eDKma5PpuLVxUg1tsv
         1HydyVCd8wTB3aifAQLM2LIUwP6J4qY83lEeNFEa85CY9NOS0gFp8IUKinPMjPwZv8ZR
         cpYtmRC/xq3SSIL2yYbN80dbg0BgYKev7sfebv1KcF/gB8xRl94X0OdT3+p/9GaXUIau
         EiFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699524806; x=1700129606;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wMNrkAhv//Hbkoy69DjLzz/hNr0Q/ePPTqKiPCtUVfA=;
        b=wOSy6vEKwj20xrCkzP28RZG+JWQ2yJ9RbtqNMWTK0Bkuw08KwEFgp0YvUC2byHIgMI
         JIYybcNCCmfhqYZP/+I2CZybe0D1z6kkurU+owLA6gafqWkpgKVx2rMzrBfrwtZs6hjE
         3dKi461U2exXgoauLb/Yk2qZjU3tUnaE6OF7RW3S3W0W+C6eo0t7lkvxmONAdzCXu5+j
         RkQp8sOh25EBpA4y/t2M80YLFfJ1DTYWeEx1K7uCyl9e3VBAoraGznrELQhLWi9dFmYJ
         OjznSEMZtNYtT10I8/WfqPLEgoY2hO5+fy6fLVtEzE61IgQTdij9R735ddsjuNmodzLe
         BTKA==
X-Gm-Message-State: AOJu0YxRfEcJc8PKZC9KmauTPM8zPAYKdGGQlxydweQb5dF4TESrxILI
        O2qadxZlqYIcoXhe8sB4SAS/zfUDTonpw5R1H+M=
X-Google-Smtp-Source: AGHT+IEXqQicqNwMzeQPZCh4xGZ13xAw4xJ7e0Bd0cp8Cl1LQU006lEMJVjgZVMTzfpnBgDChxINlA==
X-Received: by 2002:a05:6512:3053:b0:507:a003:57a2 with SMTP id b19-20020a056512305300b00507a00357a2mr1198956lfb.52.1699524806312;
        Thu, 09 Nov 2023 02:13:26 -0800 (PST)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id o13-20020a05600c378d00b003fbe4cecc3bsm1589759wmr.16.2023.11.09.02.13.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Nov 2023 02:13:25 -0800 (PST)
Message-ID: <bc621e0c-2e00-4cda-b888-637fd48ec32b@jguk.org>
Date:   Thu, 9 Nov 2023 10:13:24 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: strncpy clarify result may not be null terminated
Content-Language: en-GB
To:     Alejandro Colomar <alx@kernel.org>,
        Paul Eggert <eggert@cs.ucla.edu>
Cc:     Carlos O'Donell <carlos@redhat.com>,
        Zack Weinberg <zack@owlfolio.org>,
        GNU libc development <libc-alpha@sourceware.org>,
        'linux-man' <linux-man@vger.kernel.org>
References: <ZUo6btEFD_z_3NcF@devuan>
 <929865e3-17b4-49c4-8fa9-8383885e9904@jguk.org> <ZUpjI1AHNOMOjdFk@devuan>
 <ZUsoIbhrJar6ojux@dj3ntoo> <ZUtaH35V3koxTSL0@debian>
 <16cc15a4-cfc0-49f4-9ebf-ecf0901700ce@app.fastmail.com>
 <ZUukRqsFNr7v_2q7@debian> <d213e504-9b2a-1526-ded8-2d283a226b4d@redhat.com>
 <ZUwHr2-l1WADR57b@debian> <8ebee0fc-1e77-41d9-8feb-8c1083a30a93@cs.ucla.edu>
 <ZUwn82bp6wHceMS1@debian>
From:   Jonny Grant <jg@jguk.org>
In-Reply-To: <ZUwn82bp6wHceMS1@debian>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 09/11/2023 00:29, Alejandro Colomar wrote:
> Hi Pail,
> 
> On Wed, Nov 08, 2023 at 03:31:38PM -0800, Paul Eggert wrote:
>> On 11/8/23 14:11, Alejandro Colomar wrote:
>>> I just don't think we need,
>>> as GNU or Linux projects, to be restricted to the decisions of ISO.  We
>>> can realize that certain functions are bad, and mark them as deprecated
>>> in our scope.
>>
>> There's enough use of strncpy for the intended use (smallish fixed size
>> character arrays that are null padded, not null terminated) that saying it's
>> deprecated would likely cause more trouble than it's worth. It's not just
>> utmp and tar; it's also socket programming (sun_path) and I'm sure other
>> stuff.
>>
>> Were we designing the C library from scratch I'd agree with you: in that
>> context, strncpy would clearly be more trouble than it's worth. But now that
>> we're stuck with strncpy we have better things to do than try to deprecate
>> it.
> 
> No, no, I'm not trying to deprecate it.  I was just saying that *iff*
> all of its uses were dead, I'd deprecate it.  But they're clearly not
> dead, so it's a perfect function for those cases.
> 
>>
>> Instead of saying "deprecate" I suggest we say something like "This function
>> is generally a poor choice for processing strings" and point to the longer
>> man page about strings in general. That's what the glibc manual does and it
>> works reasonably well.
> 
> Yes, I've done something like this.  string_copying(7) recommends
> avoiding fixed-width null-padded buffers in APIs.  But for those use
> cases that already exist, this is the function to use.

https://man7.org/linux/man-pages/man7/string_copying.7.html
Rather than "catenation", in my experience "concatenation" is the common term to explain what it does. There are quite a few on that page. Probably other man pages too.

How about following the style of the other man pages that put the notes about each function below them? (rather than above)
https://man7.org/linux/man-pages/man3/string.3.html

size_t strlen(const char *s);
Return the length of the string s.


At the moment on string_copying there are // comments on the line above each function. So the presentation of the information is different:

// Copy/catenate a string.
char *strcpy(char *restrict dst, const char *restrict src);
char *strcat(char *restrict dst, const char *restrict src);


Kind regards
Jonny
