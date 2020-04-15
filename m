Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 73C831A93A9
	for <lists+linux-man@lfdr.de>; Wed, 15 Apr 2020 08:48:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2635103AbgDOGsk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Apr 2020 02:48:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2635099AbgDOGsd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Apr 2020 02:48:33 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97E8EC061A0C
        for <linux-man@vger.kernel.org>; Tue, 14 Apr 2020 23:48:32 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id d17so10795304wrg.11
        for <linux-man@vger.kernel.org>; Tue, 14 Apr 2020 23:48:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=55sm4+u2AihqvB89vemvpRfc4Lx8VEnVfudOC+C0x24=;
        b=VX6I1tRbYy5p7JTjGYyXtdJ6FVH0L7ujxMtn0TIeLmlMfN7aDnYY1XiktPoo0m2gE5
         4xKoIWV/8FT6UR/fBfCIFfeFXnGaG+1FdRUQKZV7sFypEyxjdw8N4Sx2+6nGkh33QkES
         vKIRPr86nkSljYJKZW0y2D0eL/H8yc1eYmjHE7OPhacQqt/4doIo2dv3TiMtE8zrFKqP
         +Q5XPL7LZTSNbIrlw67OxaEqhAs7OGdxbxI461B97T5jd2p8HDPIqdZBtX3YyPrjYBoD
         7u//qcUlp4TqwFE9q9388vjW6Yxn5pixheWFbIW+Ar+hifvyTIRU3HzUfy06WTCR6sRR
         nyEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=55sm4+u2AihqvB89vemvpRfc4Lx8VEnVfudOC+C0x24=;
        b=O1D//zGQxc7hm2umm/xkndj3pc1qpOBOotNI2V9Y6RrjJg1X3c4rfC9Ma2LhY332ax
         j8NuuFXaa9SV/gPjvypDxpxEWe0Xib+h3GCcfUenv3oXbuN8vBsQTx1Nna0sB5j0DKnF
         ze1hxtPVlenF56kFWraGEh1L8FK5ZtwYRLo2cVsZtnb5P4r4xltWzv8X3cDI+bp2mhzf
         Qo0kNlZTBQbYf44LWWYkmMs9mJo73ao46iKteeTNgKFg3lMw8K9TZVqUl94p9mGOqroo
         F77Y14Vetvvv/1RiVTstyswqdR1ciq0oS2ztjPMnBZuU8k8O65eG8IshC/ymAK3spFPF
         YTYw==
X-Gm-Message-State: AGi0PuahNjcW6/t/pNEjNh3jWf6UzgDHUSPt3ofJCFQwOAIcEbLLwgTQ
        l4aErpPC14XRKL+c8HD3iuIMujIV
X-Google-Smtp-Source: APiQypJJ8JIgwWBm30/yCYsobf98QsyAGGdhfA85C7sGu2RqIohupLyvo3+BRQQecWD6tnMGyKn/ng==
X-Received: by 2002:adf:e3ca:: with SMTP id k10mr10688480wrm.53.1586933311295;
        Tue, 14 Apr 2020 23:48:31 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id q187sm21649692wma.41.2020.04.14.23.48.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Apr 2020 23:48:30 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>,
        Mike Christie <mchristi@redhat.com>
Subject: Re: ioctl_list.2: complete overhaul needed
To:     Heinrich Schuchardt <xypron.glpk@gmx.de>,
        Eugene Syromyatnikov <evgsyr@gmail.com>
References: <545F8D2E.5030308@gmx.de>
 <CAKgNAkh-HBjh5AqNpTTfQjgeJVYx9LGpGDzO87zMWEmgMOd0bA@mail.gmail.com>
 <CACGkJdv5Be4KqmsP2AK99FmkZ5hB9jJk9YzsrS8Qzph8ceBvvQ@mail.gmail.com>
 <5e9b4408-410f-6fb4-9c8b-0bd68e64577d@gmx.de>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <a2e450ec-2566-d490-9138-674cc54e05da@gmail.com>
Date:   Wed, 15 Apr 2020 08:48:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <5e9b4408-410f-6fb4-9c8b-0bd68e64577d@gmx.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Heinrich,

On 4/14/20 6:21 PM, Heinrich Schuchardt wrote:
> On 2020-04-14 17:37, Eugene Syromyatnikov wrote:
>> On Tue, Apr 14, 2020 at 5:18 PM Michael Kerrisk (man-pages)
>> <mtk.manpages@gmail.com> wrote:
>>>
>>> Hello Heinrich,
>>>
>>> On Sun, 9 Nov 2014 at 16:52, Heinrich Schuchardt <xypron.glpk@gmx.de> wrote:
>>>>
>>>>
>>>> Hello Michael,
>>>>
>>>> the current ioctl_list.2 man-page descripton starts
>>>> "This  is  Ioctl List 1.3.27, a list of ioctl calls in Linux/i386 kernel
>>>> 1.3.27."
>>>> So the man-page represents the state of Sep 14th, 1995.
>>>> It enumerates only 421 out of over 1200 calls.
>>>>
>>>> The list contains hex values of different constants. I just wonder for
>>>> which architecture (alpha, i386, mips, or sparc at that time). No
>>>> information is supplied.
>>>>
>>>> Current values depend on the architecture, e.g.
>>>>
>>>> On amd64
>>>> 0x82307201      VFAT_IOCTL_READDIR_BOTH
>>>> 0x82307202      VFAT_IOCTL_READDIR_SHORT
>>>> 0x80047210      FAT_IOCTL_GET_ATTRIBUTES
>>>> 0x40047211      FAT_IOCTL_SET_ATTRIBUTES
>>>> 0x80047213      FAT_IOCTL_GET_VOLUME_ID
>>>>
>>>> On mips
>>>> 0x42187201      VFAT_IOCTL_READDIR_BOTH
>>>> 0x42187202      VFAT_IOCTL_READDIR_SHORT
>>>> 0x40047210      FAT_IOCTL_GET_ATTRIBUTES
>>>> 0x80047211      FAT_IOCTL_SET_ATTRIBUTES
>>>> 0x40047213      FAT_IOCTL_GET_VOLUME_ID
>>>>
>>>> Hence hex values should be removed.
>>>
>>>
>>> As you suggest, I've removed the hex values from the lists.
>>
>> Those can be replaced with the _IO* macro definitions. Meanwhile,  the
>> list is somewhat far from complete; strace has some approximation that
>> can be uses a basis of a more complete and reliable list
>> (linux/{32,64}/ioctls_inc*.h and linux/*/ioctls_arch*.h), but I'm not
>> sure if it is worth adding to the man page (moreover, entries are
>> constantly being added and changed there; yes, breaking the kernel ABI
>> in the process sometimes).
> 
> Man-pages like netdevices.7 or ioctl_fat.2 are what is needed to help a
> user who does not want to read through the kernel code.

Yes, I agree.

> If ioctl_list.2 has not been reasonably maintained since Linux 1.3.27
> and hence is not a reliable source of information,

I must confess I've never loved that page. and in the 24+ years since 
it was released, it's seen very little useful change to the content.
(You of course are well qualified to know that, since the biggest 
changes have come from you, and as we know they've not been anything
big.)

> shouldn't it be dropped?

I'm inclined to do so. Let's see if anyone else comments.

Cheers,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
