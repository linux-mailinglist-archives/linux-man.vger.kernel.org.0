Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2F5953E378A
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 01:10:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229578AbhHGXLN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Aug 2021 19:11:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229537AbhHGXLN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Aug 2021 19:11:13 -0400
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79EBEC061760
        for <linux-man@vger.kernel.org>; Sat,  7 Aug 2021 16:10:55 -0700 (PDT)
Received: by mail-pj1-x1031.google.com with SMTP id u21-20020a17090a8915b02901782c36f543so19456796pjn.4
        for <linux-man@vger.kernel.org>; Sat, 07 Aug 2021 16:10:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=NEe8/QwJl0vBI+6KWPq4C2IpfthRUS5JWn2O8AMqGoU=;
        b=s6oWEadC6rXca+SUDcWpaGWHywZeNZkHvZLLfSfVvtzKREKO9M/TnjoVDu244L+VGK
         q0jO/7wmzCJ+x7gDqviM24og2//zFsdUCjLCLhew+BhPIFIprLqTLu9aLMY3jQJzI/xr
         UponDjEnKuAp74ioLpSErD4MgtedlFBClMEGNEAiKAuPMng35Dgs4ZXueM4XpcJK9Obb
         WHPpwvXUlecVFzdMt4oJnY7+M9DEAUVWs2MrOneUoh9Kg1c9Vxdg5XVeQgrCDyGNEQPY
         huGoW+gvPjLRd2xaLrf77kLlT8Ld/iB/EC1FBc+cyZ1P80/F5GQPpYSJBRHuHrTT6+WJ
         LpRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=NEe8/QwJl0vBI+6KWPq4C2IpfthRUS5JWn2O8AMqGoU=;
        b=mZSieR8mWfXBfYI+B1/cEi2+rKUKuTMynzfxRc13L5tRHJ5YS74zA0Gq4Dn4SGbVY0
         8Jo2nVNBSB5xBvjaTQYA35GfeXQ21pOyjU3ewdJCnNCDf/ExNDMSgy6jyGrjJg+SXc1g
         a670FMrBK0yVDOPakAQyiZ8U4OMf5k+E+IA5Wwvj4Mzp1C3h+MmmAXzUWNqHPJJJJ1Yn
         YmQB0jBU4j/gULsxovF83H57tgu/ZKDolJUbPJEBblLzvYYVaTkMFbxIT0G/2DeNHQVj
         P8SX3pvU4CZATnSFznp/zF5satX6x3zr4M47SBAkPEevhiOw2dw9ks6OA833UsVYMvjx
         n/Iw==
X-Gm-Message-State: AOAM532TAeHxxUhfQmXfXQ7DKcR1AAgjblvVzpGdkerMlrIxisiJDNen
        x6gpDMe6MCSKHP03xcq9Eds=
X-Google-Smtp-Source: ABdhPJwpOnFLvRPQXR+64Rm3+XYVeSbmWykCCvqJUSh5vvd0cCcShJ/I7LppNR3vGg6FIxJ0QWFkCQ==
X-Received: by 2002:a17:90a:a883:: with SMTP id h3mr17701802pjq.226.1628377854952;
        Sat, 07 Aug 2021 16:10:54 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id t1sm16205210pgp.42.2021.08.07.16.10.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Aug 2021 16:10:54 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Sergey Petrakov <kr@spmail.info>
Subject: Re: [PATCH 07/32] printf.3: wfix
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com>
 <20210728202008.3158-8-alx.manpages@gmail.com>
 <78b9440a-1e5b-3f2f-65f7-e222dfa1e477@gmail.com>
 <557edcab-8036-9249-e7bb-cb4e3765f59d@gmail.com>
 <5d08063e-5109-3ea3-30d0-77af0c842029@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <6372ea2d-e10b-0f71-126e-201363b0c6f9@gmail.com>
Date:   Sun, 8 Aug 2021 01:10:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <5d08063e-5109-3ea3-30d0-77af0c842029@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 8/8/21 12:32 AM, Alejandro Colomar (man-pages) wrote:
> 
> 
> On 8/8/21 12:20 AM, Alejandro Colomar (man-pages) wrote:
>> stdio (7)', and it's only a ffix.
> 
> s/7/3/

I dropped the original patch, and made ir

.BR stdio (3)

This is a case where it would have been good to ask the 
proposer for a commit message explaining the motivation for
the original patch (when that patch was submitted).

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
