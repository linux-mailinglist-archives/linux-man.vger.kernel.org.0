Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EE5AD2FC151
	for <lists+linux-man@lfdr.de>; Tue, 19 Jan 2021 21:41:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726374AbhASUlL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Jan 2021 15:41:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729302AbhASUku (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Jan 2021 15:40:50 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B97E8C061573
        for <linux-man@vger.kernel.org>; Tue, 19 Jan 2021 12:40:09 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id 190so990603wmz.0
        for <linux-man@vger.kernel.org>; Tue, 19 Jan 2021 12:40:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=dAWTqrKW0PJTJC4pkwZ4S1P4rEuHidtWL2fCUK2HX8A=;
        b=K+RdctNBd3R014bk6IitavatEP6VUb/tzvzEu9/6Mz041QTiZxvoAi3ob2zqm+R7fe
         0oKqzj9xMFjxR6sUoqSrPNU9pitJDyegJStVQxmZeQBFKT+z1usChA36Rq3EBSEp2ywU
         AtNH81b4RTvh/Yvj6U8WHknVDDgiMDYQNkrGuBJWEQcqOIY6I/kUgXNFZJL8v17znRs5
         aYGzCugWinGkEa1A1Yh1YQQOmCclXt1afZdrk7HeraJ2cOBU1CFOpNwqgk9uYgeFLoOn
         CJRzvBFUjwewdO5h0uwPySQYF/TsFZUcq0trnAgvSDzh/D3HOvgSpgZEJCBd1rdEAzRc
         14uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=dAWTqrKW0PJTJC4pkwZ4S1P4rEuHidtWL2fCUK2HX8A=;
        b=aRFiTtwVYG0Ufi9KAdLeWeUVKN5Jx2Vqt9IJL//N9r78Sl3WdlRIF7m8DUh0GquC3W
         tgqASaSD0tTCvJVFJsR7XpNkOIKrhe5XhKmQBo9XPLXRUCBhWIQx3F+JjzW9Of8tPnML
         WeBFFr3dj6pT1AUTa8MRUBqX6lWD/sDZYd130YfgoItcRUHccAbrUOf1v8Wz96UVt6Dv
         TkKF0pEZkOa2ABzCpbn7F+2+k6pMKDyGQi07Y2Z5agA00+mZO5Ro0HMShajuFKLB74wd
         0dodLTcPbwcZYZ8aiqIvLRP9dUTpP6iJ7QhWWM/k/nadd/UaNmWr8Vr+F3CekoEETh09
         uDGg==
X-Gm-Message-State: AOAM5330QPHyBEaRAn71wrF+sTHupavOjT6DlVthGMKcyQSnUImMNaRS
        U+H1k1OfiIRHzaTMNW+Clk4=
X-Google-Smtp-Source: ABdhPJy+HuLGRBDudFbPv8bKO6o98aBqn/GXrOZXfPPqdeh7t5cxbaGY60M/ScsutnfDHJvYROIthg==
X-Received: by 2002:a1c:2783:: with SMTP id n125mr1238236wmn.74.1611088808555;
        Tue, 19 Jan 2021 12:40:08 -0800 (PST)
Received: from [192.168.0.160] ([170.253.49.0])
        by smtp.gmail.com with ESMTPSA id v1sm6045730wmj.31.2021.01.19.12.40.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jan 2021 12:40:07 -0800 (PST)
Subject: Re: [Bug 196513] environ.7: Document the valid values of pathnames
 for SHELL, PAGER and EDITOR/VISUAL
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     bugzilla-daemon@bugzilla.kernel.org,
        =?UTF-8?Q?Bastien_Roucari=c3=a8s?= <roucaries.bastien@gmail.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        "Dr. Tobias Quathamer" <toddy@debian.org>
References: <fcda6ff1-1eeb-ac37-81f4-cc2caa4c12b9@gmail.com>
Message-ID: <08b0f2e6-6baa-0374-259d-a2bd358b8401@gmail.com>
Date:   Tue, 19 Jan 2021 21:40:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <fcda6ff1-1eeb-ac37-81f4-cc2caa4c12b9@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[CC += Bastien]

On 1/19/21 9:36 PM, Alejandro Colomar (man-pages) wrote:
> Hello Vincent,
> 
> I applied your patch (3 years later...).
> I added a Signed-off-by field on your behalf,
> and will forward it to Michael now.
> 
> Thanks for the report and the patch,
> 
> Alex
> 

Oops sorry,
the patch is from Bastien now that I see.
I found it just in time!

Regards,

Alex
