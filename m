Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0275F442AB3
	for <lists+linux-man@lfdr.de>; Tue,  2 Nov 2021 10:48:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229577AbhKBJul (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Nov 2021 05:50:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229720AbhKBJui (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Nov 2021 05:50:38 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D048C061714
        for <linux-man@vger.kernel.org>; Tue,  2 Nov 2021 02:48:03 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id r8so19472605wra.7
        for <linux-man@vger.kernel.org>; Tue, 02 Nov 2021 02:48:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=vOLs/Nz/HaAVb/5DeahOnBiOgUAnKoeELBuYISrsHNA=;
        b=mAac64+L8e7r5KhRTXS30cdfDHzQ1Za5qoYTmlMV5ZYdC70fg4C41z0zW112Y0Q44y
         xHd1dr09ScAdJC9atWF29GYAzPTa0LadfAKRJ8rKQ77j+gAIETEo6OcvVpvNoCJHfc7K
         5F6i3C4/en/Xc59FGsfNltshkvVhkrFkPyDuQo8EfftwaTO14dcPAw2Dq6BKB+0LgRxR
         iFSqvLF9borCZf8xoXHPnQ4kjSqAb+yYQCCxm+HfXpFMkrOn3hCnm30WSkysycU9X22h
         ROlnvTEXTPD5IirGUpzAoGbchs6Ncw9Rnq4KxC0mF36N1p2N5gmiuJcLvToyU8GLhXBq
         WYJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=vOLs/Nz/HaAVb/5DeahOnBiOgUAnKoeELBuYISrsHNA=;
        b=sdWifTQrYxC1TJscNzxhmcIDLUW1dcDJRAHEvw3bmhvagzUG8/jVYXiKpggCH4e79a
         1zDq6I/ULnHMHzZpmb8hkYJVsDTTI9xShsT/umlaMWxaamZL0r1b36bzqjqNgI6LPjbh
         KEFQcJWDIuEanKFsflXtbFQhZZw+g0LxCkbCzzLH5ZZ4rP7AM5ziBvSQFEpcU+lYm0/Q
         4l+z/3mBeSfrvKp3SOiUbyhgjl8TRA8I2Zq95MXZ+PiwY+twQPCU9il6YkRg5uv57KG8
         XZlckoUwZLhXbKCBA9Lff2XOw+lWNpR/j0homAX9+sdVL5w9tV7j2bkxpU4chH41WPF7
         efMA==
X-Gm-Message-State: AOAM531ID+rhg6pn9erIMDgnEaG0tJDrogaLBAxN/dGf9es49mly2YnK
        POkOhUm5sDz2pVCZX04G4U8=
X-Google-Smtp-Source: ABdhPJwrHhTdWx4xx8ipfzF5QzxzTpm5PzHgTSXE2JryC7tzQrFsURRkBYfEG80q36zNaOOXEnYdDw==
X-Received: by 2002:adf:a1d4:: with SMTP id v20mr3495062wrv.190.1635846482266;
        Tue, 02 Nov 2021 02:48:02 -0700 (PDT)
Received: from [10.8.0.130] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id u10sm20717533wrs.5.2021.11.02.02.48.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Nov 2021 02:48:01 -0700 (PDT)
Message-ID: <140ec48b-10ae-9762-133d-3a18a3a01236@gmail.com>
Date:   Tue, 2 Nov 2021 10:48:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Subject: Re: [PATCH] quotactl.2: Use correct limits for vfsv1 format
Content-Language: en-US
To:     "xuyang2018.jy@fujitsu.com" <xuyang2018.jy@fujitsu.com>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
References: <1634718794-2120-1-git-send-email-xuyang2018.jy@fujitsu.com>
 <617F60D7.2000605@fujitsu.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <617F60D7.2000605@fujitsu.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Yang,

On 11/1/21 04:36, xuyang2018.jy@fujitsu.com wrote:
> Hi Michael, Alejandro
> 
> Ping!
> 
> Best Regards
> Yang Xu
>> According to kernel code and the following patch, the maximum quota limit setting
>> should be 2^63 -1 instead of 2^64.
>>
>> [1]https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit?id=7e08da5
>>
>> Signed-off-by: Yang Xu<xuyang2018.jy@fujitsu.com>

Patch applied.

Thanks,

Alex

>> ---
>>    man2/quotactl.2 | 2 +-
>>    1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/man2/quotactl.2 b/man2/quotactl.2
>> index 46f77a8b1..5d2a673bd 100644
>> --- a/man2/quotactl.2
>> +++ b/man2/quotactl.2
>> @@ -109,7 +109,7 @@ and quota limits up to 2^42 bytes and 2^32 inodes.
>>    .TP
>>    .BR QFMT_VFS_V1
>>    A quota format that can handle 32-bit UIDs and GIDs
>> -and quota limits of 2^64 bytes and 2^64 inodes.
>> +and quota limits of 2^63 - 1 bytes and 2^63 - 1 inodes.
>>    .RE
>>    .IP
>>    The


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
