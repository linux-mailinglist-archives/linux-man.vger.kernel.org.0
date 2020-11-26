Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0991F2C540D
	for <lists+linux-man@lfdr.de>; Thu, 26 Nov 2020 13:37:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727633AbgKZMgc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 26 Nov 2020 07:36:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726030AbgKZMgc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 26 Nov 2020 07:36:32 -0500
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00E52C0613D4
        for <linux-man@vger.kernel.org>; Thu, 26 Nov 2020 04:36:31 -0800 (PST)
Received: by mail-wm1-x343.google.com with SMTP id c198so2029482wmd.0
        for <linux-man@vger.kernel.org>; Thu, 26 Nov 2020 04:36:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=rbYEmciYPe5d/jUs5N1VbjGXbDkLR2+3bJbBi5gdpno=;
        b=Ubt4s2zw/K58fvQapJDzXxCSV4yuA/VrIbuOvGvY3fJOh5tHARaLiGgjTBB21BEH0I
         hozu3x9+O/8PhXCNP+XcPSXUohkjJ6XtR39N6jdLhG2vThjOBmvditXE6tPWFiJg8tkd
         Ks+jUHQVHeOIZ+dT57oBC0lVgnO0wvXV7HaN/nIETA7QyeeVjSNwGfS3XsdIE5dNQyTG
         +AWZsL/HRqIUoGerEKKGbYReg2zNzRbeAg9s0iJZfTTsXO8f5/VvvDdQQjV7urPhIEPD
         urrLY4LICXFfVRgKPvsKVYHnHpAWU9t3VNG8vqZrbor9cc8JvNfYTMGaf+/oFWyXYEZc
         qL7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=rbYEmciYPe5d/jUs5N1VbjGXbDkLR2+3bJbBi5gdpno=;
        b=oPZ7/Vx2FNOT7u52Y1SvSuhUGRad0REn3xnPlmAg40DXX0DRVrQg0o5b7desvGKxBG
         3Kf1udCDm/9zhpS3p2Vy8zlYmVq7/gNhWCwWJBMqP2vjQh2aUqsh7m71laggAKTaTWKc
         siy6rtlaR+Btj/h33lez/jl1dZC6BkgUBhYZk+Ox4K92iHK7WNUoNnpoWuEkOjooGxUy
         F1IyNn83nT+6OYJD4987+3EcA63ZOTnMUK0g5KvLxxT82ISP8Zk+8FCubKC/zwgboXbX
         /DAohLDn1rmT5LGLSN40Cu81dHxwypuvkwKPq7w1bIsLXR+WTSsDgD9VQD/nWwEc7JKc
         bvZw==
X-Gm-Message-State: AOAM532RWicf29fxv6WWAfCpLBO4SyL1BKP77HwBBuY9qjsbv83g+8Cx
        xmy6Lz4LWVfuow4E1KP4744=
X-Google-Smtp-Source: ABdhPJxpgCWOzGsuJ2GMiTvKbuU1/qItbUhKYEw9t4MxehO12bvOmISDu07psSEy94xIBGTH7JPBuQ==
X-Received: by 2002:a7b:cb84:: with SMTP id m4mr3148941wmi.157.1606394190732;
        Thu, 26 Nov 2020 04:36:30 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id o21sm8830562wra.40.2020.11.26.04.36.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Nov 2020 04:36:30 -0800 (PST)
Subject: Re: [patch] link.2: ERRORS: add ENOENT when target is deleted
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Mathias Rav <m@git.strova.dk>
Cc:     linux-man@vger.kernel.org, Mathias Rav <mathias@scalgo.com>
References: <20201125142732.22c47097@alcyone.localdomain>
 <a99da26b-db18-8fa9-62ff-a33a2735f5e9@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <a91363d4-8f46-401a-e214-e93ada9f71aa@gmail.com>
Date:   Thu, 26 Nov 2020 13:36:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <a99da26b-db18-8fa9-62ff-a33a2735f5e9@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Mathias & Michael,

Please, see a fix below.

Cheers,

Alex

On 11/26/20 11:00 AM, Michael Kerrisk (man-pages) wrote:
> On 11/25/20 2:27 PM, Mathias Rav wrote:
>> Linux kernel commit aae8a97d3ec30788790d1720b71d76fd8eb44b73
>> (part of kernel release v2.6.39) added a check to disallow creating a
>> hardlink to an unlinked file.
>>
>> Signed-off-by: Mathias Rav <m@git.strova.dk>
> 
> Thanks, Matthias. Patch applied.
> 
>> ---
>> The manual page already describes the trick of using AT_SYMLINK_FOLLOW
>> as an alternative to AT_EMPTY_PATH, and for AT_EMPTY_PATH the manual
>> page already notes that it "will generally not work if the file has a
>> link count of zero". However, the precise error (ENOENT) is not mentioned,
>> and the error case isn't mentioned in the ERRORS section at all.
>>
>> This makes it easy to overlook the fact that the AT_SYMLINK_FOLLOW
>> trick on /proc/self/fd/NN won't work on deleted files, as evidenced by
>> the follow message (which turns up when googling "linkat deleted ENOENT"):
>> https://groups.google.com/g/linux.kernel/c/zZO4lqqwp64
> 
> I think the above piece is actually worth including in the
> commit message, so I added it.
> 
> Thanks,
> 
> Michael
> 
>>  man2/link.2 | 4 ++++
>>  1 file changed, 4 insertions(+)
>>
>> diff --git a/man2/link.2 b/man2/link.2
>> index 1e7b2efd8..202119c6e 100644
>> --- a/man2/link.2
>> +++ b/man2/link.2
>> @@ -318,6 +318,10 @@ open(path, O_TMPFILE | O_EXCL, mode);
>>  .IP
>>  See
>>  .BR open (2).

+.TP

>> +.B ENOENT
>> +An attempt was made to link to a
>> +.I /proc/self/fd/NN
>> +file corresponding to a file that has been deleted.
>>  .TP
>>  .B ENOENT
>>  .I oldpath
>>
> 
> 
