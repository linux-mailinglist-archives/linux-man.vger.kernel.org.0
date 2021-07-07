Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9A8773BE807
	for <lists+linux-man@lfdr.de>; Wed,  7 Jul 2021 14:34:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231526AbhGGMhD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 7 Jul 2021 08:37:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231783AbhGGMg4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 7 Jul 2021 08:36:56 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE24CC06175F
        for <linux-man@vger.kernel.org>; Wed,  7 Jul 2021 05:31:46 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id n33so1742580wms.1
        for <linux-man@vger.kernel.org>; Wed, 07 Jul 2021 05:31:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=jHizg6NYA73PxJ5NZwD7cYR2q2vyLTO1e+Uul3xNj2E=;
        b=L6i9DJVKr30pyV4ywHW5HJedgMw3jf/i2in/6+UECiIa6TeqsfqccrbOGabI15vgKY
         XLLAqY41lF4Aj9qbEx9QxX6ExsOAqMA+vinuoRRjaT6aW9kdfGpBDCDds0JVOrCFChKB
         B+NDv8F10R4PNzS0fJm03w988DuutlNltafRhDu4zqnn+B1e7gvv6yrgziVOSTWsrA+W
         WBs4c5iga7eN3qRwWbe2dGzbc8ocxxt1/OSXk5shpXL7hpCXboeJGfFSl1mIEWSs9V3c
         CsO7vQHoOLb3MHEUr8wvgKATjk1kw7CJivWnOFgNK68MdKfUcQVy0+zKKlCHnRVl1SHE
         j7bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=jHizg6NYA73PxJ5NZwD7cYR2q2vyLTO1e+Uul3xNj2E=;
        b=QcBaFDb76vbc1BysJTgBpHEdJaAgM29aYnR/ve4j2BVrvUSGURCShfWRgEHvmj1p2N
         rZLnYrlz8gfFTIbnONX8oTllqHe3+RYtpY2hWbM+onnaXCSPdZEtk+3Va/LjD28ux/9O
         kLTKT5u9RGDP9OZyabzOKi+Kq8IxnyP2xyeuXcuRBMKY39/IEFeqSHf2euSlnfSwv5Ys
         vXMx6Eu32BwDP6zNrVUVDjnUGG/Po+fbyQW9Z6XzAIxLfyfCdeb+Q7kEe1G3wKOzgIpR
         Ajc2Cp21ToVlKeCK+IufmH4FU6OK6pe2B00BQbPv1fzT9Si1LlAb9GPBoUwFXjwCbnLr
         GizQ==
X-Gm-Message-State: AOAM533OORYCFFYeFhAec0GzQmP92YpUa5HSLG6m5pllZWhqeiXY9JZX
        9XPbxLKkduIyIthi0x5dMoc=
X-Google-Smtp-Source: ABdhPJyYg0+wSpzSV/E7sOg0fwj+iSF77y6uifD/UKrh+pUq0RZjVA8ac7ahBx+2EFJ2RZSPch8qEA==
X-Received: by 2002:a1c:7515:: with SMTP id o21mr6700619wmc.65.1625661104732;
        Wed, 07 Jul 2021 05:31:44 -0700 (PDT)
Received: from [10.8.0.150] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id k15sm6157637wms.21.2021.07.07.05.31.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jul 2021 05:31:44 -0700 (PDT)
Subject: Re: strlen
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     Jonny Grant <jg@jguk.org>, Florian Weimer <fw@deneb.enyo.de>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
References: <0bf239e9-cfc7-8889-ca00-b1d1566bd174@jguk.org>
 <87lfhpgxf8.fsf@mid.deneb.enyo.de>
 <017a5a66-ba66-7cc8-c607-f851c2e54fc4@jguk.org>
 <87363whf2z.fsf@mid.deneb.enyo.de>
 <48e874cb-2b95-2783-ddfc-ae12d9aaf8f5@jguk.org>
 <87bl7fozxi.fsf@mid.deneb.enyo.de>
 <23679a28-5986-0af2-4d98-7de68ed0deec@jguk.org>
 <53b3666b-d200-ef97-b050-cc38669c61cd@gmail.com>
Message-ID: <b6fccca1-6e2b-fb20-d9d6-9df94cd3f05f@gmail.com>
Date:   Wed, 7 Jul 2021 14:31:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <53b3666b-d200-ef97-b050-cc38669c61cd@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/7/21 2:22 PM, Alejandro Colomar (man-pages) wrote:
> I disagree with this.  It is likely that the behavior is that, given the 
> current implementation of Linux/GCC/glibc.  But it is undefined 
> behavior, and anything can happen.  You should just try harder to avoid 
> it, and not rely on any possible outcome of it.  GCC people may decide 
> tomorrow to change the behavior to do some more agresive optimizations, 
> and the documentation shouldn't preclude such a thing, as long as it's 
> legal according to the relevant standards, and sane.

The standard (and implementations) define a set of thing you can do in 
C.  Those are an equilibrium between usability and room for 
optimizations.  Some things must remain undefined for the language to be 
more efficient and simple.

If the language, or an implementation of it, attempted to provide a 
defined behavior for absolutely everything, some optimizations could not 
be done, and also, it would be much harder to actually implement it (and 
also document it).  So for good reasons, UB (undefined behavior) remains 
undefined.


Cheers,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
