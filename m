Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D3F782EBD0C
	for <lists+linux-man@lfdr.de>; Wed,  6 Jan 2021 12:13:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725789AbhAFLNf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 6 Jan 2021 06:13:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725788AbhAFLNd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 6 Jan 2021 06:13:33 -0500
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12319C06134C
        for <linux-man@vger.kernel.org>; Wed,  6 Jan 2021 03:12:53 -0800 (PST)
Received: by mail-ej1-x629.google.com with SMTP id ga15so4539216ejb.4
        for <linux-man@vger.kernel.org>; Wed, 06 Jan 2021 03:12:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=6HR/sCcCcPh3Z0nKuzddKOvr/m7fUypsTtWSieH1H/g=;
        b=NyJiWubLf74FsdL0fjd4QiVHYK+FY19Ycxb5wpOhJDKACzkgcQz/q69ML0xDfnDQzR
         BH8A1Cdive9SRHHLKT0mN+2v/J1Z7ZXBIWfsceetAs8vtiAjStQGttOT8Di5pJ+36iqB
         Y1Bw1X9JMppn9xFpO2Z7pL84f0bXm1734GDFdc4fTeXZhPF4tDwcvtt4tMBTrVnbYJUW
         5n3wNb4OwBeaftErZ6OXcX7fvSgPdhv8R9+e884awbHpTVGw6mRQivjKrnV2+LAlnSHG
         3h3AZimaLL2/i0ANylbIUmJd2jtIVZa0zKJD4UE8vbpGxtLbXk6Th7e210uhoOrD4310
         bSVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=6HR/sCcCcPh3Z0nKuzddKOvr/m7fUypsTtWSieH1H/g=;
        b=DnucOAdrk9pMkQVR0goMFOjJXF6wS+LyI/YzC8GkE2oQciRzAr+SAMrgp2qz7N9PhQ
         5dt6qLT7x90sHjJNzwFWxOJdTs/1UAl/oRK/yl7lLapzArQyIO6/2K89ZVg+gvXEp9YI
         wBrcyKkU3zax/tNM1mSE5qpNRpfaKrvm2ejAmf4c0qLoHJz5xabRKDyxfQTioXpSJhxC
         AFfrXV6Nhyss01Qzz256EkNaFmRYhbKymTIzC4RJRkTaNG1SE8revo+5kXOuaOSs71Mn
         CWA2oYUovmsEgrd5v9ZQKM57GO2xhhAREMjugDi1h3PryNptsNfGq+b4UQaBRyZqVJ+z
         QI0g==
X-Gm-Message-State: AOAM532U+U0iNMWiUWqy3IrbtGmHZ+yFeoLLvSkUMUo8RxDOTp673vXp
        N+LmX70pUkBFP1230neXoEfGq4Fmkfg=
X-Google-Smtp-Source: ABdhPJzvArgaNUK447lT7wHbQJqCdIZGZjfRJxrcFsIFbMqS1ni6sJwZp63IadYRVfDGLXgu1wxElw==
X-Received: by 2002:a17:906:90d6:: with SMTP id v22mr2561627ejw.88.1609931571483;
        Wed, 06 Jan 2021 03:12:51 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id x9sm1103594ejd.99.2021.01.06.03.12.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jan 2021 03:12:50 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v2] circleq.3, list.3, slist.3, stailq.3, tailq.3: Improve
 readability, especially in SYNOPSIS
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <21860ed2-c519-aff1-5d1d-ee2e76ead61a@gmail.com>
 <20210105223955.63678-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <894de45b-b27d-7998-b73c-5552c40b436f@gmail.com>
Date:   Wed, 6 Jan 2021 12:12:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210105223955.63678-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 1/5/21 11:39 PM, Alejandro Colomar wrote:
> - Group macros by kinds.
> - Align so that it's easiest to distinguish differences
>   between related macros.
>   (Align all continuations for consistency on PDF.)

(Thanks.)

> - Fix minor typos.
> - Remove redundant text:
>     'The macro xxx() ...':
>         The first paragraph already says that these are macros.
>     'circular|tail|... queue':
>         Don't need to repeat every time.
>         Generic text makes it easier to spot the differences.
> - Fit lines into 78 columns.
> - Reorder descriptions to match SYNOPSIS,

Thanks!

>   and add subsections to DESCRIPTION.

That really helps!

> - srcfix: fix a few smantic newlines.
> 
> I noticed a bug which should be fixed next:
> CIRCLEQ_LOOP_*() return a 'struct TYPE *'.
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Nice work! Patch applied.

Thanks,

Michael

[...]

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
