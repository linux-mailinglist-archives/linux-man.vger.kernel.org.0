Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CE2376BF398
	for <lists+linux-man@lfdr.de>; Fri, 17 Mar 2023 22:11:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229599AbjCQVK6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 17 Mar 2023 17:10:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41480 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229509AbjCQVK5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 17 Mar 2023 17:10:57 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E477010AAC
        for <linux-man@vger.kernel.org>; Fri, 17 Mar 2023 14:10:55 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id r18so5581462wrx.1
        for <linux-man@vger.kernel.org>; Fri, 17 Mar 2023 14:10:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679087454;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=ESKmbahd81s6ePs4ezV/qqtlS+i8yO9mua1D7JaNTxA=;
        b=VbyxJv1Li6sh77lLgKFgUwQKfmQEsseUl/Aoo7qhR+c8vwzo6pE8dRmjFltuFmzoJ4
         84F5zgTs77c5Z2HgeeRbKlElnVayxdVG46Zu3FOuyY71Y1BYMqTEEpJpl3izigB9IFtv
         Zc2vWpP6SoC+TNy0dEfYCynTA6XcX5fbfiFif39HcNK30sgM3iTa1elRllNhM2yTMvGl
         r+nX+xnuk7gLEV3BtDF4XMNclljFYvShgXHNnfhO9N3hxWvvGzzaJmi7z2E/XiZLPKIU
         hk8OzfueCqJS3y6hWVq7J9J/3MEqAVRYdnrjkY3R5ia7D+SIZdU0wz5o7JTHg/fB5IQm
         PAbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679087454;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ESKmbahd81s6ePs4ezV/qqtlS+i8yO9mua1D7JaNTxA=;
        b=Au2R5TRciP0A0lhLllm/E6wMzQwrh4Y9usVWd5VX9iFyJS4CMR46hrCKRTipvC+iNt
         hpSEnizPo6UBo0W8f+ihWsm0EbU6RQn4vpUw6pigHS8kQLliMedKbI0s+6Ezm5ZxXSah
         8d090STFg1PewCdyIFmS1GX6U6pkFfwCeJpT+lCO7O9WuOobydrODcLys4O1A1VXzMy3
         K1SsOwEP8a9nUntx2CirP+K+hbL5mANAvga80WQ1ixrrPVmk1GPlWUQfjvgJ17fx579F
         rdQgWV9X/8BsaKRecmXIdpjiOaww6Gvas461mWGXx6uW4qUwJ06kpAQXV5Jn76PhSTBV
         UmPA==
X-Gm-Message-State: AO0yUKVEYZYjlJsMtmVE7l7Pl/uYDqF88tNSi5Eg2tclK+JaWo4Tw18w
        Y8hNUK9J4UlttnxsmZKSny9MMdZ5B0c=
X-Google-Smtp-Source: AK7set9cEjR0JqIglOGDKjkV1iS170+TYy0yY9G2n7JHRnkQsKCW5LfRFU43uEyNTokvKF4Fjmjlkw==
X-Received: by 2002:adf:cc8b:0:b0:2d0:776:b766 with SMTP id p11-20020adfcc8b000000b002d00776b766mr7430985wrj.8.1679087454290;
        Fri, 17 Mar 2023 14:10:54 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.51.134])
        by smtp.gmail.com with ESMTPSA id z6-20020a056000110600b002c557f82e27sm2759293wrw.99.2023.03.17.14.10.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Mar 2023 14:10:53 -0700 (PDT)
Sender: Alejandro Colomar <alx.mailinglists@gmail.com>
Message-ID: <ea4c6ddd-1db8-a005-7725-f30bc58e89f3@gmail.com>
Date:   Fri, 17 Mar 2023 22:10:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [patch v2] aligned_alloc: conform to C17
Content-Language: en-US
To:     DJ Delorie <dj@redhat.com>, libc-alpha@sourceware.org,
        linux-man@vger.kernel.org
References: <xnjzzf2oc3.fsf@greed.delorie.com>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <xnjzzf2oc3.fsf@greed.delorie.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi DJ

On 3/17/23 20:02, DJ Delorie via Libc-alpha wrote:
> Changes from v1:
> 
> * Fixed malloc-debug
> * alignment of zero is invalid
> * fixed ABI tables
> 
> References:
> https://patchwork.sourceware.org/project/glibc/patch/33ec9e0c1e587813b90e8aa771c2c8e6e379dd48.camel@posteo.net/
> https://sourceware.org/bugzilla/show_bug.cgi?id=20137
> https://sourceware.org/pipermail/libc-alpha/2023-February/145858.html
> 
> The memory.texi portion matches Martin's proposed patch.
> 
> man page portion, quoted to avoid CI/CD issues (I can send an official
> patch separately after the glibc patch is applied):

Please :)  Thanks!

BTW, I guess C11 was equivalent to C17 in this regard, or was this
changed in C17?

Cheers,

Alex

> 
>> diff --git a/man3/posix_memalign.3 b/man3/posix_memalign.3
>> index f5d6618b7..a73ff0421 100644
>> --- a/man3/posix_memalign.3
>> +++ b/man3/posix_memalign.3
>> @@ -91,9 +91,8 @@ The function
>>  is the same as
>>  .BR memalign (),
>>  except for the added restriction that
>> -.I size
>> -should be a multiple of
>> -.IR alignment .
>> +.I alignment
>> +must be a power of two.
>>  .PP
>>  The obsolete function
>>  .BR valloc ()
