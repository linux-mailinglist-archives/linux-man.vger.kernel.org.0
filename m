Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 17F1F48859F
	for <lists+linux-man@lfdr.de>; Sat,  8 Jan 2022 20:39:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231128AbiAHTi7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jan 2022 14:38:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229741AbiAHTi6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jan 2022 14:38:58 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63E5DC06173F
        for <linux-man@vger.kernel.org>; Sat,  8 Jan 2022 11:38:58 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id t28so11446468wrb.4
        for <linux-man@vger.kernel.org>; Sat, 08 Jan 2022 11:38:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language
         :from:to:cc:references:in-reply-to:content-transfer-encoding;
        bh=G/PwM5how6Fqd2FweddTa3MDVslepRAIWSixgq7wzXU=;
        b=SgNkGKDQimEPouqbETNJutXpCUQ+6WEj/RaX7jRmoZu2dwV6/MQni7gYRWw0raRTXg
         SANtwgdZ9KNYEWrPlpKFsdpZKrcolY7WwQRtlWavHEBLhsViGGpSt/cgVKPXoCwcL2uf
         fiRnwGyOfyVkQYp4QJiuC3txCeZwELhkrQ/POnZ+LUyYGOnETOe9JqzFQsxSMKZTECrf
         8GiGdNaqHwIzHfDKVzNXanTTOxCYcxJQ02K9QzDyDexaJErKkijjMcZYMa0VexqBPVQS
         tb6CnIU7wAlXh8G9vq/F8z9+gHpInX9bQpVLR7s4mOdCmT7pXnbn2hU4Di9c6tDmGalm
         dTMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:cc:references:in-reply-to
         :content-transfer-encoding;
        bh=G/PwM5how6Fqd2FweddTa3MDVslepRAIWSixgq7wzXU=;
        b=OmctcGAooRVJRuqgqoGXW7z6fX+vcoyV+hgaEGZgkL+MVL/Lcr86oWLmtSKDGza+/5
         fRC8+Lk+Jkq/pFwV7Pk1dyWHgosaM6M5XAu2+NsV7b2YsBMaPsX8UnnCs9o55rMXNabg
         fwZvjNta2uN92FY8Th1vV1Eb9P8Sm7v2bF3PEV+6SvmBBBOLQSAyetFPdM/cizbOVKA2
         ehaUbOA0J3jZWg1GGThmjDPfMVHc7Re6/wJQM8qehLsE/P8e/7WqSGMZFCSaMU5Lxgzt
         0LfEiLgvHg+KPS/86mCs7mzlVuq9ARdvobQY42F3t+AP3T1uKGpbU6v4ZnDkr77jTT0n
         G7jA==
X-Gm-Message-State: AOAM53089B1KRizHMgIy4k+ETYoKqgZ8r7mrRlhmoYqn7Yd9uMPxS1Xv
        omeVF4H4MkgbNloYfQ5cAqM=
X-Google-Smtp-Source: ABdhPJzyhev+yWOSc9mOJtj255GzIawNcS7ijs6BdA0yeBOLrfYtO2RcAB17YpJIf3RCLh44QhSChQ==
X-Received: by 2002:a5d:5887:: with SMTP id n7mr59571848wrf.436.1641670737096;
        Sat, 08 Jan 2022 11:38:57 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id g1sm2425630wri.103.2022.01.08.11.38.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Jan 2022 11:38:56 -0800 (PST)
Message-ID: <356161e4-1b63-7315-65c7-88de61f17eb4@gmail.com>
Date:   Sat, 8 Jan 2022 20:38:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Subject: Re: [PATCH 1/9] Add a target to check example programs
Content-Language: en-US
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     Stephen Kitt <steve@sk2.org>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20220107164621.275794-1-steve@sk2.org>
 <7edd4ab8-a417-17b4-aadf-4c63293bc210@gmail.com>
 <20220108102230.31788318@heffalump.sk2.org>
 <cca8c14a-f740-fcf9-5407-9db348076e9f@gmail.com>
In-Reply-To: <cca8c14a-f740-fcf9-5407-9db348076e9f@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 1/8/22 20:05, Alejandro Colomar (man-pages) wrote:
> If you prefer, however, you could already use 
> <git://www.alejandro-colomar.es/src/linux/man-pages.git>.  There's no browsing yet, 
> but I plan to add it.  For the moment it's just git:// (and SSH for me).

Typo there.
<git://www.alejandro-colomar.es/src/alx/linux/man-pages.git>
is the correct one.

> 
> Regards,
> 
> Alex
> 

-- 
Alejandro Colomar
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
