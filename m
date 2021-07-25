Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C2EA63D4FD9
	for <lists+linux-man@lfdr.de>; Sun, 25 Jul 2021 22:26:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229709AbhGYTp1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 15:45:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229661AbhGYTp1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 15:45:27 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17525C061757
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 13:25:57 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id l18so877103wrv.5
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 13:25:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=PzqoW00b9rpbnm4Ki6+K13i9AtNGOKfI6ecUrVK20kU=;
        b=fvDRj/NyZN5y1dbtZlo55DTYGRrkfhu0psFJ0hAGH4L1BZQM2YkdWm68PBg25f1HE5
         7sVsCqFXZQXW5M5WUnbnVgjZmXZ9hJB9VPbpTOpM1PcRHA1kCVveSjyklhrZe+WY5WpL
         XTDJKF9H9dVfe12OvwxHTn52TnoEG5t16TJtr7XakvWfoZdBZYYk0A25A38n7EjXOqn+
         KhjjSgDySLVHf9REHbyj4L9bT4ZAd4RQW+SgnInr9RoWl69O+1bBVMTStLhPn1NulOEA
         OdsIQVqvBW4I2/cyT/qxemimC4pJyc4k/HOZZvJ/ET3AdZXZbiNue0yutfoJueyXGe2E
         /a6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=PzqoW00b9rpbnm4Ki6+K13i9AtNGOKfI6ecUrVK20kU=;
        b=K1S2W60UHUJicknsy474qQF5NWdaNAdZ78xWfVPFsCdIgMJAvxtNj/zMEBTOGrv3DR
         Y7GCOyHxO7QVp/c5HUhT6mdsyCtSl6j6Wbj/7USryTJxdVRCPIwn9R3oa67NBPEXX1dX
         MZ5pVCEYUrlws3Yjh2zwL6KldY57uJQ0ry215yrg4IQj8ZGy75uGnxR5Bp02zw+pO8G7
         0eyCc6Z7HoqKtnj+ME2McNfwbx1LiTlUX97jdYN9dMoPVI4wNNSuZcwPx/295dMiQma5
         xKZqr2yiiu+W9uzcg+kVgT49+ddjGou7F+Ggz39eevgjU4ZeHleg7EMjyxiOi+G3Gafg
         L21Q==
X-Gm-Message-State: AOAM532N4mM2b7sFbPR5tnxQo541Pj+rqpnU7qM7DB9pWdT4NIVP7oz6
        YmwwkxrXqDHrQZb4MBClqyc=
X-Google-Smtp-Source: ABdhPJzi4n8fNHh3n/cuuvIUQcIgJPsjEB8sXKOLh/BLEAFEZbEK9HcxOYrn3iOMB6P9ttpoQHpNzA==
X-Received: by 2002:adf:eacb:: with SMTP id o11mr16548830wrn.62.1627244755629;
        Sun, 25 Jul 2021 13:25:55 -0700 (PDT)
Received: from [10.8.0.150] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id 129sm34333422wmz.26.2021.07.25.13.25.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Jul 2021 13:25:55 -0700 (PDT)
Subject: Re: wcstok(3) code sample
To:     Stefan Kanthak <stefan.kanthak@nexgo.de>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com
References: <8514C525E9C345FEA377AC5912010871@H270>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <69a547a9-7d25-73bf-e1f4-7cfbfdcb79aa@gmail.com>
Date:   Sun, 25 Jul 2021 22:25:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <8514C525E9C345FEA377AC5912010871@H270>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Stefan,

On 7/12/21 11:07 AM, Stefan Kanthak wrote:
> Hi,
> 
> the examples section of wcstok(3) shows the following code
> which exhibits undefined behaviour and typically segfaults:
> 
> <https://man7.org/linux/man-pages/man3/wcstok.3.html#EXAMPLES>
> 
> |  wchar_t *wcs = ...;
> |  wchar_t *token;
> |  wchar_t *state;
> |  for (token = wcstok(wcs, " \t\n", &state);
> |       token != NULL;
> |       token = wcstok(NULL, " \t\n", &state)) {
> |       ...
> |  }
> 
> The string literal pointed to by wcs is read-only, and an
> attempt to modify a string literal results in undefined
> behaviour; wcstok() but writes NULs into its input string.
> 
> FIX: replace the first line with either
> 
> |  wchar_t *wcs = strdup(...);
> 
>       or
> 
> |  wchar_t wcs[] = ...;

That code is a bit unfortunate.  It is not a complete program, so it can 
be interpreted in different ways, one of them the one you said, which 
results in UB.

I guess the intent of the code was that wcs was assigned a pointer to a 
wchar_t * (not a literal), and therefore, it would be correct.  The code 
predates version control, so we'll never know...

Would you mind sending a complete example?

Thanks,

Alex

> 
> regards
> Stefan
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
