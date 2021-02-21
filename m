Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EE733320948
	for <lists+linux-man@lfdr.de>; Sun, 21 Feb 2021 10:02:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229502AbhBUJBx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 21 Feb 2021 04:01:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229634AbhBUJBo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 21 Feb 2021 04:01:44 -0500
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 092B2C061574
        for <linux-man@vger.kernel.org>; Sun, 21 Feb 2021 01:01:04 -0800 (PST)
Received: by mail-ej1-x62f.google.com with SMTP id d8so24018983ejc.4
        for <linux-man@vger.kernel.org>; Sun, 21 Feb 2021 01:01:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=cdtu0KArq7hEwlab3ocKU/M5J6u1Le1MWchmEXNtdHY=;
        b=WWL+4kHd1w5nFsfQc6t6WxLc3UKTyKfflE9MZU4aozYzCpH2hXSHW4Y8DJqH1IofGi
         gKNOBpRoz4tXx8LAPbbY0lgYE4gE5BmVU2+7cLP7XVUGGIs6ddDGGxhRkedN2jry+KLR
         GYBFf7FIuaXYzyK1DvzImDje7oontIt3/1yQjLEtlR+98pVcu42PYTzzPpqWK52AKwO8
         FL38t22VESFayMTGb5zvUDHqBoDaHie4xSxFwJFFvWM6y8Ypt9AY2hwcxD2vLuDQGZdw
         VRUMjMm/wpUA6URcqB6rxMpDueJGhCG1x4AsElYuRwZai9ImH951/NWfPQJOU9eIZXEo
         1p1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=cdtu0KArq7hEwlab3ocKU/M5J6u1Le1MWchmEXNtdHY=;
        b=eNrEpenNeULMkJ28tIkjU/jvQuh1yZAkZYtEXua9PA7419p1J0l+0+KDpEUznOmhLV
         uWvYayXTj8fbKW40M63Yyk4UEXuketnkuCcmEpHkq+YRzquwFGYbfcgi/4u6dLRpwZWB
         Ng6Cdj39YkqQfvmLxza3n08ZrP0vdFI0sxtHgwcB9djvyxLvYqBzzFt8wVgFa/jdtSAr
         kWSJZEWw1ADiQoJ/BMIIKUOGMOgVJhKhc2FhwciyXeVuawuIGBHFfFTjNV02Efn4dBX8
         6hxSMc2Nc9lIY7InP8dQW46AL9J9zKFNS8BVMm9yQ84nBqQPIGKyLOzI/n5irf8gEx/m
         3iqA==
X-Gm-Message-State: AOAM532LBmrR+TecWbHozW7uN/TB8TKndZHKVUIDlhgUubEUWlrkeLph
        LVWU0CCT0xq1LuRA2vqt7c6+u8b0u/v+YA==
X-Google-Smtp-Source: ABdhPJyvSLwluVbc8/hgAHoBw8ksRzzhSBKsgeU3AVNHhp+ftt5EQmmM0FfPfapP/ne3pXhcFOsS8A==
X-Received: by 2002:a17:906:4e19:: with SMTP id z25mr16163347eju.205.1613898062443;
        Sun, 21 Feb 2021 01:01:02 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b? ([2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b])
        by smtp.gmail.com with ESMTPSA id o16sm9297712edt.83.2021.02.21.01.01.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 Feb 2021 01:01:01 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Misleading documentation in Netlink(7) man page / doesn't match
 with Kernel
To:     Philipp Schuster <phip1611@gmail.com>
References: <CAKmF0pOMR9OMd4=ikHu31QGCVOWu10vvH4OzzgbUtPGGdbW05Q@mail.gmail.com>
 <CAKgNAkgHu8jMNfqcXjxvwSDP73fzA_2iYTRgucRn=UA1t=QHrg@mail.gmail.com>
 <CAKmF0pMWfH1RzEtQCh6yjDVqhtw8QxwPardoGt9ouheUVm0fkQ@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <20a6482a-ef18-59fe-37e0-23382d42e1a1@gmail.com>
Date:   Sun, 21 Feb 2021 10:00:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <CAKmF0pMWfH1RzEtQCh6yjDVqhtw8QxwPardoGt9ouheUVm0fkQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Philipp,

On 2/20/21 11:48 PM, Philipp Schuster wrote:
> Hi Michael,
> 
>> I'm a little unclear. Do you mean that the manual page should include
>> the additional comments?
> 
> 
> Yes, this is true. It must be clear that Netlink error responses,
> i.e. messages with type NLMSG_ERROR (0x2), can be longer than
> sizeof(struct nlmsgerr). In certain circumstances the payload can be longer.
> 
> I appended a patch. If you need further information or the patch in
> a different format, I'm looking forward to solving this with you.
> 
> diff --git a/man7/netlink.7 b/man7/netlink.7
> index c69bb62bf..c8ca5da28 100644
> --- a/man7/netlink.7
> +++ b/man7/netlink.7
> @@ -189,13 +189,25 @@ message signals an error and the payload contains an
>  .I nlmsgerr
>  structure,
>  .B NLMSG_DONE
> -message terminates a multipart message.
> +message terminates a multipart message. Error messages get the
> +original request appened, unless the user requests to cap the
> +error message, and get extra error data if requested.
>  .PP
>  .in +4n
>  .EX
>  struct nlmsgerr {
>      int error;        /* Negative errno or 0 for acknowledgements */
>      struct nlmsghdr msg;  /* Message header that caused the error */
> +    /*
> +     * followed by the message contents unless NETLINK_CAP_ACK was set
> +     * or the ACK indicates success (error == 0).
> +     * For example Generic Netlink message with attributes.
> +     * message length is aligned with NLMSG_ALIGN()
> +     */
> +    /*
> +     * followed by TLVs defined in enum nlmsgerr_attrs
> +     * if NETLINK_EXT_ACK was set
> +     */
>  };
>  .EE
>  .in

Thanks! I applied the patch. Just a side note that the patch
will only apply cleanly (e.g., with 'git am') if there is no
trailing tex (as below).

Thanks

Michael

> I also attached the patch as a file.
> 
> 
> 
> Am Sa., 20. Feb. 2021 um 21:07 Uhr schrieb Michael Kerrisk (man-pages)
> <mtk.manpages@gmail.com>:
>>
>> Hi Philipp,
>>
>> On Sat, 20 Feb 2021 at 16:25, Philipp Schuster <phip1611@gmail.com> wrote:
>>>
>>> To whom it may concern,
>>> I'd like to inform you about a bug in the Netlink(7) man page [0].
>>>
>>> It describes struct nlmsgerr the following way:
>>>
>>> struct nlmsgerr {
>>>        int error;        /* Negative errno or 0 for acknowledgements */
>>>        struct nlmsghdr msg;  /* Message header that caused the error */
>>> };
>>>
>>> but according to Kernel code [1] [2] [3] it actually should be:
>>>
>>> struct nlmsgerr {
>>>        int error;        /* Negative errno or 0 for acknowledgements */
>>>        struct nlmsghdr msg;  /* Message header that caused the error */
>>>        /*
>>>         * followed by the message contents unless NETLINK_CAP_ACK was set
>>>         * or the ACK indicates success (error == 0)
>>>         * message length is aligned with NLMSG_ALIGN()
>>>         */
>>>        /*
>>>         * followed by TLVs defined in enum nlmsgerr_attrs
>>>         * if NETLINK_EXT_ACK was set
>>>         */
>>> };
>>>
>>> This discrepancy led to errors implementing at least a Rust library which
>>> made wrong assumptions about the returned value.
>>
>> I'm a little unclear. Do you mean that the manual page should include
>> the additional comments?
>>
>> Thanks,
>>
>> Michael
>>
>>> [0] https://man7.org/linux/man-pages/man7/netlink.7.html
>>> [1] https://elixir.bootlin.com/linux/v5.11/source/include/uapi/linux/netlink.h#L112
>>> [2] https://elixir.bootlin.com/linux/v5.11/source/net/netlink/af_netlink.c#L2416
>>> [3] https://elixir.bootlin.com/linux/v5.11/source/net/netlink/af_netlink.c#L2440
>>>
>>>
>>> Kind regards
>>> --
>>> Philipp Schuster
>>
>>
>>
>> --
>> Michael Kerrisk
>> Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
>> Linux/UNIX System Programming Training: http://man7.org/training/
> 
> 
> 
> --
> Philipp Schuster
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
