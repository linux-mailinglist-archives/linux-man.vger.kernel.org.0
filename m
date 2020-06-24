Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 508B42075FD
	for <lists+linux-man@lfdr.de>; Wed, 24 Jun 2020 16:46:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390251AbgFXOqL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Jun 2020 10:46:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390518AbgFXOqL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Jun 2020 10:46:11 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF37CC061573
        for <linux-man@vger.kernel.org>; Wed, 24 Jun 2020 07:46:10 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id q15so2581317wmj.2
        for <linux-man@vger.kernel.org>; Wed, 24 Jun 2020 07:46:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jguk.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=v+GnqbV97wGyQrtuJEFpb6OGaBsoJyc5OvtA2yKG1iA=;
        b=DsSGDFwRD+/I9NZ+qm6Hjxk6Zf92dBen0b2ZqquTYRFt7KihasGX4sQ71C2C6dMBEh
         zp5KMKyXUHxtby3rQ0dP/SS+FBUlgLLreFc8nwUVtq9ce2P5H7WGMr7jWVRWwIwXF19+
         FG9tHFWL+LnfBZHJFEDy+XDIjNa80ih03eRrUItelCibTkLsdl/6cCP1esczxifF563a
         K+m2YVPcvj7Ld8LzKewRgB+M3PTPkPJqBF6hOhMtdN0d/W21HrAcYcX9jmtqR57ibgEP
         6sDL/xh1urNpk0/uovuC3E3cHwJ7GhLdpw4GnekGsg6xWnAdyL8wbuaIUCn53goaLclS
         zemw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=v+GnqbV97wGyQrtuJEFpb6OGaBsoJyc5OvtA2yKG1iA=;
        b=OJk2xHFDsaYcdMnWm3IMoj4EKQuoR9z1sJYfM6eP0I4KzmHuzaGnW9HsCJjt7D4Yui
         ikSpXpOfb45KeqZEr4flxI5cyhsDlINIe0OT55tt3XZF5xw8dJiRCDH32+99TePntcMG
         etKsiKx+Eh+BCmN45OxsAwkqgi72EoP2CS6I8uD4UmN+Pj8AGnnUR3ZRX1kaVDslBjjk
         IdCTnSmZg2F9t+2IpF2i4AEaPaJgrEBYl+vD9UW7GzrnqrNfJK/PqVyg1AfK+hX7ZbWl
         0gh+yXEsP8bzeinInMzHGi/3OqS8DYKCPUG1dE5SmVGe3Ae7AL4NhkqG1uOk4zaj8JVi
         cUkQ==
X-Gm-Message-State: AOAM530QDM+afKzJZB7Sby6G0towG9jYxJwm5nLkAedRk50T38/6dC2R
        7+JtMPnyfmV/Cr6hgkoTFacBl7FghNc=
X-Google-Smtp-Source: ABdhPJxe91xIekyNxC0hFhn8Wy+Yf4ShZ2EDh3AG5CfPok+4PvMlPci8fxdICByjpCDymZY3CHxOXg==
X-Received: by 2002:a1c:9613:: with SMTP id y19mr29338292wmd.135.1593009969089;
        Wed, 24 Jun 2020 07:46:09 -0700 (PDT)
Received: from [192.168.0.12] (cpc87281-slou4-2-0-cust47.17-4.cable.virginm.net. [92.236.12.48])
        by smtp.gmail.com with ESMTPSA id r8sm12833260wrp.40.2020.06.24.07.46.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 07:46:08 -0700 (PDT)
Subject: Re: cfree
To:     mtk.manpages@gmail.com
Cc:     linux-man <linux-man@vger.kernel.org>
References: <5d5d6c55-8736-0eec-aaa4-7ec86f925109@jguk.org>
 <CAKgNAkgxGJad18cAJ53eHAow=nJo6bvpAdLUVGA4+vcjZ11FdA@mail.gmail.com>
From:   Jonny Grant <jg@jguk.org>
Message-ID: <3e87db0e-f7e2-d47f-2a91-e110ffaf343e@jguk.org>
Date:   Wed, 24 Jun 2020 15:46:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CAKgNAkgxGJad18cAJ53eHAow=nJo6bvpAdLUVGA4+vcjZ11FdA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 24/06/2020 09:09, Michael Kerrisk (man-pages) wrote:
> On Tue, 23 Jun 2020 at 17:10, Jonny Grant <jg@jguk.org> wrote:
>>
>> Hello
>> Is it time to remove this old man page? it's two years since it was removed from glibc
>>
>> 2017-08-02: glibc 2.26 released
>>
>> https://man7.org/linux/man-pages/man3/cfree.3.html
> 
> The general philosophy is to maintain historical info in man-pages,
> since new manual pages may be installed on an old system. Also, people
> may need to look at old code, and understand what it does.

Fair enough.

Although I would imagine anyone trying to use a function called cfree() would already understand they should use free()

Could the key point that cfree() is deprecated and removed be highlighted at the top of the man page?

I'd be temped to just have :-


DEPRECATED
       This function should not be used, it was non-standard and removed in glibc version 2.26 2017-08-02.

NAME
       cfree - free allocated memory


Regards
Jonny
