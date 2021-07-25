Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CD46D3D4FE6
	for <lists+linux-man@lfdr.de>; Sun, 25 Jul 2021 22:33:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229709AbhGYTxI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 15:53:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229661AbhGYTxI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 15:53:08 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCAAEC061757
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 13:33:37 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id r2so8609189wrl.1
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 13:33:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=rAkjJMs2/d63q2KA3aFkzMxqGbG9Xyl18yBLTrAxkEE=;
        b=K+lsLSuvdyZs9CgJ/Xa+b4sBYNmUXza1u8DgzTuXBUFUwtCevJMYV2Jh5vDNwRuPja
         jZmvto3OY5tE5I9NTAzVwoNDoh0CIGDO+PTD9NTFe7fwbaFCJBHMacBJKiIUydIlDs2W
         HogKHTGDWmcgNd2knomB/nzsPMcFKBYCIEvln8lxhHrnl6FXrkjLqfvXx31cXWVWhgFh
         CD3UlN/4zhRggRBgyJY1FIRekeawtID7NHyOiHz2tDJe9le5ttQXUlOrVd611tlfXtth
         YLikUFFCCvNsaRSCtkEA0O3UwdWvPt9ScrLex3Nt35ItSrLEVncm4CoCI5+I3pEbBPfJ
         YMog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=rAkjJMs2/d63q2KA3aFkzMxqGbG9Xyl18yBLTrAxkEE=;
        b=TVv3YEYweUupchtHJhxfISlMdbAcSV/LxRuvQF0kRVtQzS4T/edpaNByfBdMCv4SYb
         x0ia8mrIWtA7yb+7OFxTGdI343Fp6ScfmtWELPREBSVn9hqa3ASU42oVaO6y5Ks8aJnC
         6Xdrg172ba6ng0WHBkMpf09Qw4G8BIq9UGjKfdF1A2NAvbz4ggU7XmTCDucstv5QvIWa
         yOBO7RWKlnwWT/atQCM3HHcIipu3OBIFCb/oS1+rMQpz7HN4kXQvjy2Q3npbU+eswHA7
         hYcBIhKORAgtAHm7YjxLJ+mZzwQT6BEhGhL3qqcKqnzmsVoGf8vp4KkBeNuIZzzft2Aw
         tPdg==
X-Gm-Message-State: AOAM533lJa17IIj1NdDyyiXffSaMUljUibr6JH2uU2JvXNmy5cuRXVNW
        FYZRtI8qr0tOldtthjM8THs=
X-Google-Smtp-Source: ABdhPJxeljE2XMpD2EVmoqBJvk8d6u9XsS0lUBuDK0ClEsioAmNw6krrFVcmwbIq721/KV5ic4Emlw==
X-Received: by 2002:adf:fcca:: with SMTP id f10mr15416740wrs.323.1627245216437;
        Sun, 25 Jul 2021 13:33:36 -0700 (PDT)
Received: from [10.8.0.150] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id d5sm8010531wre.77.2021.07.25.13.33.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Jul 2021 13:33:35 -0700 (PDT)
Subject: Re: strstr(3): add special case for empty needle, as in wcsstr(3)
To:     Stefan Kanthak <stefan.kanthak@nexgo.de>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com
References: <A957374054024F7DAA865C767B958654@H270>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <60df2547-dd6a-0f6a-c69d-c6ad0c1de610@gmail.com>
Date:   Sun, 25 Jul 2021 22:33:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <A957374054024F7DAA865C767B958654@H270>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Stefan,

On 7/12/21 11:20 AM, Stefan Kanthak wrote:
> Hi,
> 
> in the section return value, wcsstr(3) provides the following note
> for the special case of an empty needle:
> 
> <https://man7.org/linux/man-pages/man3/wcsstr.3.html#RETURN_VALUE>
> 
> |  Note the special case: If needle is the empty wide-character
> |  string, the return value is always haystack itself.
> 
> The same note is but missing in strstr(3) and should be added there:
> 
> <https://man7.org/linux/man-pages/man3/strstr.3.html#RETURN_VALUE>
> 
> |  Note the special case: If needle is the empty string, the return
> |  value is always haystack itself.

Thanks, I applied a patch with that addition.  What a coincidence! I was 
looking for that special case this morning, and had to guess it out 
considering it as a normal case :)

Regards,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
