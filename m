Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D5784265BDE
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 10:46:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725768AbgIKIqd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 04:46:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56498 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725550AbgIKIqa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 04:46:30 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 639FAC061573;
        Fri, 11 Sep 2020 01:46:29 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id z1so10653261wrt.3;
        Fri, 11 Sep 2020 01:46:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=eJ0yT3gfPHpaAjung1PNqKo0Lcs/UYE3s1xPfQ/WBMY=;
        b=B0mdWQvwCU3TIVMqLrIK4juZPymnz9Wkz8pceQZ5YEBCEEJwlWicaEfk5udMeMWRvw
         S7r8Nxaaf0C5vCYnWyCLwBIdsagVeptymFC2QCCachwK1FIHGip8xa1zFSv/YPfsnht3
         9En4Gp3csGFrHP4ucwoC2XZy//grYyC7lfycUZmQqgma6vkMvPEvWEX8qGOHgx1Iwou2
         /DMHRsquF3EGemHq/r7ESwhV504lAGnxm0ruyLn9Qs/BNpiomaI0CHP8YDDJLhw6w02y
         MTHPGRevdCFil+AW0vBBewAOTiZhhVwk1wWeoF94xJi7Bqzvn6NOCv8fJbnlxCfwB/aO
         uS6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=eJ0yT3gfPHpaAjung1PNqKo0Lcs/UYE3s1xPfQ/WBMY=;
        b=foDyAlEOHjjWah6PJI7jYnh8v9YMmzynttHrVm1xru3Af1YX+wWt0vNGnc0vgYNfBj
         7764WokQOceJ7qOzJVD87XJnV0ST/c7dRctFPYBArC4lDaDHyzdHVujD5RCh67Hv+xoa
         6qOzCkXLTDiY3jU1Cru26ylCT1NHvikCB12yhCekpl+A1ImXXWiTk8vmtsz+P3+dAGcP
         11R7psgY3AYpXKSr1b0uc/8kjuoTK7RGGPxzB1qDQ0BkOzm+TJAnDJ0iH4Tm4j04LFDW
         +Pc7IrXTcRZW/JiNKQUZUrTmnpEQWqhrhvydAnlWA8fCQjHE6q6wZ8rfaDkIyX9kPGWq
         yruw==
X-Gm-Message-State: AOAM533thSZNyvdHbciKTAkxs6tFUI4AzBgoEd3ax6nrtjoDDlF2mViq
        T+3npbZelXatXiq/t+Y51MRfc/Z516E=
X-Google-Smtp-Source: ABdhPJxbHpJznZI2P6w9ukjTjQI+4WATpoBMFz4rjnF23qsfl4GQLckyNE2ELYFkXhn9qeYK6dLsng==
X-Received: by 2002:a5d:560d:: with SMTP id l13mr906697wrv.49.1599813987884;
        Fri, 11 Sep 2020 01:46:27 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id t16sm3201418wrm.57.2020.09.11.01.46.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 01:46:27 -0700 (PDT)
Subject: Re: [PATCH 23/24] select_tut.2: Use MAX(a, b) from <sys/param.h>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-24-colomar.6.4.3@gmail.com>
 <ede06e4b-7217-1315-6035-9116df9b02c0@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <e10294cf-e7fc-6ef4-55e9-c09ba30d995f@gmail.com>
Date:   Fri, 11 Sep 2020 10:46:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <ede06e4b-7217-1315-6035-9116df9b02c0@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 2020-09-11 09:54, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On 9/10/20 11:13 PM, Alejandro Colomar wrote:
>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> 
> I'm reluctant to apply this, because MAX() is not a standard
> macro. I suppose it may not be present on some other UNIX
> systems. You thoughts?

I know the BSDs have it; maybe not all of them (I don't know them all), 
but it is present at least in OpenBSD, libbsd, FreeBSD so I guess it's 
common enough.
For other UNIX systems, I have no idea.
Maybe there's some unicorn UNIX that doesn't have it... impossible to tell.

Cheers,

Alex
