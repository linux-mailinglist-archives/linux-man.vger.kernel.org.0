Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DD46F2688C9
	for <lists+linux-man@lfdr.de>; Mon, 14 Sep 2020 11:51:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726250AbgINJvj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Sep 2020 05:51:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51176 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726239AbgINJvj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Sep 2020 05:51:39 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2D82C06174A;
        Mon, 14 Sep 2020 02:51:38 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id z4so18005042wrr.4;
        Mon, 14 Sep 2020 02:51:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=OdPU8Glfgir5UGsLoaaR7zgD8ovaCIilI+lFeo550Mc=;
        b=b49weJcH6PKR2Z53mJBlxpDIYL0sIIAyGxhNIHuIupgPHXDkqT8WMNvBLi67Wg/Vtu
         X8t87+drB2WSh86N7yG0ae2zRb5sG5KacfLS1XkMOk10lfNTRy0RMBoEdflqx8DCBlvL
         gSQ4+oJTH8D3wPdNxMEr6v//fJDbzLebLUhaJq0BwCl8xx+EY3ODoaSXyIU78Tqsd4Yj
         UCiqqjKxd7OSve+LgMMsnz+gGV3iy0SFX82X0evk2OeSRvO4s3HmXqDZ5on9Hdb0X1dm
         W3N9TAUoEQckxOIS3+kmTR2FZEakukP8wDfni8PPPYSmquQqAmQ6iNOTMc53aKG+h0kX
         mq9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=OdPU8Glfgir5UGsLoaaR7zgD8ovaCIilI+lFeo550Mc=;
        b=JWc01H9jpIG+01ycA1U2QS9Lp4hwtswVdx4fdFp/A04+D90dQQF0Sj3OUgSvQZKgCh
         WgWdq0giJ1LzOwafidzPOrYh3kKxWA+uvOhRbv2Hm/mKhGtTgwbq0n5vcf3vi1pecSd0
         HfTJUTzHI7fEEaBI/NjI2MqaMgQsprwvet455UlKKnJQHz7LkNq3R9PGlhRKjGtNWXkJ
         qj/lshZiB493UGv14x40e9EUYA3sKgZuB8QAISg/bhGO/ouvJR3598gTA2vj3+mKBHKU
         ZERNnGxwb7mqYBj1KxOr5Oofq1tw6wX40wFgrIA3CTgi4PibBYRJWxXGGbeEIWqfV5vu
         sJTw==
X-Gm-Message-State: AOAM531hcRJviQVCADb6AwSVIYxUpxNGaPSGlWayJT8GrKOjDnmVc24x
        t7NVBKXuZkHj+0J5H0TpNXKodaF/IGFQVA==
X-Google-Smtp-Source: ABdhPJzRQXKi/lmZeJMsqxP+fAP2yo3FHSbrArpnL1NVhxPOVWpLcHeZ/t+tmjw0nMe4HoHpmYG6Sw==
X-Received: by 2002:a5d:518b:: with SMTP id k11mr14712742wrv.369.1600077095401;
        Mon, 14 Sep 2020 02:51:35 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id o4sm19620709wru.55.2020.09.14.02.51.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 02:51:34 -0700 (PDT)
Subject: Re: AW: AW: [PATCH 12/24] getgrent_r.3: Use sizeof() to get buffer
 size (instead of hardcoding macro name)
To:     Walter Harms <wharms@bfs.de>,
        "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-13-colomar.6.4.3@gmail.com>
 <00ae0174f35241efa962286b9247c590@bfs.de>
 <c2b43a9c-ae80-fae6-16a4-09c9aab73ac1@gmail.com>
 <67f68125677e4e17aa1742b88267e05f@bfs.de>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <fe9ea5de-d09e-2013-22ee-3fff8f3f1c0e@gmail.com>
Date:   Mon, 14 Sep 2020 11:51:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <67f68125677e4e17aa1742b88267e05f@bfs.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Walter,

On 9/14/20 11:24 AM, Walter Harms wrote:
> missunderstanding,
> i do not want to discuss sizeof() vs define

I did understand, that was point (3).

> 
> in this example you do:
> #define BUFLEN 4096
>  char buf[BUFLEN];
> getgrent_r(&grp, buf, sizeof(buf), &grpp);
> 
> so there is no real need for BUFLEN anymore
> so donig
>  char buf[BUFLEN]; -> char buf[4096];
> would remove BUFLEN
> 


However, I think that might be better as a separate patch.

I really don't have many arguments for nor against it.

Thanks,

Alex
