Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A8AE75F824D
	for <lists+linux-man@lfdr.de>; Sat,  8 Oct 2022 04:08:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229620AbiJHCII (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Oct 2022 22:08:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229701AbiJHCIH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Oct 2022 22:08:07 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 012E411B2F7
        for <linux-man@vger.kernel.org>; Fri,  7 Oct 2022 19:08:06 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id r13so9535594wrj.11
        for <linux-man@vger.kernel.org>; Fri, 07 Oct 2022 19:08:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=iFx+JRaapLjPjLXDA9eliWFweqys+DaFYYhX5foWFX0=;
        b=MJDdzjgDPkezkPTm2PZUpWUUuETw8a8a8q8OAHbTeG+lIsySd9uTOjSXgyVxmCYRUd
         /gOoY1lhG57KAiip09q8tZwCaOPJmIs6zcS1y02koEIHKbQYQ89kdBfFha45L6W3lYRF
         uiNexPIBgNXdq38u/OVno5qRizD//vxIVni812vHHya3KwcNucZpUdD+5kHu/CfoXI5q
         CjVjIdmffde6ll0KVq3imKQAFZzT1dwFh2S5pr9znizFWr4SdX9UxhyHkm2KcmIInM07
         0A8pA5HNy/lpuNe5Eso5Qoq6joqhs2yr25Fe4JtJAQAWuAkvnbEtB0IVXBtSH1hxXZEm
         Zkvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iFx+JRaapLjPjLXDA9eliWFweqys+DaFYYhX5foWFX0=;
        b=EeprKDUvmsjzttw49+ZqPMyBEmKAbT2LPyTVPcciO1C0nR8X5t3liVX+umHkiOwRSa
         hvOwVC0gjfIKino1gIDZKJtEGxtW2WRhyO59yLAH3xfBIrdItg5Y96xVE6LMujQLhwNa
         0p+tJfa9L2K8Kr9NosS82/cu0Q6gqEGV9usQpZoq3PPGXB31kouVNx2lBTHnNgFE5tkJ
         gEmdqb1mga4+pnebzENAp0lTGw4u99NXRBGri10ETjcMdOg+mm4oCrE4yI3H6jQc0Zdl
         EXl6BO9ulzzdazf+mGDDsHLQT+Y3moCo0p7n1dkad1jiRy671d9cfsItvrPV0+gyrMRY
         4uBw==
X-Gm-Message-State: ACrzQf3HvCE1AYFEaJWINaYzYsIrom+azKiDC1PoWbBsdMv2euoADeMJ
        3OLq9qC+sTJw7p4MqyIJFOc=
X-Google-Smtp-Source: AMsMyM73oWauhpoD2JqD8dK8tEyQZoyU429XA13DmwyT8B70la473+/TO273BBQM/KoGJzCqfxzTDw==
X-Received: by 2002:a5d:6dca:0:b0:22c:c6f9:57d2 with SMTP id d10-20020a5d6dca000000b0022cc6f957d2mr4829657wrz.474.1665194884493;
        Fri, 07 Oct 2022 19:08:04 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id l17-20020a05600c1d1100b003a4efb794d7sm3714128wms.36.2022.10.07.19.08.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Oct 2022 19:08:03 -0700 (PDT)
Sender: Alejandro Colomar <alx.mailinglists@gmail.com>
Message-ID: <b1a0a823-1fe2-31a1-8fed-ae5c16a502f3@gmail.com>
Date:   Sat, 8 Oct 2022 04:08:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: statfs 2
Content-Language: en-US
To:     Jonny Grant <jg@jguk.org>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
References: <dea031ca-e98c-0b45-09a3-6e0657cf0841@jguk.org>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <dea031ca-e98c-0b45-09a3-6e0657cf0841@jguk.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Jonny,

On 9/22/22 22:16, Jonny Grant wrote:
> Hello
> 
> https://man7.org/linux/man-pages/man2/statfs.2.html
> 
>             MSDOS_SUPER_MAGIC     0x4d44
> 
> Could this entry include FAT? All vfat drives show up this way.
> 
>             FAT_SUPER_MAGIC     0x4d44

Would you mind sending a patch for the manual page source code?  You can 
find it in
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/>

Thanks,
Alex

> 
> Kind regards
> Jonny
