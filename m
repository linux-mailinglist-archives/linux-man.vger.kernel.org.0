Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8972D2E7ED4
	for <lists+linux-man@lfdr.de>; Thu, 31 Dec 2020 09:59:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726329AbgLaI72 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 31 Dec 2020 03:59:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726323AbgLaI72 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 31 Dec 2020 03:59:28 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1723EC061573
        for <linux-man@vger.kernel.org>; Thu, 31 Dec 2020 00:58:46 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id e25so6772353wme.0
        for <linux-man@vger.kernel.org>; Thu, 31 Dec 2020 00:58:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=pfakwcPuAlY+FacE22J8AWpBqQRbk06+n4Mm5UZawQk=;
        b=raR2TokH574/Pb6uL8KCG+GtF9N7dksHPNFcHHSprjITHO+oHGUHCY4lo8hK6rweDm
         aiWPW8iWpIek2IeYKprxOXMFgFs+ZBBzWSghcLqqKLUUbfM51x2Q6zmK8HkDBVcDLiXf
         fxB8SicozDHH1xDJYdURXdAmNJwvfkQ76H8gKf8y0XgzBRn4AMvCjJq3Qc9R4WTNcpSS
         zwHd1H5QHg2lOUP/WGv+LFe8dWTgMPVrcHjFgM9DzArAA0CBDaa4Di1KvICwICP+acdI
         b81pdTc70/+cgfwlB27qh0FNz+ZzDzwKZOjo38nR9GxH5+p0pnzAcOLhAETV0MDz/OCJ
         v7Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=pfakwcPuAlY+FacE22J8AWpBqQRbk06+n4Mm5UZawQk=;
        b=D5NBMN9lvwRWbWaQJB0LZyypYdAv9mqJ8YGi5ZmoF7z2WEGZgMlu4KNMYxDPvw92+7
         nzzeMmjOYstCvY74jv74MCfq+jY7ErE0tgy45FpSCKdQzoFjbYL6J3my6KHln9/79/Ud
         QJ/EGICaOk/RzqRpCg3M+bf0mEjOo3wSqVkHRwGBhBTehuOZuFzm/0fpEP5nn/4tIPvA
         r3EBtaws37jU4/ohAgOhSbdoLGPu7ZZ5TffQ4pc3SDH0mflm8QBAzm43RG+VvtRU6KWO
         svs69gibd19xOz+eVJeAtCf6QJo1zJJX0IO+pLSx3rPLdqcADWXf4YGIZmhEtjh1+mBV
         WQrw==
X-Gm-Message-State: AOAM533M4IpPrkJHtNjPedd4SMd3QqL3ZxMUDJvxV+70GXj/nlt1QhfI
        Zv/ZrZId3iJOA8nh1gw0N9P/lTjWccY=
X-Google-Smtp-Source: ABdhPJw7T9oxDXjJpE1g4Y8EJkOeJ84mUtWp/kHGXwUMOZcqwoZ59nRPzeJnFeMTHS9bcRmvAbd5+w==
X-Received: by 2002:a1c:7716:: with SMTP id t22mr10816332wmi.126.1609405124104;
        Thu, 31 Dec 2020 00:58:44 -0800 (PST)
Received: from ?IPv6:2001:a61:2467:2f01:faca:3d43:5e40:30d1? ([2001:a61:2467:2f01:faca:3d43:5e40:30d1])
        by smtp.gmail.com with ESMTPSA id b7sm64323416wrv.47.2020.12.31.00.58.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Dec 2020 00:58:43 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] copy_file_range.2: SYNOPSIS: Fix prototype parameter
 types
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <20201230214147.874671-5-alx.manpages@gmail.com>
 <2b1cbbc7-a1f3-dbef-1d23-d96409e4490c@gmail.com>
 <a27fb355-f3be-036a-459a-1769e72e3a70@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f54456d9-882a-b98a-f8fd-7f790ae2b39b@gmail.com>
Date:   Thu, 31 Dec 2020 09:58:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <a27fb355-f3be-036a-459a-1769e72e3a70@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 12/31/20 12:20 AM, Alejandro Colomar (man-pages) wrote:
> 
> 
> On 12/30/20 11:43 PM, Michael Kerrisk (man-pages) wrote:
>> Hi Alex,
>>
>> On 12/30/20 10:41 PM, Alejandro Colomar wrote:
>>> Glibc uses 'off64_t' instead of 'loff_t'.
>>
>> Okay.
>>
>>> This patch doesn't change the types in the code example,
>>> because it uses the Linux syscall, and not the glibc wrapper.
>>
>> I think the example probably also needs fixing then. There's
>> no longer a need for syscall(2) in this example, I think.
> 
> Hi Michael,
> 
> I thought the same, but glibc 2.26 is still supported,
> and lacks the wrapper.
> Would you change it already?

Yes.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
