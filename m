Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0797466E158
	for <lists+linux-man@lfdr.de>; Tue, 17 Jan 2023 15:55:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230147AbjAQOzP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 17 Jan 2023 09:55:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229616AbjAQOzO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 17 Jan 2023 09:55:14 -0500
Received: from mail-oo1-xc2c.google.com (mail-oo1-xc2c.google.com [IPv6:2607:f8b0:4864:20::c2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A94123B3DB
        for <linux-man@vger.kernel.org>; Tue, 17 Jan 2023 06:55:12 -0800 (PST)
Received: by mail-oo1-xc2c.google.com with SMTP id h12-20020a4a940c000000b004fa81915b1cso112377ooi.4
        for <linux-man@vger.kernel.org>; Tue, 17 Jan 2023 06:55:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=YqrgVz6WhvLyeWv0YSDxgsdt4ir9pfg9FaNLlFo1S18=;
        b=NdJmDPoh/J/+xqWMBHjNkiROlBMZ2M5K9XHgDlJC7SVadsbYdH+gq0ODI/AIL20r5S
         uhVjLhIaTM18DIEViPiqYhxnqQFfIAEhWC5bh7isDLZ08gLvJJqQJlEVJ/K0OH0PPwVA
         xrmt/HunOW3Ylzxppgx9Qd89FKtWqiZ9oRe5TAMagF1SFRfo5iozGioxxtQx5h+SLvZX
         ev+TLp8737ANJtzrYT5B1FUWAfJaqgWY9MSVNasASXTlPxplIyq6aGc86wc8nDjyH8gN
         h57SDkt1coPQh6NDdVzxuKMopAefimUFlYMGrlydxxtYig8nihjVeJ5SCYtN2AlK14nS
         U1TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YqrgVz6WhvLyeWv0YSDxgsdt4ir9pfg9FaNLlFo1S18=;
        b=hSmLtuT96oPJI9zJOt2VsTudWdiQmbyIt5LiWIUGocHchjP4AINbPDOw0eL/jgpa5A
         MmuE/SnU9+0lSWroYE1nukOKdx+aI5l2p5vETSGB0/uiO1ZixNNy/phEGERXMP1wIugE
         r7BjP61qoWXP0K7jFcY2U22Z8HNUz4+PyDf/BayMsax+RqPZCnV5nuq5IDitrqoJea28
         0VrCMEF40n+rfYKCylKHD9yo8GsXaKZg2/N0QKw9Xv+k09rkS0cttY6Wl/4Oq28Jrv2A
         W1fYevtKv54bNseltuG0njD7IpPfO5Mqp4tcJ8JcrO2+/wRn6BQPok5jIo9653onV9Vi
         ptIA==
X-Gm-Message-State: AFqh2kpDH0Aj63Q02ExpIjMgGSTxQMq4G8UzPR+IDWlnJO2/pSLVpkH8
        SPtSOAwUbvEYhOEHCvJgYjLmcQ==
X-Google-Smtp-Source: AMrXdXs5QuZGE2dItPCxttmJ/R5eCpi7kAfa29LZ+NAAtDPH5LwAtKy5+30O+i75XUreGeurDrSlTg==
X-Received: by 2002:a05:6820:42:b0:4f5:22d4:75f5 with SMTP id v2-20020a056820004200b004f522d475f5mr1745900oob.0.1673967311970;
        Tue, 17 Jan 2023 06:55:11 -0800 (PST)
Received: from ?IPV6:2804:1b3:a7c1:1652:49fa:2dd7:dbd:38f6? ([2804:1b3:a7c1:1652:49fa:2dd7:dbd:38f6])
        by smtp.gmail.com with ESMTPSA id f23-20020a4ae617000000b0049fd5c02d25sm2725467oot.12.2023.01.17.06.55.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jan 2023 06:55:11 -0800 (PST)
Message-ID: <e33b8713-d225-0fb3-ca87-abb00b8ec553@linaro.org>
Date:   Tue, 17 Jan 2023 11:55:08 -0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.6.1
Subject: Re: bug in roundup(3) from <sys/param.h>
Content-Language: en-US
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        GNU C Library <libc-alpha@sourceware.org>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <1825384a-e02a-c19d-eb22-aedc749046bc@gmail.com>
From:   Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
Organization: Linaro
In-Reply-To: <1825384a-e02a-c19d-eb22-aedc749046bc@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 16/01/23 17:46, Alejandro Colomar via Libc-alpha wrote:
> Hi!

> 
> Do you think this is something to be fixed without important performance penalties, or should we just document the bug and live with it?

That's the problem with ill-defined interfaces, each implementation might 
eventually differs.  It seems that BSD, AIX, and Solaris follows glibc 
implementation by wrapping around (Solaris also provides it through 
sysmacros.h instead of param.h).  The exception is macOS that saturates 
the value.

I really won't bother with this interface, since potentially changing it
might generate more potentially breakage than improvements.
