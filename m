Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7B9612F0DAE
	for <lists+linux-man@lfdr.de>; Mon, 11 Jan 2021 09:14:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727645AbhAKIOC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 11 Jan 2021 03:14:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41584 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727512AbhAKIOB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 11 Jan 2021 03:14:01 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65BCFC061786
        for <linux-man@vger.kernel.org>; Mon, 11 Jan 2021 00:13:21 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id v14so13044479wml.1
        for <linux-man@vger.kernel.org>; Mon, 11 Jan 2021 00:13:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=HM6etQJMcyZNJwbJNqfwvNVqJlvYK2CpMkq2NZTCLJo=;
        b=rxRnbtv0Y8G0DgrjklKNau+hxcYl1FOYWmY1OrU++wKa7mMjbXsIZo1RNnq4MXLr8a
         3gabvhOrQ/oee/PLThwa6MgowZmDMLYf+rwdu2DE65WDVB1avVLBR2Ms/kvhHrMV4Izr
         QQKI8ow7kUzbUGV2IurMcC85HWt1yuxmsZobt9ltKszgh9am7nMf2UtoDqex5fjFzi+E
         uUdEXsMGyAHTC4LX0QOE69rCNgtVTlVRoR3r8sbX1orIJFquFKw+0JK8q1sVFf3RE9JM
         nNyhEsgqCeZkowXWlSww4/Sd2RydsKtIf4NiGIZfWNqHY/qkcbBT1FWmJysjS9BJWdz0
         LkTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=HM6etQJMcyZNJwbJNqfwvNVqJlvYK2CpMkq2NZTCLJo=;
        b=X9K5dvpH1dQjtcx8DFBw74KcC3b37k+MYuTZduaZTvrWoO0gKe+22CD0Vjx0mr1qwo
         Hm11kV1BWucXb8NcqHT5J7EizPI1uZdH1/fVuTAzRP+RB6C8YdDxA2rPObDqVf51F742
         bAaBu16YFUNXL0OP8ZQLiVXBv6DFzBVSyeQSQ0N2ajArZL5MRR3rUKZlaxfdirqFxyQf
         PcXIU3dS400UBb5C6uvTQMBgRBiT2rYSiZElbelrWUhtHqhtcPgXmd0RbrfelAGOeGQJ
         HjruAa2xl4wu7peeHCg91qmsBSi0gWamUiCKRhjOa+OKxe6a/lsTD5DvfHrew6p/8cct
         C18A==
X-Gm-Message-State: AOAM531cw6EA9xIjuNE4YlvS/F+6YyTQdS5+P18p4GDdcxpaaouMzXjC
        IhZTOzVo9N2UWGPvpuiyU+c=
X-Google-Smtp-Source: ABdhPJz1VEdl3bnGEhK6LPJgfbcdfRTkbbEdRXUerJgu8K5LeXvAaLOk9vrtccU3Ed4yfYAfjJCtyw==
X-Received: by 2002:a05:600c:25c2:: with SMTP id 2mr13798687wml.170.1610352800206;
        Mon, 11 Jan 2021 00:13:20 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id b14sm22980337wrx.77.2021.01.11.00.13.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jan 2021 00:13:19 -0800 (PST)
Cc:     mtk.manpages@gmail.com
Subject: Re: [PATCH v2] netdevice.7: Update documentation for SIOCGIFADDR
 SIOCSIFADDR SIOCDIFADDR
To:     =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>,
        linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
References: <20210102140254.16714-1-pali@kernel.org>
 <20210102183952.4155-1-pali@kernel.org>
 <20210110163824.awdrmf3etndlyuls@pali>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <caeff488-4019-d17b-d90e-3d23e357dcad@gmail.com>
Date:   Mon, 11 Jan 2021 09:13:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210110163824.awdrmf3etndlyuls@pali>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Pali,

Thanks for the patych!

On 1/10/21 5:38 PM, Pali Rohár wrote:
> On Saturday 02 January 2021 19:39:52 Pali Rohár wrote:
>> Also add description for struct in6_ifreq which is used for IPv6 addresses.
>>
>> SIOCSIFADDR and SIOCDIFADDR can be used to add or delete IPv6 address and
>> pppd is using these ioctls for a long time. Surprisingly SIOCDIFADDR cannot
>> be used for deleting IPv4 address but only for IPv6 addresses.
>>
>> Signed-off-by: Pali Rohár <pali@kernel.org>

I think I have no further comments to add beyond those that Alex made.

But, are any tweaks need in the light of Dmitry's comments?

Thanks,

Michael

>> ---
>>  man7/netdevice.7 | 50 +++++++++++++++++++++++++++++++++++++++++-------
>>  1 file changed, 43 insertions(+), 7 deletions(-)
> 
> Hello! Is something else needed for this patch?
> 
>> diff --git a/man7/netdevice.7 b/man7/netdevice.7
>> index 488e83d9a..12f94bfd7 100644
>> --- a/man7/netdevice.7
>> +++ b/man7/netdevice.7
>> @@ -55,9 +55,26 @@ struct ifreq {
>>  .EE
>>  .in
>>  .PP
>> +AF_INET6 is an exception.
>> +It passes an
>> +.I in6_ifreq
>> +structure:
>> +.PP
>> +.in +4n
>> +.EX
>> +struct in6_ifreq {
>> +    struct in6_addr     ifr6_addr;
>> +    u32                 ifr6_prefixlen;
>> +    int                 ifr6_ifindex; /* Interface index */
>> +};
>> +.EE
>> +.in
>> +.PP
>>  Normally, the user specifies which device to affect by setting
>>  .I ifr_name
>> -to the name of the interface.
>> +to the name of the interface or
>> +.I ifr6_ifindex
>> +to the index of the interface.
>>  All other members of the structure may
>>  share memory.
>>  .SS Ioctls
>> @@ -142,13 +159,32 @@ IFF_ISATAP:Interface is RFC4214 ISATAP interface.
>>  .PP
>>  Setting the extended (private) interface flags is a privileged operation.
>>  .TP
>> -.BR SIOCGIFADDR ", " SIOCSIFADDR
>> -Get or set the address of the device using
>> -.IR ifr_addr .
>> -Setting the interface address is a privileged operation.
>> -For compatibility, only
>> +.BR SIOCGIFADDR ", " SIOCSIFADDR ", " SIOCDIFADDR
>> +Get, set or delete the address of the device using
>> +.IR ifr_addr ,
>> +or
>> +.I ifr6_addr
>> +with
>> +.IR ifr6_prefixlen .
>> +Setting or deleting the interface address is a privileged operation.
>> +For compatibility,
>> +.B SIOCGIFADDR
>> +returns only
>>  .B AF_INET
>> -addresses are accepted or returned.
>> +addresses,
>> +.B SIOCSIFADDR
>> +accepts
>> +.B AF_INET
>> +and
>> +.B AF_INET6
>> +addresses and
>> +.B SIOCDIFADDR
>> +deletes only
>> +.B AF_INET6
>> +addresses.
>> +.B AF_INET
>> +address can be deleted by setting zero address via
>> +.BR SIOCSIFADDR .
>>  .TP
>>  .BR SIOCGIFDSTADDR ", " SIOCSIFDSTADDR
>>  Get or set the destination address of a point-to-point device using
>> -- 
>> 2.20.1
>>


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
