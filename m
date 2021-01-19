Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F06122FB9AE
	for <lists+linux-man@lfdr.de>; Tue, 19 Jan 2021 15:37:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731253AbhASOhM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Jan 2021 09:37:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387487AbhASJ3n (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Jan 2021 04:29:43 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5FC61C061575
        for <linux-man@vger.kernel.org>; Tue, 19 Jan 2021 01:28:52 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id c124so15812375wma.5
        for <linux-man@vger.kernel.org>; Tue, 19 Jan 2021 01:28:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=GH7P1ZFlVQNah6Rvydktr7X2jxlYCFhtT98DhVlgA2I=;
        b=EOe9NBl1A65mb+GqP4CXYdUOQVsLyQC4pVt5pADw5b3tE01mEAx4rhD5iml+oxIeEy
         ieje/LJ23w+KM1P82nhOGNLGMXOuoFJkl2NkG7eSOhVPgXg0ximJky0wHhka5jy9IEGk
         79pD2bC+vqqwN6szgQgwsh5QERYUUpobx93/vkIUbl727meJuRnhwOE5Af81er/JJfKS
         0fdf2kpJgwTCsjB4fuME3dcts0dEP0pKaOIcT+JPjduASG1/SiZEc54JlLU1aed+edrs
         j+ocC5dlc6YTA9xwvMdAowxnZEkiauuI7ANkElf+bnhsLOBdQc0T5+TknUoVguQEKj1S
         rwSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=GH7P1ZFlVQNah6Rvydktr7X2jxlYCFhtT98DhVlgA2I=;
        b=EEKDuEmAeIU1slw/JKuamXfQLUQDwC79w7dBhScAPAMY1FT18JvPnTpzRYQsKf+DzL
         JK/zEnNZjxMGPdm603QtVOrFuq8H4nH4oisy/DhElgrD/x3UjPLXJofbb45DohpmOQWv
         K2p6+ND9VIGBL/FihQVtHRWSjULUA8XzB/6oSqX2uOKDxWKT+8xZ9ae28ngAffhrcKbc
         13FQ8q+U2cECKuvIXgiM0BUQorZ/hLbk04miXs3bqpMfGsJtizG25zczdBROT75FHz8V
         gzIuBLierOPxwZBGJkLLRF5IY8ZCDSLjJPgenYvIXzOfGvZ8RwVBeLp9x6i29GSUjLbA
         JoKw==
X-Gm-Message-State: AOAM531gSCziro5/pLf07BYkGW47C9/wf8hI3vRJXviPs+QvbgSIiokX
        aCEBp/H2aJmVJF6kdZX5+k8vl7ynoxU=
X-Google-Smtp-Source: ABdhPJzQ/GA6fKTf5BpLP8bSIZxgJ5Ni0augSRkvr/MLFIaHcet1JsqQhKD2+5YykZswyo+6G+ZHww==
X-Received: by 2002:a1c:a145:: with SMTP id k66mr3093042wme.11.1611048530378;
        Tue, 19 Jan 2021 01:28:50 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id y11sm3563739wmi.0.2021.01.19.01.28.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jan 2021 01:28:49 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Ping: [PATCH] netlink.7, tcp.7: tfix:
 s/acknowledgment/acknowledgement
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <20210107165518.36629-1-alx.manpages@gmail.com>
 <ffe209ee-809c-10ea-c077-12669ff0f5ab@gmail.com>
 <59156288-13c4-ca10-ade3-5b83cd7c0902@gmail.com>
 <39255c4b-3d54-cae5-14ec-6122cfef8072@gmail.com>
 <6280e52d-17bd-ea1e-49ac-a23f9e86f51c@gmail.com>
 <ac8e9ea5-a7ad-d293-7a85-d8403159203d@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <92879716-eb6c-8567-553e-ab0cf7ee9994@gmail.com>
Date:   Tue, 19 Jan 2021 10:28:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <ac8e9ea5-a7ad-d293-7a85-d8403159203d@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/18/21 4:33 PM, Alejandro Colomar (man-pages) wrote:
> Hi Michael,
> 
> Ping!
> 
> And now I noticed, while searching for this email:
> Debian uses "acknowledgement" too :p
> 
> [
> From: "Debian Bug Tracking System" <owner@bugs.debian.org>
> To: Alejandro Colomar <alx.manpages@gmail.com>
> Subject: Bug#978945: Acknowledgement (thunderbird: Message subwindow tilts
>  (resizes in a loop))
> ]
Hi Alex,

Thanks for the ping. I applied the patch, and added a note to
man-pages(7).

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
