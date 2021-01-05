Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 057A92EABE0
	for <lists+linux-man@lfdr.de>; Tue,  5 Jan 2021 14:28:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728671AbhAEN0F (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 5 Jan 2021 08:26:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46822 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727146AbhAEN0E (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 5 Jan 2021 08:26:04 -0500
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2669DC061574
        for <linux-man@vger.kernel.org>; Tue,  5 Jan 2021 05:25:24 -0800 (PST)
Received: by mail-ej1-x62a.google.com with SMTP id qw4so41139348ejb.12
        for <linux-man@vger.kernel.org>; Tue, 05 Jan 2021 05:25:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=15xZBie4vt1PVSC+nYSD0mZyNaLkzaa8+BITpZZThIs=;
        b=unfdzX4cexegzy8X8d5rN0cf5zi87gmGuUBg1emjC8ftdFg+Ig3yLCNjGGGf76Mbwd
         FuAMA2eqFiUuGMAjRSXvb37/2ykZb3vuCRJm/I8qQGpa6WKGCycCQwkvRSz01ahFqkzf
         N6NrNkx0NfcXJsBK+WgEJT+wvFgidiG41BJe/V8uabeqfAkvOzm4FQYWRwX6vhgRgc8z
         NiYXVkrJIfY+2aah17XuQsIpwy4yjN2F4dHz19ebM/WtaId22iSXHW8egiU5qcZToUVL
         ZjRlc5AW0byupA4/43Wt9jpD42j7uIkQ8kMMBp/bgQc7K6SEIxLI9PpsTk1oP3gJ4otv
         WF3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=15xZBie4vt1PVSC+nYSD0mZyNaLkzaa8+BITpZZThIs=;
        b=iwDXWUcGn//OEQUwqVzGZj+nAcM0lAB+suzCGOPo3J6Bp3ruLTnABiy2mT8dWGs+Jd
         i80y0sxPOc/QLQLQj/HLPx4ZA9JemCVClNHVtmwJQXLHrBBvHVmTVjo+zEwkvtArHxsU
         FV0Vny3GdN50Mz292lzIEFAHxYm8qxj99QQlq5EyNzdl1r6OYaeIOmQEI99b7h1CqcoK
         ZrQJWXtQvX1tWJxcBk/XAtS5/fsybo/c0Yv3ou/wMK2vDo3KAvgztfNpdxm0aEWgVTOC
         nxpjTYkxdfqSWBuLGczi36JXbS1wViPTqosKChyvpmf1Bwhy2+P6PIUimnONg4WfrnOX
         GoRg==
X-Gm-Message-State: AOAM53323wtabS21POPWMpFoYN8ZMUlpbbDJVdtWzLc9U33uYJ0C59El
        oud5Ydz6UG0XSWdtankAV85UNdOn7Nk=
X-Google-Smtp-Source: ABdhPJyON61nQwmrHDWWRH19MfZvoV2558Zuifm2D0QVmBnjdZs3UD2karQ5yB5Sf3r/FN0xwNooeA==
X-Received: by 2002:a17:906:eb5b:: with SMTP id mc27mr69776945ejb.163.1609853122663;
        Tue, 05 Jan 2021 05:25:22 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id y17sm24723841ejj.84.2021.01.05.05.25.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jan 2021 05:25:21 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] circleq.3, list.3, slist.3, stailq.3, tailq.3: Improve
 readability, especially in SYNOPSIS
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <20210104224515.140403-1-alx.manpages@gmail.com>
 <f38a4498-c318-cbc7-7e19-acec909a90e0@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <21860ed2-c519-aff1-5d1d-ee2e76ead61a@gmail.com>
Date:   Tue, 5 Jan 2021 14:25:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <f38a4498-c318-cbc7-7e19-acec909a90e0@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/5/21 12:05 AM, Alejandro Colomar (man-pages) wrote:
> BTW, I didn't reorder the descriptions to match the groups.
> I wasn't sure about what to do,
> so I prefered to leave them for now.

I think it would be kind to the reader if the descriptions
roughly matched (does not need to be exact) the ordering in 
the SYNOPSIS.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
