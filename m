Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 91978470E3E
	for <lists+linux-man@lfdr.de>; Fri, 10 Dec 2021 23:54:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243121AbhLJW6K (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Dec 2021 17:58:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34656 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233008AbhLJW6J (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Dec 2021 17:58:09 -0500
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com [IPv6:2607:f8b0:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FB92C061746
        for <linux-man@vger.kernel.org>; Fri, 10 Dec 2021 14:54:34 -0800 (PST)
Received: by mail-oi1-x22e.google.com with SMTP id t23so15272183oiw.3
        for <linux-man@vger.kernel.org>; Fri, 10 Dec 2021 14:54:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:cc:from:subject:autocrypt:message-id:disposition-notification-to
         :date:user-agent:mime-version:content-language
         :content-transfer-encoding;
        bh=G4xpccWtbxPqpe5ww+K16kMqIVpRWndgZckgCf7nZuk=;
        b=eNt6SHDQbP4brFPFMgxKDehHBnvXQRhcHfg9xn9PTYcSa5dJXfCTczgnS8hYJJdcMp
         7VWkvFIsE3nlc6OWOJ0gFzp95W38ge67bbSXcwHvjyqfxKSLq2csiyZb0i0AEMkVScdy
         3Yg+FftraazHC5wc6Y3kvVTRuuF/OxzmHBcpAciD/Qw9B0F0PDKdGuhtnIzoNkBApQJk
         75I5cfyxzM2W2zxca/pefjMvb6uVAsnzGLZDx6DwSgPSsEx8WTBi2KoXn0j1IC/JAlcK
         kYkM6Kzu/6zOVWsXs9OQQ1G7dPlcwbXTg+rkIZR3xEz/pyNScGhLe2K9tN67biFHGxnP
         v+VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:to:cc:from:subject:autocrypt:message-id
         :disposition-notification-to:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=G4xpccWtbxPqpe5ww+K16kMqIVpRWndgZckgCf7nZuk=;
        b=Pn6kHQkfvnOlf6UqX+e4vg8bml8toiPIhJzzI/qHsqCXxD2E3T+7RD5QXZgMaPEPVl
         Y/ISKmGTVO3VeXt2t7pr6PEoggJlUhwGt73rbHaj78OGM7/kNLRTkUBrfJ3RsY25qv2u
         Nt0pij+RSxA6r2i5MJ7wVssNoMQ8Vlbcgl/bBTpNFE3RL41usBYJkSl4vvnvr4U1STRh
         jKrJpsMyCfXyqDfymayo+a9HzVLnJ78/MX0rfwG3nbzuVg7cr1pvzn8QvyGG1+0YchZv
         gbKvGFLkuUexkwjNNiT7A8ijvSrqEF2kJWhqP3S7jnqqOcZnLQqbttKkl8qqT1u3cGWs
         6GTw==
X-Gm-Message-State: AOAM533XooXt86Sh3cTlUaWyYUEFyBisQI3eSGZEbcddozYFzUqIqHtZ
        QN6jpiHXn4cEERHoQ+QNGDEZhETWKBs2mAJ9
X-Google-Smtp-Source: ABdhPJzsBqiBX4mup14INkyMM691yVmW6+hvyduO59Wuznsr8MSyBLC4UmKX5IryYj6bvPon82MYFg==
X-Received: by 2002:aca:af42:: with SMTP id y63mr14839617oie.167.1639176873142;
        Fri, 10 Dec 2021 14:54:33 -0800 (PST)
Received: from [192.168.6.104] (66-76-46-195.nacdcmta02.com.sta.suddenlink.net. [66.76.46.195])
        by smtp.gmail.com with ESMTPSA id a17sm1112139oiw.43.2021.12.10.14.54.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Dec 2021 14:54:32 -0800 (PST)
To:     alx.manpages@gmail.com, mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
From:   "David C. Rankin" <drankinatty@gmail.com>
Subject: man 8 usermod -e, --expiredate EXPIRE_DATE information incorrect
 (can't be blank, must be -1 to clear)
Autocrypt: addr=drankinatty@gmail.com; prefer-encrypt=mutual; keydata=
 xsDiBEbFKlYRBACibVGPMBW9U+zOxDNRuQQDyBgBrbepywe57NN9SMRDN2AWyX/jhAzchyrS
 Imk3xOQSUv3tjEX65cV3tA4hqsg8o9poMLwN/7/WUO7Gw8dyIGVptqVMHdrGktnZouaqGkg/
 v86FYf7hgyzfYZUmHOdO2Un8RR6wFiXjKZDyhelh0wCgtHWt/Sn9x+Ia2WvaLcLKPCNZnKsD
 /1GTwdYnL3mmMi1odttrtreXd7he7lMB/yC+IaO6DfEvl7ElR4h/S/34sjG+WciMJXTbGuOd
 2B58Ec/FhkD0OIMyz6G6fEgbmnC3zUoJdne94sGE/tA7CjaWIPjn14qCHVKIAIo3lZN44cHr
 nCpdzB2Ao4V3HNc5pHMQv1ToB5dcA/9aJn99VdaWm3AXxFWRTFTm5HKk2WVoei0vYs4zdshd
 OEa8ZjxahmPwIsyfdoV1S6o5Y1vRwp1v1eAvyIqMXJvJ8xSn2U40Tf1CaHMxx+ynBa+VOlxr
 1hvu8oGNGWHYu+zw5sZTn+lcDiQ6YVOU7UHlmHgy4kuCSQ0itbpRszrmvM1SRGF2aWQgQy4g
 UmFua2luLCBKLkQuLFAuRS4gKEEgZmV3IGdvb2QgbGluZXMgb2YgY29kZS4uLikgPGRhdmlk
 QHJhbmtpbmxhd2Zpcm0uY29tPsJgBBMRAgAgAhsDBgsJCAcDAgQVAggDBBYCAwECHgECF4AF
 AkjTLBgACgkQZMpuZ8Cyrcj9pgCgi/w1TzzWBEM0Fk59evxBFCHegREAnj/T50dSxbNPf0Om
 svvASItE/XDGzsFNBEbFKl0QCACKWJMwFsULm6+P+O7HapF6IvSkjjlKR+vPI9NqrLmhWpgF
 QA0Hn6wuqaV3Ul+DFXZJRVqNj5tai9AkW5m7bZtmPdKa9YJN/zPF0XbSiTUwONWzZCUdlDGk
 8rh4Y5/2G3D7g0YxuFgkb0mqobHiX+2N3I5xcdQ4tXcxbYa4fV7vTNeeN9xAbQ17YRRDIsBO
 hbmjdCdXEkzlSUqmcCpNmbaZEE7BAn7jQmvgc6b/U063ZJU8zLksKtNKt5it/Tb+okjbjdnC
 mjV0xPZ1IqY5h0r1eldo3xYtK3rd/snwsibphHWNaXhUe1ANl2RhMtaRB0fXuumuFP1GJH+N
 GetqhQgPAAMFB/4yXt6nBHPDRGBUUMeJXkcCmR71QlC9QyFtzwX51ns48pX6yG3P48AN03f0
 n0JNGTYt4yuLG/9eDXET0oHXo3Zz/24Ga9HDcGlw3MYR6/0+uF8Chax/QqxdJiWWtVyxWCWh
 ETmaiW+5LKUVC6wvNwaTcFOacy3Wuhfcj3d3hqHIf4k/9U3ImfxUP7lomJtDQS44iFMFS96t
 rE6ySmBmxef0QYdLswzKzyj5f05QVK+qhmW+Ed/Izs7WBWLkLx2sFeaGU42SGoq/LgUb/SA8
 boQ53Bxo+VS3zrEEPHjH69EKleJRaVRSY5ZuuOEcvbpnQkYbN0ewpvYy1d9uNhmiVD+gwkkE
 GBECAAkFAkbFKl0CGwwACgkQZMpuZ8Cyrci7sgCeK1jWjhnbWWvpHWLbwlvIFwX4hNAAnAxJ
 Mh45mdv1t+Ga2amaUUWixmPI
Message-ID: <57850ad8-4ef5-af6c-fb64-f7c640c3b40d@gmail.com>
Date:   Fri, 10 Dec 2021 16:54:32 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Dear usermod man page maintainers,

  There is an error in the description of the option for:

-e, --expiredate EXPIRE_DATE

  The man page states:

An empty EXPIRE_DATE argument will disable the expiration of the account.

  This is incorrect. The EXPIRE_DATE argument CANNOT be empty or it will take
the LOGIN as the value for the EXPIRE_DATE.

  Instead, the correct use is "-e -1" or "--expiredate -1" where "-1" (-one)
is provided as the EXPIRE_DATE value.

See, e.g.: https://stackoverflow.com/a/30769911/3422102

-- 
David C. Rankin, J.D.,P.E.
