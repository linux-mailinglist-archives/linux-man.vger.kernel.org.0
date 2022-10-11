Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 566BA5FBC6F
	for <lists+linux-man@lfdr.de>; Tue, 11 Oct 2022 22:53:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229490AbiJKUxN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 Oct 2022 16:53:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49498 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229468AbiJKUxL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 11 Oct 2022 16:53:11 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 975BD925BE
        for <linux-man@vger.kernel.org>; Tue, 11 Oct 2022 13:53:09 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id f11so23421630wrm.6
        for <linux-man@vger.kernel.org>; Tue, 11 Oct 2022 13:53:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=3alCgQCRA4SRxhsRnaG+dDbj/BoXrvqR0Mg7W39sRyc=;
        b=dR82ivGgR0d0Jvt4CYNFhKCIOOY7TzjeHPI9+TPQJXXVpu+aRu7xsG8KDhehLhI7X9
         2wxTrDs0rGKmHzEcGWOWF3oRoHFLIREsQbqzBz3cIGkoACYraQImUJFpeqz0v2Ze+gWG
         LroXzjl5HCDCyLD+S1aOdzW5J/MvjSR1XHfXLWdMBafk4MZVPK+KD9orJlizXo1mlAtF
         LauFpV4vwdCPWYGbmHgcO7Y1SBnY1SgLJOAcgQ1Ogyevzi46UYW5xFUAo/zbXmZImK+T
         lXXPL17hGrqwoW2cpl0/vlszwk5fJpVV/FtlFI/V7c8ZzN8MlAP6nZuH03cAwnw65JaM
         WMSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3alCgQCRA4SRxhsRnaG+dDbj/BoXrvqR0Mg7W39sRyc=;
        b=m3BGoRqFROvwZbWR/a+4MiWNsQ2C5TKCXipNJFOBHMyXa5722K+u00U+KDW0dpRlWB
         uhDbhhoQLvQ3ygCt7p0v5UsYIpJ8XrU2M1zpic3U+KVeWNTScJvEyQu8QNIH6AXu+Hep
         ZmGIfVqGGNOVOAoJRUtCyg/SN2vM30W6pRXt/2dbsD4rlcFWn+1iI8N3cTBx8hgbIRqX
         diDqwbQM92oE46KKtig7Nd4AI9WpVEA5OQkgmfRjkLRjuLsLZLClw77uf1LJs0AzBGAy
         grx6qcoqN7Q7bVolWyg2TFU9LwN6SuKvXQEelMFmDzB/6kXhgnD9MxExb2PjIE78QlIz
         yZdA==
X-Gm-Message-State: ACrzQf0BhPJ2+bOUlxYE8ydsxsQ9k/cR5CvUtFjhVr/I89/TuIZR5mMd
        fYrfB/su1m524B6pFLZbcvM=
X-Google-Smtp-Source: AMsMyM5Z+y5oRXR5njD/fJDIk3BSE1Li4axhrCj1Illkq/aMfh9zqZ5WcbgbDUPRFwrIuT3OWxI8iQ==
X-Received: by 2002:adf:ec4d:0:b0:22e:3211:483a with SMTP id w13-20020adfec4d000000b0022e3211483amr16965931wrn.295.1665521587909;
        Tue, 11 Oct 2022 13:53:07 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id t8-20020a05600c198800b003b4fe03c881sm13812097wmq.48.2022.10.11.13.53.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Oct 2022 13:53:07 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
Message-ID: <3cf62eef-f268-5c5c-f967-771b03ca4339@kernel.org>
Date:   Tue, 11 Oct 2022 22:53:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: Typo in hier(7)
Content-Language: en-US
To:     Grigoriy <grigoriyremvar@protonmail.com>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
References: <EaxY_bi27gr21Af1ZVvzsv5_HXuKiBWruaHhX04Vn6oGYQbTMOIwhaxAgdrnKKcuhIxulmrUu38q3xqXxeW6Et3jogFxvz-QVQB4zaL-BwM=@protonmail.com>
In-Reply-To: <EaxY_bi27gr21Af1ZVvzsv5_HXuKiBWruaHhX04Vn6oGYQbTMOIwhaxAgdrnKKcuhIxulmrUu38q3xqXxeW6Et3jogFxvz-QVQB4zaL-BwM=@protonmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Grigoriy,

On 10/10/22 22:54, Grigoriy wrote:
> Hello.
> 
> I think I found a typo in the hier(7) manpage.
> This part specifically:
> 
> /usr/share/sgml/mathtml
>                MathML DTD (optional).
> 
> I believe that it should be "mathml" instead of "mathtml".
> This typo is present in the latest release of this manpage, as it can be found in the one displayed online (https://man7.org/linux/man-pages/man7/hier.7.html).
> 
> FHS 2.3 (https://www.pathname.com/fhs/pub/fhs-2.3.pdf) page 27 states:
> 
> "The following directories, or symbolic links to directories, must be in /usr/share/sgml [...] mathml"
> 
> This shows that "mathml" is the intended spelling.

Yes, you're right.  Fixed.

Thanks,

Alex

-- 
<http://www.alejandro-colomar.es/>
