Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A3048281CE8
	for <lists+linux-man@lfdr.de>; Fri,  2 Oct 2020 22:27:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725379AbgJBU1Y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Oct 2020 16:27:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725355AbgJBU1X (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Oct 2020 16:27:23 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DEC0C0613D0;
        Fri,  2 Oct 2020 13:27:23 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id w5so3091925wrp.8;
        Fri, 02 Oct 2020 13:27:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=gF0fVqSnpT7e72P05lBNfXlBhzsVybJ4PO1KMyNMz/E=;
        b=jqljibsvv7nQ0hFx3AIon63pwP4iOBgemfYljYbjXocysv1MtxdYZ9Dz+TUUcz7/xT
         RA7Coz3frpvXwrA1tjvLRJ0ecZf6w6kewUKg/JyfOOiniZq1Jr+ugKYid7S0A247OGTT
         Dhs3dImInI9VgiF50uFJDt4n0/tMXQ4qazV33LLdlcmT0hoGXPJvyUlD+anpEiL4bJt+
         QMLOENvE0/xhhLLPForUMhyvFLKB4PvCMJaI3gU0wEBCfc+GBIszcxX7RrMR1msPmvZ7
         mdNtZKfVastJKHLIAx/WJZY62Hgw5tAyvAg1KJJ+M56TsUETQR848LQ1t2oRVd/99Dfy
         jQYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=gF0fVqSnpT7e72P05lBNfXlBhzsVybJ4PO1KMyNMz/E=;
        b=a4q8fL19jVuu0ypZsP89fMJAvnCPW6u0z1dkp/WEDy6Jp11jL0p6ZkfWx7MyHU4wd0
         ELyv1jscS9ubTDsez/uh3WhLukZVEkAeNbKOHLggMGJvKG2x2hy4N6dtGnYeBvK+HSI5
         QkVeJPIWBcEuc+aLIJ1+p9aj65JxR3Uwow9a8iHJFECmiLgl4Lox94xXYInZFfNRG2E4
         fdOSk+dLH22pHWPk6vGmG9LCf8MPiFx1gwwL1CaxslEQKciKioNZBknT83iSqn2YHgNi
         DC7CsF8DRRwOb9VBnAIuGf7cYt+H75uThtPZLCmiibjOH3n4BCHUR0I5X3MiCsDnUphM
         X8rA==
X-Gm-Message-State: AOAM532CXTlfvu00EYydWuKFawz0vr9W7xxEyFAlT76Va6wIVMHsA+8O
        TFUmxOFTEKoQ2I4k7SvqEBU=
X-Google-Smtp-Source: ABdhPJxOdMn7Qo5VdXzLDVBfaPsbbCtTkxLcIllpAlg1eCZej1Sv8BT+MOUDGbHZYV1bmkKwYEZEcA==
X-Received: by 2002:adf:fe43:: with SMTP id m3mr4889950wrs.19.1601670441689;
        Fri, 02 Oct 2020 13:27:21 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id z83sm2919541wmb.4.2020.10.02.13.27.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Oct 2020 13:27:21 -0700 (PDT)
Subject: Re: [PATCH v4 1/2] system_data_types.7: Add 'void *'
To:     Paul Eggert <eggert@cs.ucla.edu>, mtk.manpages@gmail.com,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org, gcc-patches@gcc.gnu.org,
        libc-alpha@sourceware.org, linux-kernel@vger.kernel.org,
        jwakely.gcc@gmail.com, David.Laight@ACULAB.COM
References: <20201002121645.23646-1-colomar.6.4.3@gmail.com>
 <20201002151419.32053-2-colomar.6.4.3@gmail.com>
 <3941e130-df05-778b-dc76-90cd58400192@cs.ucla.edu>
 <d794a058-0506-7c3c-6f3e-518a788933af@gmail.com>
 <ff1700df-d383-44e7-24b4-da10000f83fc@cs.ucla.edu>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <5b01a17e-5819-115f-7972-7f849d4356df@gmail.com>
Date:   Fri, 2 Oct 2020 22:27:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <ff1700df-d383-44e7-24b4-da10000f83fc@cs.ucla.edu>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Paul,

On 2020-10-02 22:14, Paul Eggert wrote:
 > On 10/2/20 11:38 AM, Alejandro Colomar wrote:
 >
 >> .I void *
 >>
 >> renders with a space in between.
 >
 > That's odd, as "man(7)" says "All of the arguments will be printed next
 > to each other without intervening spaces". I'd play it safe and quote
 > the arg anyway.

Oops, that's a bug in man(7).
Don't worry about it.

Michael, you might want to have a look at it.

I'll also add Branden, who might have something to say about it.

 >
 >>  > %p works with any object pointer type (or in POSIX, any pointer 
type),
 >>  > not just  void *.
 >> In theory, no (if otherwise, I'd like to know why):
 >
 > Oh, you're right. I had missed that. In GNU/Linux hosts, though, any
 > pointer (including function pointers) can be given to %p.
 >
 > The only platforms where %p wouldn't work on all pointers would be
 > platforms like IBM i, which has both 64-bit (process local) pointers and
 > 128-bit (tagged space) pointers and where you can declare and use
 > pointers of different widths in the same program.

:-)

Cheers,

Alex
