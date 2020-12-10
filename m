Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 31DB22D6B49
	for <lists+linux-man@lfdr.de>; Fri, 11 Dec 2020 00:38:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388514AbgLJW6V (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Dec 2020 17:58:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726904AbgLJWzM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Dec 2020 17:55:12 -0500
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E27A6C0611D0;
        Thu, 10 Dec 2020 14:40:42 -0800 (PST)
Received: by mail-ej1-x634.google.com with SMTP id bo9so9644451ejb.13;
        Thu, 10 Dec 2020 14:40:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=og3mP8QDCmKL6+paoUrOZB10bVWMU1AF7Rih31rOKvI=;
        b=R8uEnwFpfcGw4QqKIJpWI4GItLiOKeA+e1VJh0Uwbo9QzxiTPAvJjFERA7zypCYm+I
         gkzfP31MOHjNQOWEMw0pt0HBflHX8X2KDaI7HFYY+L/LLjbxckRVh5FlN1nweLbFWr+E
         emuL1mUsWIm6ZH4gVZMt/7g45Q/uotlv6OuInduJJLI0z6e43/NaLGQx1TASdTb3q2vj
         tGi76SuhyyJbykptvSkNP3SExESVzH8rbHyItq4mNVE2pHtR2keY5j+jVHvrMoua+eDY
         mIuGuzw6/nalptxGxtutLGGtUZ2izgZPJkgnarYzmOVqgovuSUAd3ebszeGoduR17cYm
         YcZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=og3mP8QDCmKL6+paoUrOZB10bVWMU1AF7Rih31rOKvI=;
        b=j4SUL8450GQPikIP7wIbbgnYpwwUy0T0CTa/FM0q77HANe9cQMTomHcWig3LllawB3
         tw5AFQij9ASG1O8u36ejcoAXTZRRIMhenmeEczO6jyq3dCfPjHOT0VjwVzgZ1CK9JxSC
         GKDh1klYJJhufT/jvE/m6oDkxn4GTV6Oa7XTMhClwssZObfZCsbbBfMIplTfvvNIROKZ
         PUJN7mWzF+nNEVeTMCzT2Q4YZEBZmb8axqFhKydfkbgm3JfH4FEMXYNFiMllyUCzS45O
         6j0F5tzyp3mJdc7JLH2XYz7Zii0xl1ldKDVl9L/jHKNKc+WaeBrDELZwznO0+EGHDDMq
         c4HA==
X-Gm-Message-State: AOAM530BXumoz49Mvh6PJm5Pp5eJH+6rGCDxPtIqobQGbhPC/xbgLChq
        1iP5wMLPaHl8e2yaznZ84eDMFf1jQiBg8Q==
X-Google-Smtp-Source: ABdhPJzPzhd4FNR1hSVy5wLWlSOuInH7MTPLDylxPcsS1QAraMnQ0ERAxb0twNrbOZvqi4yIdxiwHw==
X-Received: by 2002:a17:906:5386:: with SMTP id g6mr3937380ejo.137.1607640041392;
        Thu, 10 Dec 2020 14:40:41 -0800 (PST)
Received: from ?IPv6:2001:a61:25cc:8301:40d9:de28:875c:ad0d? ([2001:a61:25cc:8301:40d9:de28:875c:ad0d])
        by smtp.gmail.com with ESMTPSA id 35sm5899797ede.0.2020.12.10.14.40.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Dec 2020 14:40:40 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>,
        Christian Brauner <christian.brauner@ubuntu.com>,
        lkml <linux-kernel@vger.kernel.org>
Subject: Re: [patch] close_range.2: new page documenting close_range(2)
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        Stephen Kitt <steve@sk2.org>
References: <20201208215133.30575-1-steve@sk2.org>
 <CAKgNAki3jRYmTzCMXgBzXTz9LEmmAfRE5VuMOhnDbVmiJU=asg@mail.gmail.com>
 <9cd2dd3a-c87e-e019-00ad-72ace5469338@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <4542e216-3648-8dc4-0753-5d7379ee599b@gmail.com>
Date:   Thu, 10 Dec 2020 23:40:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <9cd2dd3a-c87e-e019-00ad-72ace5469338@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 12/9/20 10:47 AM, Alejandro Colomar (man-pages) wrote:

>>> +descriptors in
>>> +.B /proc/self/fd/
> 
> By reading proc.5, I think this should s/.B/.I/, right mtk?
> 
>>> +and calling
>>> +.BR close (2)
>>> +on each one.
>>> +.BR close_range ()
>>> +can take care of this without requiring
>>> +.B /proc
> 
> By reading proc.5, I think this should s/.B/.I/, right mtk?

Yes to both. Pathnames are formatted with .I.


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
