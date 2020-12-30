Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B04342E7D2A
	for <lists+linux-man@lfdr.de>; Thu, 31 Dec 2020 00:25:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726333AbgL3XYz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Dec 2020 18:24:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726302AbgL3XYz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Dec 2020 18:24:55 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4021BC061573
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 15:24:15 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id q18so18838864wrn.1
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 15:24:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=gPKLQ6fBMNxEsNWWM20HD7JaRSbtz+1LOI8DAH4BJKg=;
        b=upmuKl6apNU1DbqQB+D31wMfQIdjzgKBWYfNWFvOkAEXVWt1dV7aN1dsNpaaGtf70h
         VDkZYyBnJpEEM71gOgDVZY3CNZsddcAuVu0RgfQVO5mnK0YpPQjUHZmKrJyqNlpenZaG
         XzWlrPRKT2ak/CMZk/nzYwkHI2m18PBPEnjEMb1BNiko1x6rrwtGxpRzp/zl2756gnX4
         FYgmZl1q8u32dSffwQrrlhmCCQClJXv4UvttkhHsWcSbaC6Qf6Sq0yUT4y9Bvaw1xylc
         kX1yRmLnsJv/QVG4hqtKGIJUBFasLbqi5eSI+bxWpqXDg9XW1qiakuPmjI3Q9v/8eFET
         jKDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=gPKLQ6fBMNxEsNWWM20HD7JaRSbtz+1LOI8DAH4BJKg=;
        b=da2NXL8QKtYxTz7lRaBLQExROVcKYxpfI/wLR3FWvs7miI2pCJfVvKSd3ycMQC0F/f
         dPYeZz0M/u2FPglqwfB4GxzgJPscUfasayHLQEHxoErxJS8OyGJ2/SNaTlWs7RDpVfml
         l+dA+ld0/BFzFEKIZ285S731aUtRNs/572MA1hAuShjJlxg/HRdYA33HpKan/j+TT/Oy
         dZ+KO4Wx3jlcR3yWQRSo3kt6bK6sdOP/SWDHHRFg0Uc+Zlo1NvvHET1G3/jUPcd+jjgr
         jZk9IQW10MVUA94PlI6bIntSk19dU+r9gmmw1a21yuRKDD9P26XP949oL/mdymK9ze5v
         NbfQ==
X-Gm-Message-State: AOAM5322V5tfWBHNk2CkZkEMZxawy7Ih9xIM3t6iSyt7RKFuVmbJ8pO9
        2juEVmbE5UqjpMt6He2E9SdGKANEsic=
X-Google-Smtp-Source: ABdhPJzyNrkxMnzFoRYFUS1tExU7TrfTNW1zvAslijD5+8+bj9THdgGyif0AS297xkO+WVLRzo6z9A==
X-Received: by 2002:a5d:674b:: with SMTP id l11mr64488491wrw.247.1609370653997;
        Wed, 30 Dec 2020 15:24:13 -0800 (PST)
Received: from [192.168.0.160] ([170.253.49.0])
        by smtp.gmail.com with ESMTPSA id t188sm8534940wmf.9.2020.12.30.15.24.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Dec 2020 15:24:13 -0800 (PST)
Subject: Re: [PATCH] Various pages: Consistently use 'unsigned int'
To:     mtk.manpages@gmail.com
Cc:     linux-man <linux-man@vger.kernel.org>
References: <20201230214147.874671-2-alx.manpages@gmail.com>
 <CAKgNAkhFQ1R5-z5ERE1kzS=wiALK220UfLYONRh+zp34E0EFwQ@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <3e83212e-cab0-1746-b0a2-e9115ba9ef44@gmail.com>
Date:   Thu, 31 Dec 2020 00:24:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <CAKgNAkhFQ1R5-z5ERE1kzS=wiALK220UfLYONRh+zp34E0EFwQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 12/30/20 11:34 PM, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On Wed, 30 Dec 2020 at 22:42, Alejandro Colomar <alx.manpages@gmail.com> wrote:
>>
>> $ find man? -type f \
>>   |xargs sed -i \
>>         -e 's/unsigned \*/unsigned int */g'
>>         -e 's/unsigned "/unsigned int "/g';
> 
> The patch is fine in my opinion, but the commit message needs work.
> Something like:
> 
> 1. Most pages use 'unsigned int'; make them all do so.
> 2. Explicit 'unsigned int' is clearer than 'unsigned'.
> 

Agree.
I wasn't convinced by my commit msg,
but didn't come up with a good one (:
I'll fix it tomorrow.

Cheers,

Alex

> Thanks,
> 
> Michael
> 
>>
>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
>> ---
>>  man2/getcpu.2     | 4 ++--
>>  man2/io_setup.2   | 2 +-
>>  man2/mbind.2      | 2 +-
>>  man3/cfree.3      | 2 +-
>>  man3/des_crypt.3  | 8 ++++----
>>  man3/getrpcport.3 | 2 +-
>>  man3/random.3     | 4 ++--
>>  man3/xdr.3        | 2 +-
>>  8 files changed, 13 insertions(+), 13 deletions(-)
>>
>> diff --git a/man2/getcpu.2 b/man2/getcpu.2
>> index fc36b43b5..46e4d53ff 100644
>> --- a/man2/getcpu.2
>> +++ b/man2/getcpu.2
>> @@ -16,8 +16,8 @@ getcpu \- determine CPU and NUMA node on which the calling thread is running
>>  .nf
>>  .B #include <linux/getcpu.h>
>>  .PP
>> -.BI "int getcpu(unsigned *" cpu ", unsigned *" node \
>> -", struct getcpu_cache *" tcache );
>> +.BI "int getcpu(unsigned int *" cpu ", unsigned int *" node ,
>> +.BI "           struct getcpu_cache *" tcache );
>>  .fi
>>  .SH DESCRIPTION
>>  The
>> diff --git a/man2/io_setup.2 b/man2/io_setup.2
>> index e08d19bb8..bd52a5311 100644
>> --- a/man2/io_setup.2
>> +++ b/man2/io_setup.2
>> @@ -11,7 +11,7 @@ io_setup \- create an asynchronous I/O context
>>  .nf
>>  .BR "#include <linux/aio_abi.h>" "          /* Defines needed types */"
>>  .PP
>> -.BI "long io_setup(unsigned " nr_events ", aio_context_t *" ctx_idp );
>> +.BI "long io_setup(unsigned int " nr_events ", aio_context_t *" ctx_idp );
>>  .fi
>>  .PP
>>  .IR Note :
>> diff --git a/man2/mbind.2 b/man2/mbind.2
>> index bf66dfc6c..d98969e7f 100644
>> --- a/man2/mbind.2
>> +++ b/man2/mbind.2
>> @@ -41,7 +41,7 @@ mbind \- set memory policy for a memory range
>>  .PP
>>  .BI "long mbind(void *" addr ", unsigned long " len  ", int " mode ,
>>  .BI "           const unsigned long *" nodemask  ", unsigned long " maxnode ,
>> -.BI "           unsigned " flags );
>> +.BI "           unsigned int " flags );
>>  .PP
>>  Link with \fI\-lnuma\fP.
>>  .fi
>> diff --git a/man3/cfree.3 b/man3/cfree.3
>> index 2a09527a7..74223db71 100644
>> --- a/man3/cfree.3
>> +++ b/man3/cfree.3
>> @@ -36,7 +36,7 @@ cfree \- free allocated memory
>>  .BI "void cfree(void *" ptr );
>>  .PP
>>  /* In SCO OpenServer */
>> -.BI "void cfree(char *" ptr ", unsigned " num ", unsigned " size );
>> +.BI "void cfree(char *" ptr ", unsigned int " num ", unsigned int " size );
>>  .PP
>>  /* In Solaris watchmalloc.so.1 */
>>  .BI "void cfree(void *" ptr ", size_t " nelem ", size_t " elsize );
>> diff --git a/man3/des_crypt.3 b/man3/des_crypt.3
>> index 7f34c1585..66fe78337 100644
>> --- a/man3/des_crypt.3
>> +++ b/man3/des_crypt.3
>> @@ -21,11 +21,11 @@ DES encryption
>>  .\" .B #include <des_crypt.h>
>>  .B #include <rpc/des_crypt.h>
>>  .PP
>> -.BI "int ecb_crypt(char *" key ", char *" data ", unsigned " datalen ,
>> -.BI "              unsigned " mode );
>> +.BI "int ecb_crypt(char *" key ", char *" data ", unsigned int " datalen ,
>> +.BI "              unsigned int " mode );
>>  .PP
>> -.BI "int cbc_crypt(char *" key ", char *" data ", unsigned " datalen ,
>> -.BI "              unsigned " mode ", char *" ivec );
>> +.BI "int cbc_crypt(char *" key ", char *" data ", unsigned int " datalen ,
>> +.BI "              unsigned int " mode ", char *" ivec );
>>  .PP
>>  .BI "void des_setparity(char *" key );
>>  .PP
>> diff --git a/man3/getrpcport.3 b/man3/getrpcport.3
>> index 2eba5d30a..d5753d39b 100644
>> --- a/man3/getrpcport.3
>> +++ b/man3/getrpcport.3
>> @@ -13,7 +13,7 @@ getrpcport \- get RPC port number
>>  .B "#include <rpc/rpc.h>"
>>  .PP
>>  .BI "int getrpcport(const char *" host ", unsigned long " prognum ,
>> -.BI "               unsigned long " versnum ", unsigned " proto );
>> +.BI "               unsigned long " versnum ", unsigned int " proto );
>>  .fi
>>  .SH DESCRIPTION
>>  .BR getrpcport ()
>> diff --git a/man3/random.3 b/man3/random.3
>> index 33d15316b..9ea6fce3f 100644
>> --- a/man3/random.3
>> +++ b/man3/random.3
>> @@ -39,9 +39,9 @@ random, srandom, initstate, setstate \- random number generator
>>  .PP
>>  .B long random(void);
>>  .PP
>> -.BI "void srandom(unsigned " seed );
>> +.BI "void srandom(unsigned int " seed );
>>  .PP
>> -.BI "char *initstate(unsigned " seed ", char *" state ", size_t " n );
>> +.BI "char *initstate(unsigned int " seed ", char *" state ", size_t " n );
>>  .PP
>>  .BI "char *setstate(char *" state );
>>  .fi
>> diff --git a/man3/xdr.3 b/man3/xdr.3
>> index 713827567..978a50660 100644
>> --- a/man3/xdr.3
>> +++ b/man3/xdr.3
>> @@ -433,7 +433,7 @@ C characters and their external representations.
>>  This routine returns one if it succeeds, zero otherwise.
>>  .PP
>>  .nf
>> -.BI "bool_t xdr_u_int(XDR *" xdrs ", unsigned *" up );
>> +.BI "bool_t xdr_u_int(XDR *" xdrs ", unsigned int *" up );
>>  .fi
>>  .IP
>>  A filter primitive that translates between C
>> --
>> 2.29.2
>>
> 
> 
