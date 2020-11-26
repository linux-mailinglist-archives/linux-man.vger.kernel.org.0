Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 01BB12C53F4
	for <lists+linux-man@lfdr.de>; Thu, 26 Nov 2020 13:29:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727372AbgKZM2O (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 26 Nov 2020 07:28:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726062AbgKZM2N (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 26 Nov 2020 07:28:13 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6509FC0613D4
        for <linux-man@vger.kernel.org>; Thu, 26 Nov 2020 04:28:13 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id a186so1995238wme.1
        for <linux-man@vger.kernel.org>; Thu, 26 Nov 2020 04:28:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=7MLoiF9oG3B0vbh82R1LBsEcDRj9gLD6S3BQhliPzI8=;
        b=hzAGwP01eQk4QuOuDwX7K5W4Bqf6UQjdgmhZm3iM2AjPAe+KCmXeNJQQ6m6wCYaXrh
         2a0sFtedTXklLkWC1di3LhFMc6fxuFm1JkhPPIT9ONX85pNuVCFabDlXgG/aBuCNqiin
         shXRTNmcehxucoD187MrwfYLSkIYhKz5VdOsvHvyjf3kphpmuIK2B1qr27F6MpBF6mPS
         Qte4fMnTAY+TH5nBvPmOzMDUXoa7Ue+xZMuS2nEA37A8IO+dQm/sA8zOY61xnRHVkIn9
         TQuRTAm8Hoeb9P2BbYxMzvxySXcp5UW4GghqT/JiXv3/UKIC0uwSMqeYUuk6repEV3Ij
         S17A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=7MLoiF9oG3B0vbh82R1LBsEcDRj9gLD6S3BQhliPzI8=;
        b=KotMch757ql5mAiWu65vllMaZ1IeO8S7GnygvADx5MVTGO838p7IAZNyYQPylAGqHW
         giXRvUDVlfBnOD3WWxq/RQdOWwfvz9Yw83JNecT0gIXqO290h6oxsTvJjB+319xkb1FE
         aQ3+qM5lCpetkfx/K7i+WroTNkKEZaCJXDzQHupvChl9VjK8PfvillylfucWCYGgI+d3
         O3/T2IMKFFT9FkqYwvQMLDnkvt6/N2G2zFHdlhhFxYT8eVyB0rKBoRd9OmPKpmkC03wW
         /3b9udT/g+WbU1NHBhoYhzXbnb0ve/WxZrOjWaBWezFBBkcVU6pUini8JEX3UcuKIvTX
         erWw==
X-Gm-Message-State: AOAM5304+bhD1Q7y+6pxtT65N5k6opWd2Fw6LT3YLnTu/7130orob383
        z1K4tZKKCTl7gC2CpFmzMxCnXCtEUA6/3A==
X-Google-Smtp-Source: ABdhPJx2vqD29sm3Jzop7g6XBc0LbnK9q2zaHCS6eDt/cN2zcoIVZN/PH7yF8LaUFIi9caUJAxJ9Bg==
X-Received: by 2002:a1c:2c2:: with SMTP id 185mr3148236wmc.103.1606393691961;
        Thu, 26 Nov 2020 04:28:11 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id l16sm8799351wrx.5.2020.11.26.04.28.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Nov 2020 04:28:11 -0800 (PST)
Subject: Re: pivot_root - wrong check on mount(2)
To:     mtk.manpages@gmail.com, Davide Giorgio <davide@giorgiodavide.it>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <dafbcfa6-666e-d596-6481-f35802dc56f1@giorgiodavide.it>
 <CAKgNAkhqn+NRbrmnaTpjMuj96eC6M94vxm8X4w9-F=_cqZi8gg@mail.gmail.com>
From:   "Alejandro Colomar (mailing lists; readonly)" 
        <alx.mailinglists@gmail.com>
Message-ID: <fd7fea8a-b6ea-353d-522b-493782929237@gmail.com>
Date:   Thu, 26 Nov 2020 13:28:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <CAKgNAkhqn+NRbrmnaTpjMuj96eC6M94vxm8X4w9-F=_cqZi8gg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 11/26/20 10:31 AM, Michael Kerrisk (man-pages) wrote:
> Hello Davide,
> 
> On Thu, 26 Nov 2020 at 01:01, Davide Giorgio <davide@giorgiodavide.it> wrote:
>>
>> Good morning,
>>
>> reading the pivot_root man page
>> (https://man7.org/linux/man-pages/man2/pivot_root.2.html)
>> there seems to be an error in the example source program
>> "pivot_root_demo.c".
>> In particular, there is a wrong check on the return value of mount(2).
>> https://man7.org/linux/man-pages/man2/mount.2.html#RETURN_VALUE
>>
>> The error is in this line
>> if (mount(NULL, "/", NULL, MS_REC | MS_PRIVATE, NULL) == 1)
>>
>> that should be
>> if (mount(NULL, "/", NULL, MS_REC | MS_PRIVATE, NULL) == -1)
>>
>>
>> Thank you for your work, kind regards
> 
> Thanks! Fixed!

Hi Michael,

What about fixing this from a different approach:

instead of comparing against -1
for functions that either return either 0 or -1,
we can include those functions in the greater family of
functions that return either 0 or non-zero (error code).
I propose comparing against 0:

- if (mount(NULL, "/", NULL, MS_REC | MS_PRIVATE, NULL) == 1)
+ if (mount(NULL, "/", NULL, MS_REC | MS_PRIVATE, NULL) != 0)

I consider this to be safer, simpler,
and although negligible, also faster.

What are your thoughts?

Thanks,

Alex

> 
> Cheers,
> 
> Michael
> 
