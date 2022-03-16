Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BEDCE4DB722
	for <lists+linux-man@lfdr.de>; Wed, 16 Mar 2022 18:27:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1357554AbiCPR2n (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 16 Mar 2022 13:28:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345228AbiCPR2n (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 16 Mar 2022 13:28:43 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A02EC4DF71
        for <linux-man@vger.kernel.org>; Wed, 16 Mar 2022 10:27:27 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id r6so3971119wrr.2
        for <linux-man@vger.kernel.org>; Wed, 16 Mar 2022 10:27:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=N33OMr5O+3NXK+49nBF0FYGn5KsL6VKs3vw9ERa2ryk=;
        b=g/68OVhzdxzEcie3idPiRXq4ZXFxEZaVG5Mvjkp2oB+bJJgjIYHqGgYAmu6ENB+5i+
         VsksKqJ4kQz3kQmYKzxswuAeYGM7gYdF+lOIbofX2gZ3GBEja1tUpF+fTBzyS68K0Bmg
         QskHVgi22EOE+t9XxpboDzkpbViFFs/4fKZ49lDKVMn/T769gqi83chFRMYMDGzvxCFt
         EOXwPJ0wEl40Nk7bXQtCPlhYbF8w1Lo3lbcxRiKyX/Q1nyVDUiAeRI39t85pNlY/QSZ6
         x8i8VVMOb0uStuY1JU0I0Bk/0KJpt0GHHj+FVnKFeNY6V8rbtftpa99JDtDridzQFCom
         Aypg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=N33OMr5O+3NXK+49nBF0FYGn5KsL6VKs3vw9ERa2ryk=;
        b=PRTI6AKwM+g2Esla+ZQCVTX8mNbKQbn1fo8j2vQ1WkBC1BlP98DWkrDKmYIANbipn0
         vQSzYHp+gbJrxws4BjIZwavDGdU4WvN1l6cutwese9NqgtVLUfARHxWJJZYYnOVKUfg3
         MYYEEAUx7YKoEMEbZIQj3HJQmaul62sfuNlnBde+fZhFC7IkngxNmvoEQYIyGZM2xPoR
         gO8x6LLErk8dtiWvbMT+ei6FKGC5oQExvwF7pUAFVmUjOB11dh/JqwohOUVs9wnpzZ4k
         wSF+gGPRhE6Qh9pxA7ziyP1IhYr/5IXhF8/peNHgntnfSYVz8qMR7OlAZRCSM0nxNc3Q
         UpxQ==
X-Gm-Message-State: AOAM530rCfSxjfCuIxR0dVXqf7VWoaoim53nOTjIjbgokh9sMWluQ6rF
        I+3L31wercp3lmOxiHKW/qv8pyGvMvq5jPwD
X-Google-Smtp-Source: ABdhPJw0oQqpMEWSLSYXI2sXHGQkM/XCkz3RyOc8jvxiuqtzbQx8ROLdgRWR2V2d2WBiyBhAlU3blg==
X-Received: by 2002:adf:ef81:0:b0:1f0:95f:30a7 with SMTP id d1-20020adfef81000000b001f0095f30a7mr763997wro.636.1647451646198;
        Wed, 16 Mar 2022 10:27:26 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id y10-20020adfee0a000000b001f0639001ffsm3072212wrn.9.2022.03.16.10.27.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Mar 2022 10:27:25 -0700 (PDT)
Message-ID: <2d3cff38-ba32-b382-c043-397af12d286b@gmail.com>
Date:   Wed, 16 Mar 2022 18:27:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: Man-pages Git repository
Content-Language: en-US
To:     John Marshall <John.W.Marshall@glasgow.ac.uk>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
References: <A165C0C4-6879-49AB-8CF1-C1258C3F8773@glasgow.ac.uk>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <A165C0C4-6879-49AB-8CF1-C1258C3F8773@glasgow.ac.uk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi John,

On 3/16/22 14:14, John Marshall wrote:
> At https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/ it appears that no new commits have been pushed since early September 2021. However here in the linux-man mailing list archives, it appears that changes are continuing to be applied as usual.
> 
> I didn't find anything in the mailing list archives discussing this or mentioning a change in repository location. Is there something I'm missing about where to find an up-to-date Git repository for the Linux man pages?
> 

I keep updating the repository on my own git server,
<http://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/>.
That's where patches to the mailing list are being merged since half a
year ago.

However, we haven't released any new versions since then.
There's only the git repository,
which you can use to get the freshest manual pages,
or prepare new patches against them.

We (the maintainers) haven't had much time to prepare a release,
but the official (kernel.org) repository
will get updated some time in the future.

Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
