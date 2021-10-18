Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 622744310EC
	for <lists+linux-man@lfdr.de>; Mon, 18 Oct 2021 08:59:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229708AbhJRHBV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 18 Oct 2021 03:01:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229533AbhJRHBV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 18 Oct 2021 03:01:21 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67F77C06161C;
        Sun, 17 Oct 2021 23:59:10 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id a140-20020a1c7f92000000b0030d8315b593so9312437wmd.5;
        Sun, 17 Oct 2021 23:59:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=KVBpzd/PFUoy31MyFPLSRZGeEhdCAvaKpYllKS2fhYY=;
        b=Khl4/VXbsty4G12orNqpliHM02P75y42baoLHrB9hL//cI7tuGHwqrbI9JtkJvqepc
         zqdxjmofsTM91G4lgfrKaWvMubX6P6jgahneZDYLJIenfWSIlePqGgfheoxSAoAcuNmS
         rG4Yb7SBWPxkqJOjYsqhyLhf4dg5PGicmQ4r8t4Pa/1nIbSSf2cl1iAH7T2ekASlkigE
         oORp7oqlLR7cUJ5DI2AaF5nWg3ZwJx93mI5VrHwarmm67hkEmnZnl54TALk9fiR/2xIz
         f2DSF6ctjHFAJOsZ3IF+gv3ALhGVxwAS1aP0hiaRXbM/mNdflZeSm1/kLaaVgXlAx5JX
         K1YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=KVBpzd/PFUoy31MyFPLSRZGeEhdCAvaKpYllKS2fhYY=;
        b=3j37ONoOPqBEBJF9pzOvyNCeu+k3o9HynmZS3IqetTacw7cJhkXeAphMOzGUMxG4ka
         Xwj56tpeYmsAMKhC+O3bKzvhZyCorbwz2I6Hir35a16xyJy2XoVUQTiNbtdJ3fluBXEm
         AA+giyH1jvfStEatqZbp2vTQEIYGcbF/eVvyT5pfFrpXv1IWE4xaPXDocjd6QOZN8Ahu
         ZkU+RUThsZa3QUpkMQTtLAuge6eCKSEGvGINZHq5rY6negWw3tu41wtenEZbTpcFfEjG
         gJit/bMqI7mUARH7ceSBFcbFYsCEWEks4866wQ4Ov4XFApfLcTLgnyWmuPVST4+oDCMY
         8/mQ==
X-Gm-Message-State: AOAM531a60wuXD7tKKabi2TquTaBsJEYUfF/1QhG5MEEUgJuNo19/u8W
        Stf/Md0snq3TEv9cThgZySA/A2qMnNo=
X-Google-Smtp-Source: ABdhPJyD6BFRi8HPp6d42zc7LfQjiQx6ZCcp4jeaTytbkJjGQsA9UUsm2BfClNfTniN8j/WbfPuNeg==
X-Received: by 2002:a05:600c:a4b:: with SMTP id c11mr27858431wmq.97.1634540349058;
        Sun, 17 Oct 2021 23:59:09 -0700 (PDT)
Received: from [10.168.10.11] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id w2sm11680126wrt.31.2021.10.17.23.59.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 Oct 2021 23:59:08 -0700 (PDT)
Subject: Re: [PATCH] mctp.7: Add man page for Linux MCTP support
To:     Jeremy Kerr <jk@codeconstruct.com.au>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org, Dwaipayan Ray <dwaipayanray1@gmail.com>,
        Joe Perches <joe@perches.com>,
        Andy Whitcroft <apw@canonical.com>,
        Lukas Bulwahn <lukas.bulwahn@gmail.com>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20211014070519.2037226-1-jk@codeconstruct.com.au>
 <97962dba-3787-2cd2-bc96-63b009ce9af8@gmail.com>
 <e6a15bfbb2337b78c9e1305956e71cebd7b4328f.camel@codeconstruct.com.au>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <3946e062-8e97-78a2-b1db-2a7d92c4730b@gmail.com>
Date:   Mon, 18 Oct 2021 08:59:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <e6a15bfbb2337b78c9e1305956e71cebd7b4328f.camel@codeconstruct.com.au>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[CC += checkpatch.pl maintainers (see reason below)]


Hi Jeremy,

On 10/18/21 7:05 AM, Jeremy Kerr wrote:
> Hi Alex,
> 
>> Thanks for the manual page!
> 
> And thanks for the review! In general, I've updated to suit your
> comments, just a couple of queries inline.
> 
>>> +.SH SYNOPSIS
>>> +.nf
>>> +.B #include <sys/socket.h>
>>> +.B #include <linux/mctp.h>
>>> +.PP
>>> +.B mctp_socket = socket(AF_MCTP, SOCK_DGRAM, 0);
>>
>> mctp_socket is a variable name.  See socket.7 for an example.
>> It should be in italics.
> 
> This was based on udp.7; want me to send a patch for that too?

Sure. Thanks!

> 
>>> +Packets between a local and remote endpoint are identified by the
>>> source
>>> +and destination EIDs, plus a three-bit tag value.
>>> +.PP
>>> +Addressing data is passed in socket system calls through
>>> +.B struct sockaddr\_mctp
>>
>> That escape is unnecessary.  Did you see it in another page perhaps?
> 
> I thought I'd seen some odd line-breaks at the underscore, but can't
> replicate that now. Will remove.
> 
>>> +typedef uint8_t        mctp_eid_t;
>>> +
>>> +struct mctp_addr {
>>> +    mctp_eid_t         s_addr;
>>> +};
>>> +
>>> +struct sockaddr_mctp {
>>> +    unsigned short int smctp_family;  /* = AF_MCTP */
>>
>> We only use 'int' in 'unsigned int', as the kernel does (or attempts
>> to do).  checkpatch.pl warns about 'unsigned short int', IIRC.
> 
> No, there are no warnings from checkpatch there; that's just copied from
> the current kernel header.

Huh!  That's weird; 'unsigned long int' does, so I expected the same 
with 'short'.  Maybe a bug in checkpatch?


WARNING:UNNECESSARY_INT: Prefer 'unsigned long' over 'unsigned long int' 
as the int is unnecessary
#42: FILE: /home/user/src/alx/test/unsigned_short_int.c:42:
+	unsigned long int a;

total: 0 errors, 1 warnings, 0 checks, 65 lines checked


> 
> However, I have just sent a separate patch to change that to
> __kernel_sa_family_t. Should I use that here (keeping this an exact
> match of the kernel header), or stick to the more familiar unsigned
> short?


I prefer 'unsigned short' for consistency with 'unsigned long'.

> 
> Cheers,
> 
> 
> Jeremy
> 

Cheers,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
