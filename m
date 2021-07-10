Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 122FE3C3626
	for <lists+linux-man@lfdr.de>; Sat, 10 Jul 2021 20:38:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229792AbhGJSlQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 10 Jul 2021 14:41:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229614AbhGJSlQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 10 Jul 2021 14:41:16 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9152CC0613DD
        for <linux-man@vger.kernel.org>; Sat, 10 Jul 2021 11:38:30 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id t5so3540650wrw.12
        for <linux-man@vger.kernel.org>; Sat, 10 Jul 2021 11:38:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=l9PsRj2YRjFU15uc2o2r9a6isZXMV0Fq0PkYa8TdRiQ=;
        b=P+4r0mIvS0T83PCYjmJ8u7smFP2eqN5A14MvlPUCrh97n2GnQFb71JFLJ1cIbDpXcC
         Ekxqv/EA6jMCbvgB7KUnTst5pJHExD186yR3AjoaEYsVGPS4tOfX3JMqFkGKRIH07tP6
         j42ot+fXxNv3whly74lzgf+WSk95DNCNrLsvHTzyJuapxaJS6SIN8AMKm1OWu8XLhbjf
         RXs4PtVBJR38AfE3+UOAAG85vIE5y80QOgK7Ku3n63BdIuYftu41R8j/mzImURBKPTNm
         OpNli/9p79kGste6lNUPyG2JrQSiYCpAaZ3gkpIMVDLyqXVkfVSovn4Cry7U229OT009
         yjiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=l9PsRj2YRjFU15uc2o2r9a6isZXMV0Fq0PkYa8TdRiQ=;
        b=BrVRtINOvdYBxuUUg2pM7VEfQNN+rXkAAqJWJH/pdBvoV2V1brLUOUN3mvcqxFXfg5
         fXbMtK/91UHzYpexwajOmbuN3/DuOYO8RlT9iA6toEKWB8tAft7H5VytPE+1Cyux9VB6
         JQww1qTh1tRoKiBdvrvbHj1NQTTVsad28Sk2rXbbldlR6yoAs0JPcnnZA/kFpXNi5Toa
         VyNNhU/hNy7Sf2hqT39QoOuxzRmWdmCEQIcRjC6lnFV/fOyoFv9dfDNOrYxbjBMl5j7C
         6MM3rIOjea5Y9McnJp6kNZyeCeKRz0TWbqHCa4Qj5KtZJwZYn6+4+2zeesIhWRxgnAWD
         nVtQ==
X-Gm-Message-State: AOAM531lb6LFgsmZ9eOE+9hAwmXFAHnNI0Euk+VTVEHjT2gUDOw43hlb
        47+4/JdYajLqSqcI7hMMxOssp5ZECcA=
X-Google-Smtp-Source: ABdhPJyf2fhxRftTn0VzRZYqBuaRHsqUzw2oG8q3TWArQZJFXUTSCbdWCOsQt5cPRPD1CRxPxDns/w==
X-Received: by 2002:adf:f8c5:: with SMTP id f5mr48722752wrq.420.1625942309238;
        Sat, 10 Jul 2021 11:38:29 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id d3sm8918888wrx.77.2021.07.10.11.38.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Jul 2021 11:38:28 -0700 (PDT)
Subject: Re: wcslen SEE ALSO
To:     Jonny Grant <jg@jguk.org>, linux-man <linux-man@vger.kernel.org>
References: <5faa9290-dad0-474d-fa50-a9f280d65853@jguk.org>
From:   Alejandro Colomar <alx.mailinglists@gmail.com>
Message-ID: <06af5dea-40a5-88a9-578c-7049903d24a0@gmail.com>
Date:   Sat, 10 Jul 2021 20:38:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <5faa9290-dad0-474d-fa50-a9f280d65853@jguk.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jonny,

On 7/9/21 10:42 PM, Jonny Grant wrote:
> https://man7.org/linux/man-pages/man3/wcslen.3.html
> 
> Hello
> 
> Could this wcslen SEE ALSO add references to  strnlen(3) wcsnlen(3)  ?

Fixed.  See the other email :)

Cheers,

Alex
-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
