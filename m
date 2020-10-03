Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BB6282821F0
	for <lists+linux-man@lfdr.de>; Sat,  3 Oct 2020 09:10:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725681AbgJCHKU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Oct 2020 03:10:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725446AbgJCHKU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Oct 2020 03:10:20 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D214C0613D0;
        Sat,  3 Oct 2020 00:10:20 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id k10so4109796wru.6;
        Sat, 03 Oct 2020 00:10:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=1SnARmq+Hi0tqLKyVEdmr6RnjMZon2ZU6euN0xVZq1E=;
        b=hWu45tQjPGjTxhE0g/eORF/fFEQWFgV8ndiuZqsx2a6CKJWJVtL8wNaUd0Na/kW6qy
         DOUogF3JxGEyqvtIT8AhkyEMbY9r3Te3Cbq5Wsaq8kz2wbyqQG/ugsYmuIvXO1MCQ08L
         MsYs1g5UU4X9qqjmC7ZwLxxHlgbF51eDYvrQ9JJNzvEpxXuRk6yyxbgl17pW/vzObQih
         5gppsNeDgUIi/6d9YcpxjjyF5gW9kuSZXnPmZU/bahH9N3TbjbJIaF9HbNbtFiH5bPuu
         muZWzImGfAp14oxUE5l2IBaR98kT94O6PJwD58diAmbwVJaiuBSiFVDcvL10vlkmUwPW
         PPlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=1SnARmq+Hi0tqLKyVEdmr6RnjMZon2ZU6euN0xVZq1E=;
        b=FuntiiJwmY2EsVORUmjd9t7UWrELorbRj3ZQ2T3UqwMaRsTz/A02ktRLZftKlyYg2e
         GZ2nGuGnHFRAvsMWOHZUXA+az3yBW8fWGzBTJBThod7/yOVpec+Gp3PXN4gfBn+k5yhD
         Ze0ldq4DelmLGElrR8lAEzXTMxysqAPTHemDdpBsGBRgCNEenVPiacD3IsnKzyFHv49y
         WBJrQs28vanlzMYdmt5fygYkW3Jm/FoJ76LnjCTyUJL4zn9fwIFVt3oPyVlTdiv0ymsX
         MOFNat9qv1XNFDSWCIAqX6z2cvAcyAhXyjFGUEEdiLXYc/a+KVr4NnAft540XvXCUeDu
         QYlA==
X-Gm-Message-State: AOAM530vgCDrs15JJCMQYyCZFjFOsfyw2q7GKxGX5y+tlZTXpg2Ud2OK
        wUSs3YzKMH8rYC7YJ+psFb/mXrpwX3E=
X-Google-Smtp-Source: ABdhPJz7zNFt2BSZ06qfuNdOPI1rXwgekmAsDgw0QYDa2ATjkNWQcDnx4HGDUxHgrHrLQ0Y6LKj7wg==
X-Received: by 2002:a05:6000:11c5:: with SMTP id i5mr856317wrx.18.1601709018757;
        Sat, 03 Oct 2020 00:10:18 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id f12sm4030890wmf.26.2020.10.03.00.10.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Oct 2020 00:10:17 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        gcc-patches@gcc.gnu.org, libc-alpha@sourceware.org,
        linux-kernel@vger.kernel.org, jwakely.gcc@gmail.com,
        David.Laight@ACULAB.COM
Subject: Re: [PATCH v4 1/2] system_data_types.7: Add 'void *'
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        Paul Eggert <eggert@cs.ucla.edu>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <20201002121645.23646-1-colomar.6.4.3@gmail.com>
 <20201002151419.32053-2-colomar.6.4.3@gmail.com>
 <3941e130-df05-778b-dc76-90cd58400192@cs.ucla.edu>
 <d794a058-0506-7c3c-6f3e-518a788933af@gmail.com>
 <ff1700df-d383-44e7-24b4-da10000f83fc@cs.ucla.edu>
 <5b01a17e-5819-115f-7972-7f849d4356df@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <78368866-e848-d208-eef7-f3a93a797853@gmail.com>
Date:   Sat, 3 Oct 2020 09:10:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <5b01a17e-5819-115f-7972-7f849d4356df@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 10/2/20 10:27 PM, Alejandro Colomar wrote:
> Hi Paul,
> 
> On 2020-10-02 22:14, Paul Eggert wrote:
>  > On 10/2/20 11:38 AM, Alejandro Colomar wrote:
>  >
>  >> .I void *
>  >>
>  >> renders with a space in between.
>  >
>  > That's odd, as "man(7)" says "All of the arguments will be printed next
>  > to each other without intervening spaces". I'd play it safe and quote
>  > the arg anyway.
> 
> Oops, that's a bug in man(7).
> Don't worry about it.

I'm not sure where that text in man(7) comes from. However, for clarity
I would normally also use quotes in this case.

> Michael, you might want to have a look at it.
> 
> I'll also add Branden, who might have something to say about it.

Yes, maybe Branden can add some insight.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
