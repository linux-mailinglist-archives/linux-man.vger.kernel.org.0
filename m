Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E3D094B182D
	for <lists+linux-man@lfdr.de>; Thu, 10 Feb 2022 23:29:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240983AbiBJW3U (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Feb 2022 17:29:20 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:53476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231881AbiBJW3T (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Feb 2022 17:29:19 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E47BBD9
        for <linux-man@vger.kernel.org>; Thu, 10 Feb 2022 14:29:19 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id q7so11960013wrc.13
        for <linux-man@vger.kernel.org>; Thu, 10 Feb 2022 14:29:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=r7NrkCk0WnA+qJw2MbUh+VxWfxZMfPOngtrfFT/l3FA=;
        b=OMxl56dq75KN4fuDI+l6I27HFSLsKM5KYwPV9eNtd6/Bhdcv9n52h21L7GMzH9S0dQ
         j4BlV3KbgPOn+3j2oIL7Vizy9kI/rH30qW5/A1d4fWm3mjt24eRcLgn44wj8FoeAToOl
         gal6QmyhLjeprUuTRmlJteSFS8tMX+LoDNVMx9vGVMfuaf8+nK09k3weg/HPQxljOdBj
         rEtpE3AhBAFaGssD5R5Igkv40UpcKEk5OxohEzmi17evw45yX0Ii1h0LNbGAiCIRddEw
         dyDkRRcgQPJGANlTCu31MxWx81U9KUl7lEE3DI9FxcuTKxSxp53leHwnhW80ABhmq4Am
         CMTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=r7NrkCk0WnA+qJw2MbUh+VxWfxZMfPOngtrfFT/l3FA=;
        b=SLyKkSu1V2s1OToTslXgEvUCYoGMUmZa9BKqsi1JqKMq//XmM1z444i7NWKDa15/2Q
         zXxYJw80HdX9z3oY4Dnn4IUO6atTaNMSNc5/7CbthGTAgQZvNgqQsuyJU8RF1sFC5Fb1
         5HSwp+ywOGN3b4SHOn3XV8llDR3z9zWpJYB4WrbeNCU0G4KX8WGcklO1WIsrNb4VHQC0
         Jj/6wGI4Jn6dmN70phtnwMeECsnU0NkJi9zU1NJZBVTGRRVx/wzKlgyRPg/EdoPdiZ2n
         2nKlfzqob9pjuey0Bqg80mUBk2//uc2AxlOzxffArYgiiKLg1Qt0nZY7CTzVmnFFkiEt
         /C0g==
X-Gm-Message-State: AOAM532rPlUgMcfO7QAdXvxU4FbUkvqFQjzLNhoMHrelRAYbdOWgtwlq
        ucthDHaP159808RhvFYO/iI=
X-Google-Smtp-Source: ABdhPJx1v2A7E2qP5WU6I1Q0sfwstR3gGyIh0aFe5IVLix+D4WnuNmuZV5yBbQjEqaYr+0GdjGlvAA==
X-Received: by 2002:a5d:474d:: with SMTP id o13mr8206288wrs.484.1644532157761;
        Thu, 10 Feb 2022 14:29:17 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id y17sm2465634wma.5.2022.02.10.14.29.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Feb 2022 14:29:17 -0800 (PST)
Message-ID: <485a7d6a-6cf6-32ab-ed89-73075abde040@gmail.com>
Date:   Thu, 10 Feb 2022 23:29:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.1
Subject: Re: man pthread_join(3)
Content-Language: en-US
To:     hk <hk@r4in.tk>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com
References: <2b9e5c94-fc1a-6ba3-20e5-3bb5c6430476@r4in.tk>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <2b9e5c94-fc1a-6ba3-20e5-3bb5c6430476@r4in.tk>
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

[CC += Branden]

Hello Aitch,

On 2/10/22 01:42, hk wrote:
> Good day
> 
> I'm not sure that is a bug or I'm missing something, but still.
> 
> There is man-page for pthread_join() function and in its "ERRORS"
> section one
> error code - EINVAL - is mentioned twice with different causes, so I
> have doubts
> about how to handle such of an error.
> 
> Here is a link https://man7.org/linux/man-pages/man3/pthread_join.3.html
> 
> Could you correct that if it is a mistype? Or, may be add some kind of
> explanation for that kind of situation.

It's just that there's more than one reason you could get that error.

Other Unix systems' manual pages also use this syntax[1][2].  At first
it also seemed weird to me, I'll admit.

I don't know if some other syntax could be easier to read/understand...

Maybe something like:


[
EXXX   Reason for EXXX.

EYYY

       * One reason for EYYY.

       * Another reason for EYYY.
]



[1]:
<https://www.freebsd.org/cgi/man.cgi?query=open&apropos=0&sektion=2&manpath=FreeBSD+13.0-RELEASE+and+Ports&arch=default&format=html#ERRORS>

[2]: <https://man.openbsd.org/open.2#ERRORS>


Thanks,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
