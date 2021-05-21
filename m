Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B9E0438D14C
	for <lists+linux-man@lfdr.de>; Sat, 22 May 2021 00:19:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229534AbhEUWVP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 May 2021 18:21:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35536 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229503AbhEUWVO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 May 2021 18:21:14 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BB5EC061574
        for <linux-man@vger.kernel.org>; Fri, 21 May 2021 15:19:51 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id z19-20020a7bc7d30000b029017521c1fb75so8205358wmk.0
        for <linux-man@vger.kernel.org>; Fri, 21 May 2021 15:19:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=h/f/qiFYbLBK5JkervWFA402A8BSCO47nndLtV5qOHM=;
        b=HWpqbShehYKzxeOEqt6drKRcY7XoJOXEECNYhQnWcGnXqISP4jdd0uTyKdww1QV9Qb
         ZLWDPqK3jrLqCQYpwuEX+12EIApypPT+oGNn2h+bpxrvByjvHwNx19B2GZvPNxvpIPVT
         U0dgyB3KUenfFMbT0ML1O6BRrg+KV48TPBSdgq/pBJqC/Sy6jseMmrfyUg2kpRCxBWe+
         w0GMnKVQvdBlobMjhGvQfa8YDwf9AEN4VSS7cP15W13joFjnt/SG6ABXz5rbfV+BIT/3
         j1a/J9B9/++v0vUA/k54XZyjcVWbUZSzYWBkHx0OAlstPGMPBmVm6YK+ZeGzGkHuTJWR
         Y3aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=h/f/qiFYbLBK5JkervWFA402A8BSCO47nndLtV5qOHM=;
        b=asBmP5nzE1Kt7csEbr1W3a2/8E+n+/CRikkwp1O+8j94IYqsDIdxMdUlF49KG2q3M5
         PzczleLcUYrIUlNmpiYGAb1gG6Miey9ZatbAf3BdLB+rDK0T8N2ytwlIVK1AfOkerK8B
         BU14ffrJBsCfVj7mQUlrnBdUeMrCkjHHvkFHaDD20vpgQyTrHWRHnimVESbbKp6m6uej
         C9P6nxHe0SOzQb+X9yeQMg4xncEA/Aznw4pxqZe8X1jTwgGOp5uYj7SlWYeGuCJzu4PC
         JEUFezLWcl8lQVWFjjuG0jEdNJ486k6gYUqBELZKniqkOpfV/BlcVKDkg5ZxS52xBQY+
         GrZA==
X-Gm-Message-State: AOAM530QiqiGpWty/NSleGLUWXmnqpIkl9bhfBu8HB9F5XSND2l0j9Gi
        sUasAO5UTJlHk1ZvHq+D+2rzqGvTIdKnAw==
X-Google-Smtp-Source: ABdhPJwqGGd9mFqq6vmiIxW0bz6qlYZz7MAXw3RTstihKwUFg7DRJ/OWR2WHWvY+m8E0c0p+OMjRBQ==
X-Received: by 2002:a05:600c:4f8b:: with SMTP id n11mr10619324wmq.180.1621635588634;
        Fri, 21 May 2021 15:19:48 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id t7sm3298130wrs.87.2021.05.21.15.19.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 May 2021 15:19:48 -0700 (PDT)
Subject: Ping: Consistent parameter names
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <548683d1-4a39-5f1f-2459-36c95844a0a8@gmail.com>
Message-ID: <e7814c4e-fcd8-8e7e-742a-f35cda31848a@gmail.com>
Date:   Sat, 22 May 2021 00:19:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <548683d1-4a39-5f1f-2459-36c95844a0a8@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Ping.

On 3/4/21 3:50 PM, Alejandro Colomar (man-pages) wrote:
> Hello Michael,
> 
> I found different terms for parameters that refer to a same thing
> in different functions (usually a '[const] char *'):
>      - filename
>      - file
>      - path
>      - pathname
>      - Maybe others; I don't know
> 
> For 'FILE *' we have more or less the same,
> although this one is much more consistent (>90% use 'stream'):
>      - stream
>      - streamp
>      - s
>      - fp
>      - file
>      - filehandle
>      - A few others in specific cases
> 
> Also for strings, there are
>     - s
>     - str
>     - string
>     - maybe others
> 
> There are probably other cases with the same problem.
> I think these parameters should have a more consistent naming.
> But which names should we use?
> 
> I tend to use short names such as fname, fd, s, ...
> but I don't know if you may prefer longer names for documentation purposes.
> 
> What would you do about it?
> 
> Thanks,
> 
> Alex
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
