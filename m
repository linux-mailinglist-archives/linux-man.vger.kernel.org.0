Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ECB2032C769
	for <lists+linux-man@lfdr.de>; Thu,  4 Mar 2021 02:10:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355588AbhCDAb5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 3 Mar 2021 19:31:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1390740AbhCCWPl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 3 Mar 2021 17:15:41 -0500
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85773C061756
        for <linux-man@vger.kernel.org>; Wed,  3 Mar 2021 14:15:01 -0800 (PST)
Received: by mail-ed1-x529.google.com with SMTP id bd6so18931108edb.10
        for <linux-man@vger.kernel.org>; Wed, 03 Mar 2021 14:15:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=kD4Q8mT8W2cyJTfFlPw5AqTxwcaAkWK8nd1++f9HvK4=;
        b=TyveJ8AIgSUZMz6pbeOVEHBXXiOxzpK+9XLXxTvtcESTbgsn29cz5SFBU5T90AUvvL
         qSArTfxLcfGq1CWy9D3Rc/47jglzuF1BeOWkVsB381O9uHmvxkEA+e3EF+tz0apgApve
         0xehMh1P3btbk98EMH1B/t6orTnbcwVxfgRO9lIpXFg6cEfdukaFsTXpnPcX8fuzNsQM
         13QHAQdwqhgbpD6CAN2tYcufw14FmElYs7CdBFaiXV+/UO5n6yVmAAVQJYlLL6CB7r/A
         uc190nXven8PCEMji0I7Q/ShJcduEWa1sSck7uHJUuuvx4KI3bwbDw9ovtPHeYpQ3nTF
         +p0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=kD4Q8mT8W2cyJTfFlPw5AqTxwcaAkWK8nd1++f9HvK4=;
        b=qsruBGwOYCN47dMlsBvxog2ZAVcFc646XmmtUXxCTu+qqq93X5WNP37Cj41HitL7OS
         Rw+ejlE5s6VCRwcHJITvVh+qVgERTS8SFlpLXvo7RulX47zfAy/JGlxQAJ9NJvfmjd/w
         vO3R7bMg8qRYqZBfKM2AIa8xT7xOClsTZI2TBSqFFvk/zY6KPaQrSrxcvYpMR+0Kt9pQ
         TNTlCQi30U0kUhmTNpy1Dhk9qoC5UPXYbwlHd+rW28RlLIm+CVxKkac06b8dXk0Sklcd
         FKiYi+6k/GY/sFNDN2lMBSQoShl6JT8xiQYufVRPSZEGQ8ZGxW+mJWFI6gRB7/51IIL/
         nBkw==
X-Gm-Message-State: AOAM531W3CahWBMqyd2p7ynzTLtQ0ilA0Lpm+QNgnNcvslBdXyEyGq6K
        I2Ieh7OEYw5LNCp3Q/zGtT0=
X-Google-Smtp-Source: ABdhPJwfBGtGWtdilldLlNtw7+3u8IlJZi80kOMyECIdTpywUiqp87f0FNfIlatKyUjwyHH+NT/Qsg==
X-Received: by 2002:a05:6402:2215:: with SMTP id cq21mr1270372edb.281.1614809700135;
        Wed, 03 Mar 2021 14:15:00 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b? ([2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b])
        by smtp.gmail.com with ESMTPSA id c20sm22265825eja.22.2021.03.03.14.14.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Mar 2021 14:14:59 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Heinrich Schuchardt <xypron.glpk@gmx.de>
Subject: Re: [PATCH 00/20] man3: SYNOPSIS: Use 'restrict' in prototypes (batch
 1)
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210224144310.140649-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <fe535a38-d2da-b5a9-06b2-96adfa54d3de@gmail.com>
Date:   Wed, 3 Mar 2021 23:14:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210224144310.140649-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 2/24/21 3:42 PM, Alejandro Colomar wrote:
> Hi Michael,
> 
> This are the first pages of man3 with 'restrict'.
> I'm sending you these already, becuase otherwise I'd accumulate
> too many patches in the end.

Thanks. I have applied all of these.

> I have fixed from the first page until ftw.3.
> 
> Spin off:
> 	I found different terms for parameters that refer to a same thing
> 	in different functions (usually a '[const] char *'):
> 	 - filename
> 	 - file
> 	 - path
> 	 - pathname
> 	 - Maybe others; I don't know
> 
> 	For 'FILE *' we have more or less the same,
> 	although this one is much more standard (>90% use 'stream'):
> 	 - stream
> 	 - streamp
> 	 - s
> 	 - fp
> 	 - file
> 	 - filehandle
> 	 - A few others in specific cases
> 
> 	What would you do about it?
I think it would be best to start a new thread for this...

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
