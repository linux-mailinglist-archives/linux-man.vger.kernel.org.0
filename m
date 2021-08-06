Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6D96E3E23F1
	for <lists+linux-man@lfdr.de>; Fri,  6 Aug 2021 09:25:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239712AbhHFHZl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 6 Aug 2021 03:25:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45054 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235225AbhHFHZl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 6 Aug 2021 03:25:41 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99F90C061798
        for <linux-man@vger.kernel.org>; Fri,  6 Aug 2021 00:25:24 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id c9so9768540wri.8
        for <linux-man@vger.kernel.org>; Fri, 06 Aug 2021 00:25:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=JtvIn0FJ+WOdLsf9J/BeWtvPQcyO6jREmarMQ1PPpQI=;
        b=KKBZT6Za9JBjt2552a3ImSrc+ulEZjRLDvp/FAAMeqxsAR3meyrH3EaCd3qpNN6M5p
         AtCAXa5y1j4smyEnK0swJ9CGropEpEz0R4MCKAp0/0RIvzVCS1jNffDj29NqujUBZeK4
         ehKEfsOkppR4byyLo7uP7ys7NosoaoKMIuJDbjhjGd+IcueUVLvA+kIdv3SW2ivJI2bm
         tE6FU3QypARMdZepSFDxT8GIVWguxIlvuYsSN5A/evfPZSndlwjU1i7v9e11tvFxJQs3
         MX1G/5ZdTgqm9N2kBAJ0eP7uflL9mnzf/oZrG50SrcCgLMlAKkKjWlgXCoAlci0i16ok
         9l3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=JtvIn0FJ+WOdLsf9J/BeWtvPQcyO6jREmarMQ1PPpQI=;
        b=c7h1C1C2Eb0YoE8iVm4MYGm5ewtHsZ6ZvYSv/Q2fKh81/3l6cTezt8E2quFrG50dvs
         QZeNo9SUP3oruNSjC2ib6F3MvkqUshRMvZEvMF3C/dCKID6ON9LdnFFgM9kNUOyKuFbJ
         gv7E2rmNW7eJ1tMYGPPlW/iX5xu9lJlzVrMeGKcGPMBJmcjEoXaFkOa3m6R2qB+UORwx
         VpQMfdh5qrSeSXmOQ+ilmnBYiKlZkskvFiTiPv8TiIEVh8r0ZePzbarHm9ZDGMUXTN4n
         BsCM68hzxhwkbmySWzWy8H6mfi/qortR4WGAMK+JymcqmiuqINp51Ub0lM2EGibC4sRN
         DFog==
X-Gm-Message-State: AOAM533oZWVcvCZE4sSIj73RcImOtesyGSRAL2JV4wU6Fj+t2Ivh9IYM
        eSspCNrhTrE/zBW2TNtzZm/Zq+flrNw=
X-Google-Smtp-Source: ABdhPJzbsT/DoHYnE3zY7AEHwHZvLPc0YJsbfVnp1PlNKwvHQXdlV+t/pst49XkaTBiCKJ/T4AidwA==
X-Received: by 2002:a05:6000:110d:: with SMTP id z13mr7939925wrw.345.1628234723220;
        Fri, 06 Aug 2021 00:25:23 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id m27sm8285905wrh.34.2021.08.06.00.25.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Aug 2021 00:25:22 -0700 (PDT)
Subject: Re: [pr] nscd.conf.5: describe reloading, clarifications, v3
To:     Greg Banks <gbanks@linkedin.com>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
References: <BL0PR2101MB13165DA16EA08B6ECF60D1CAA1F19@BL0PR2101MB1316.namprd21.prod.outlook.com>
 <0c851411-caf6-5178-09c5-f5d54fb12c97@gmail.com>
 <BL0PR2101MB1316CCF8B96DDEC9D0D5F5D4A1F29@BL0PR2101MB1316.namprd21.prod.outlook.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <925300a8-2f31-da7b-cb01-5b74d996eb4e@gmail.com>
Date:   Fri, 6 Aug 2021 09:25:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <BL0PR2101MB1316CCF8B96DDEC9D0D5F5D4A1F29@BL0PR2101MB1316.namprd21.prod.outlook.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Greg,

On 8/6/21 12:14 AM, Greg Banks wrote:
> Hi Alejandro,
> 
>> Okay, this works.  Could you please do this and also send the patch to
>> the list inline (that way it's easier to comment)?  If it is reformatted 
>> and doesn't arrive to the list, I'll forward it.
> 
> Done, with a new subject.
> 
> My email client has a "Switch to plain text" function but it seems to 
> only work on the initial message compose and not when replying, even 
> when the message being replied to is already plain text.

Hmmm, not a nice email client it is. :/


Thanks!

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
