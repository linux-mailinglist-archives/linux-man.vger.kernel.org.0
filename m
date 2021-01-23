Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 61F7C30186F
	for <lists+linux-man@lfdr.de>; Sat, 23 Jan 2021 21:54:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726316AbhAWUxs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 23 Jan 2021 15:53:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725932AbhAWUxr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 23 Jan 2021 15:53:47 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F972C0613D6
        for <linux-man@vger.kernel.org>; Sat, 23 Jan 2021 12:53:05 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id b5so8431807wrr.10
        for <linux-man@vger.kernel.org>; Sat, 23 Jan 2021 12:53:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=yApHrbLNSS6ozFMN4lND7a4f9o3JYMpN2oMPHhI/PtQ=;
        b=Uy6G1vj3pRjIvCglyDDo2hif2QcR03QMnHgjDNfekiaT0nkXGjh57HCYdraGsyMQQr
         +CbxxZALA69THkHrXhakjQs5P5kchliTOJK+iPB/aTtZ2Bj0Vl/y8ExgzI5ZJDDEJbO+
         5ywK0woGlsoobNfiELhD2gIJcQ+4nBDw4nOveg19pR/5viacgB8U8qISpS1yFgJcrdjl
         Un1k/GpramAIhCW+N4+n1krp5Bxm0q4Ros9UGk+e6+NEeFOFaMmMmiwwMeYjkPa+Bl3/
         d3Kjhmuij87VONtD2+bgE2irIq8XRaiQS5gXhAF4zLg85TA7RydvsjZUJfnwR1tNbbWK
         HxAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=yApHrbLNSS6ozFMN4lND7a4f9o3JYMpN2oMPHhI/PtQ=;
        b=UIhZ9agGTh7UxlT/wvAsD1tho7Kd9mkNFhWKgckv11G8R6ogFLl74MFrvHcWN82m+I
         uPMCwskSlb47Le+0uQmPbj8/S449GE924hqoTHx+AhCuJ/cNhOFZrhWVRUiGpF1V+m+B
         hcuVk7yHydtXRs+z6g53M4iTlckoax5qVGtRcpgifskg2HZkretodT5Ob+3euZPlq8Rq
         XerPzE3aXSZDhvgUx6yQizWIlaaF9C3vnkz090lxC3gWW9bf4qRB402GsoWjrV8iTGdE
         f169Kru/paeKS9Tcq4rrbic/wyQ+NxxrhSy3lInHAoY6xhgdnKUjVqoxFUjqRhtnhyWm
         pj0g==
X-Gm-Message-State: AOAM531/fIoTSxgC0+vpnfisHTpdx4oTe8Ktil99QYnWUaf3pu1xH2ah
        v2ttlRxoKv4NTDQAGQ1eLJiKTb4znXE=
X-Google-Smtp-Source: ABdhPJyDJoWCTtryySEcAnQGkh0PN0i+3RhR95PzvhOLMZd3UB3jg9ulOBJe2eKsSvtwBeBa0b6ZJA==
X-Received: by 2002:a5d:4242:: with SMTP id s2mr170886wrr.187.1611435184072;
        Sat, 23 Jan 2021 12:53:04 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id p15sm16953830wrt.15.2021.01.23.12.53.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Jan 2021 12:53:03 -0800 (PST)
Subject: Re: How to deal with colliding filenames?
To:     Peng Yu <pengyu.ut@gmail.com>
References: <CABrM6wk4Fy5d7EiqgdZEDGw8Cz31n47MLDUV7=eantZu1Apb4w@mail.gmail.com>
Cc:     linux-man@vger.kernel.org
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <d4c126d6-42b4-4a7a-3834-e9ae0c94adb2@gmail.com>
Date:   Sat, 23 Jan 2021 21:53:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <CABrM6wk4Fy5d7EiqgdZEDGw8Cz31n47MLDUV7=eantZu1Apb4w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/23/21 6:54 PM, Peng Yu wrote:
> Hi,
> 
> https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git
> https://git.kernel.org/pub/scm/docs/man-pages/man-pages-posix.git
> 
> When I tried to clone the above repos on Mac OS X, I got the following
> errors. The default disk on Mac OS X is not case sensitive. How to
> deal with such a problem? Thanks.
> 
> warning: the following paths have collided (e.g. case-sensitive paths
> on a case-insensitive filesystem) and only one from the same
> colliding group is in the working tree:
> 
>   'man2/_Exit.2'
>   'man2/_exit.2'
>   'man3/NAN.3'
>   'man3/nan.3'
> 
> warning: the following paths have collided (e.g. case-sensitive paths
> on a case-insensitive filesystem) and only one from the same
> colliding group is in the working tree:
> 
>   'man-pages-posix-2003/man3p/_Exit.3p'
>   'man-pages-posix-2003/man3p/_exit.3p'
> 

Hi Peng Yu,

I understand your frustration.  I had the same problem when I tried to
work on the man-pages from a Windows laptop (using the WSL2).  My
solution was the easy way out: wipe Windows and install Linux.  If
that's not a possibility, I'd try installing drivers for a filesystem
that is case sensitive, and have a separate partition with that
filesystem.  I don't know, but I guess it's possible, and easy.  For
more help, I'd ask on <https://unix.stackexchange.com/>.  BTW, I didn't
know OSX used a case insensitive filesystem.

Regards,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
