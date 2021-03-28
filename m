Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D57D334BC3F
	for <lists+linux-man@lfdr.de>; Sun, 28 Mar 2021 13:57:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229955AbhC1L50 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 28 Mar 2021 07:57:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40822 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229950AbhC1L5L (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 28 Mar 2021 07:57:11 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 872C2C061762
        for <linux-man@vger.kernel.org>; Sun, 28 Mar 2021 04:57:10 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id d191so5186276wmd.2
        for <linux-man@vger.kernel.org>; Sun, 28 Mar 2021 04:57:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=PgTPz5ITgg00ApK1KintDCM18vIRH5DwOkC74KOyQO0=;
        b=e6GdiKcC0hYC6uNDGmPruMC2e1IX4/Kx5iu88rIFAMVGm62DWYjmHLql4ssbKLv8Wg
         GSSHnRSXR91OpxrH53BWy3fnLphHhqd32BALikS1jmHXQFe2GoTXeH+yC78SKydGB3dk
         F1pOaagZCEmn+9KkQpeWZxpfBE0OUhbb481kOiWAYVyZerQ4mEKR6e/q2cR03b28J8Jj
         cCIMszgwTU+4WuymRYLFLd9kYLBfrmip+SwbwaEuKsOlpk54eVPT8lRALvL2V8uusFSk
         bx2DAnpvtd++cWGwmalKxe85TByITvGU5WrFfiqNOvgQCMrhamtAHUDsQICHIhXDmeDI
         fUMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=PgTPz5ITgg00ApK1KintDCM18vIRH5DwOkC74KOyQO0=;
        b=JV30qAplLWHOxDvYV+UyzVPId/7GIdZaAIP3IdkzpChlNj+jLFq9mrcGBZ80CtXB47
         sGD9Ld7bV6TKvC/h3AddXQ7pQgQT8NGrlDMSQG0jea4uquQlNW3JuCWWL2g4pfomu8Do
         KZ4Dp09VGD4QM3bqJqKqLuxbKv9aDUWRQ204cbxvLp2IBSJkyeTMyV81OSAo5jm4A9ub
         YyIDwPBLz6riIbQbZy1a7DVU9XOn79rkNOnD+WVjgy3fv7DvgGu37TBVZ9E6aE0z2kiw
         Ysk35T0JAbcdotVunMcgpcYBRNC+KxWfcM6SiOeqCm/2iwDHys0PAwSS1PoFsqNMxDrZ
         cb/A==
X-Gm-Message-State: AOAM533+cQ8z1vh0x1cL15wp+VBQbxUSswkjWHetIr8PnqQha8uMXRbu
        bWISYTMVO5sl958F0QWzkvF1MmnFkLc=
X-Google-Smtp-Source: ABdhPJwU8VEm64+e/LKUxDF8sxRZuF6RYqvv6A8ktXzsJEES+Ts2VOCp/E3GxNqgu7XePQkuNktThQ==
X-Received: by 2002:a7b:c38d:: with SMTP id s13mr20485352wmj.44.1616932629068;
        Sun, 28 Mar 2021 04:57:09 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id u4sm24609339wrm.24.2021.03.28.04.57.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Mar 2021 04:57:08 -0700 (PDT)
Subject: Re: Makefile: Use standard variables and locations
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <b4cf925a-ac73-33bd-a6eb-514c69e82d51@gmail.com>
 <20210325220655.egwiilcs6pf7eher@jwilk.net>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <5015ca93-b9f2-0c19-2029-939c7aa9b1a7@gmail.com>
Date:   Sun, 28 Mar 2021 13:57:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210325220655.egwiilcs6pf7eher@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jakub,

On 3/25/21 11:06 PM, Jakub Wilk wrote:
> * Alejandro Colomar <alx.manpages@gmail.com>, 2021-03-20, 22:03:
>> - Is '|| exit $$?' really needed?  AFAIK, make exits on error.
> 
> Make catches errors, but shell doesn't by default. So if a recipe
> contains more than a simple command, you need to care of error handling
> yourself. For example:
> 
>   $ printf 'all:\n\tfalse; echo moo\n' > Makefile
> 
>   $ make
>   false; echo moo
>   moo
> 
>   $ echo $?
>   0

Ahh, I see.

> 
>> - Specify SHELL = /bin/sh
> 
> This is the default on Unix-like systems.

Humm, yes, it feels better to not specify it.  I was just following GNU
recommendations, but this one doesn't make much sense.  I'll remove it.

Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
