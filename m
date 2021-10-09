Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AE319427D3E
	for <lists+linux-man@lfdr.de>; Sat,  9 Oct 2021 22:15:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230052AbhJIURA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 9 Oct 2021 16:17:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229806AbhJIURA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 9 Oct 2021 16:17:00 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACBDBC061570
        for <linux-man@vger.kernel.org>; Sat,  9 Oct 2021 13:15:02 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id y3so7975780wrl.1
        for <linux-man@vger.kernel.org>; Sat, 09 Oct 2021 13:15:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=hlvM/7A7UC3Q4kbswrHNibmJEtORmmh2gAsxGLI6BTs=;
        b=h55KMg5b/0jPJsYuIRW3SdvtSZv0i8Z8JTar4Oka0+L/poR4H63ppT5TryKPokR7cK
         t7q1l7WfCHkjI42f4CuS8xEBkpN2NG+XVHmRbivmOmt7WdLTurBORTZD/LIpTYOIPMbE
         llxVZIQ0TG7hAgndVHGof6TwWm190Cn3RsTpBksmsRdXLZSbOa/47t4hJGA2WEQishxP
         uUHtXt3SJEby78zhcBwuKCcJ44iCmp+8BbHN8FerD+FsXN9nOAZlzqKukGU7A+NjYtSY
         JMaBH6KULBm3NLrEmKLxShM2A7P23odg9lVShc7EOczQDf3thAjl1Iy96lQNTTAOSJuF
         hnQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=hlvM/7A7UC3Q4kbswrHNibmJEtORmmh2gAsxGLI6BTs=;
        b=qJLPF/5JZW9MfVd68sO1yRsE6VuQ+x4dA9Trj3qxD+qaRMwOXVh1qoykK9zVS0+X4I
         9+6/CNHi8Dn+1bgJsVBs/SeYbb0T7bQm+wHe5OUwLeDxu5ohR4/Zl/iEft4fzqIPXj+p
         dNYyGk6S5nrpfDCoFbv7g3OgvZhxht4/dH4IX9otYw0Ox3jjoztEe/SC5kdoFlk6Xxu0
         wky8lQpKUWIxlTdF6RZnGs0j2GzT31wT0do1eG1TCEAVo9uqxj34hoic4io8l0Y2zdZk
         hWBxIv2zvT3S2OQTMxVKkg4reqz512AKWqYOH7j+Eg8fi3GIrt5fhHgKZFFyJkypNDIE
         tOCg==
X-Gm-Message-State: AOAM531ZNS7X5uF1dfepEh3sCbyluqVvgkzImOgk4dUdINrJU1LKNaR3
        hy1eToAoQNkEQuMMVB92GYbkqDOuD6HwOQ==
X-Google-Smtp-Source: ABdhPJygaS2Qadnkjlpb6Ghvrlep+JjCieprs6IXBnfaiYiqy5KfYycKe4WVB0vsa/7js4tGGe+ZSg==
X-Received: by 2002:a05:600c:2193:: with SMTP id e19mr4843492wme.67.1633810501269;
        Sat, 09 Oct 2021 13:15:01 -0700 (PDT)
Received: from [192.168.0.12] (cpc87345-slou4-2-0-cust172.17-4.cable.virginm.net. [81.101.252.173])
        by smtp.gmail.com with ESMTPSA id d16sm14995611wmb.2.2021.10.09.13.15.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 Oct 2021 13:15:00 -0700 (PDT)
Subject: Re: should free() refer to posix_memalign?
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <177c3be6-6bab-7e55-6fa5-fc0fc33ff3b2@jguk.org>
 <3c8ceb24-dc7d-4f57-e532-f2abbb20da2d@gmail.com>
 <bdd56782-05d4-d4b9-a9a7-81f8ee8749d9@jguk.org>
 <6bfeeca4-66c7-6349-4009-e724c2eb2fd5@gmail.com>
 <63fc78fe-ea5d-d351-0a2e-f05395e1cade@jguk.org>
 <55349181-0ea8-0977-2d3a-a98688ff82de@gmail.com>
From:   Jonny Grant <jg@jguk.org>
Message-ID: <5be88935-1bde-58a0-e01a-40967c5c3041@jguk.org>
Date:   Sat, 9 Oct 2021 21:15:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <55349181-0ea8-0977-2d3a-a98688ff82de@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 09/10/2021 19:39, Alejandro Colomar (man-pages) wrote:
> Hi Jonny,
> 
> On 10/8/21 7:57 PM, Jonny Grant wrote:
>> I noticed this page has a date  2021-03-22     for the 5.13 at the footer.
> 
> At each release (actualy, a couple of commits before the release), we run a script that, for each page, checks if a page has been modified during that release.
> 
> If it hasn't been modified, the page will keep its old page timestamp.
> If it has been modified, it will be updated with a timestamp corresponding to the date of the to-be-released release.
> 
> So that date you're seeing is because malloc.3 hasn't been modified since version 5.11 (which was released on 2021-03-22).
> 
> See below some tree view of the history of man3/malloc.3 including releases to explain the above graphically.

Many thanks for the explanation Alex

With kind regards
Jonny
