Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DD5872E7C44
	for <lists+linux-man@lfdr.de>; Wed, 30 Dec 2020 21:31:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726214AbgL3Uax (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Dec 2020 15:30:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726197AbgL3Uax (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Dec 2020 15:30:53 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49BF1C061573
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 12:30:13 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id g25so3045745wmh.1
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 12:30:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=W585jLCVo81nfrBmIiZ4CvDFGZVsT3j4WpjqLkoCjDc=;
        b=JznX6U3dkjygSOeTEZesH7WIXm2mgxwPxgUlD3VPe9Hi8oGvQvsxJMCKTSNZa7AxZO
         fPJ72r0tBBgCppT5Ap8Fww7kHCjSHyhpxjn+n9h64+5cbSPwBWnC/Gzs4mjmfNKSpRD2
         W69zvR79PyQL5gCShFgvQc3xD2TJe0FawTBGngtV1l807zaOMOTQE7srDy6y/3I+lcPn
         cv0ofeu49lfGVtfkzNXvPda9w5ptYFXYHD10y5ct4age2JsLn5HfoAz5KS6u4T+6vXD1
         RjZSldfMPtg7jrXsymX1ED949hHzUioMWcrZnE+gm9+1zxV1zxMbNMaKuV6DGhamKG6q
         mP+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=W585jLCVo81nfrBmIiZ4CvDFGZVsT3j4WpjqLkoCjDc=;
        b=MZ61U19Q7GvA3pUuKvu+qjsFdBkQogQvpXZz9x7w0sxba0BLkWnsA0eSxxN9PN3caA
         8JSia7J0FVlHa6Y9Sdq8Y9eZcoXPfp6O80yvbEkClRr9f0M+1ImnVumG65fElbcAASrr
         Fc4tnzeh/GXD/PSO1THfEzFBD5AMK6Bo41+XkJv1JHIIen1HPu3SWgqYIyKqDdgxyQIf
         meO0BWTNN2WN2Uk1IP8kVdY0y5l2otptnkeQVItvKQJfF/1bRfKqs01UjRIf9mCVnkDl
         ETl0sscX4DCmS8PXijOJLT+i+3kYvciFz6imXI3gzREEA+/+okkPyqL4lAaLJwehBa+L
         1zhg==
X-Gm-Message-State: AOAM533migTE/q4hE+jh5T1DCxtwvEucDEavMJJwwn+vJfuk7DNHExn9
        PWzXzJnyIn4x+F6r9GYJyPkSnV10cFs=
X-Google-Smtp-Source: ABdhPJxoguM6C9yB+vlzUJgbUdD6gEoXBy8C5cVqXr1t0S88mVnvlQ5Tk+kbtbI7OuEzN9SR9YvxQA==
X-Received: by 2002:a7b:c4c7:: with SMTP id g7mr9192109wmk.29.1609360211825;
        Wed, 30 Dec 2020 12:30:11 -0800 (PST)
Received: from [192.168.0.160] ([170.253.49.0])
        by smtp.gmail.com with ESMTPSA id s1sm67495434wrv.97.2020.12.30.12.30.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Dec 2020 12:30:11 -0800 (PST)
Subject: Re: get_phys_pages(), get_avphys_pages() no longer read /proc/meminfo
To:     Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org
References: <20201230200611.uvjmzovtnme5ssho@jwilk.net>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        libc-alpha@sourceware.org
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <31852180-fdec-471b-3db0-66c9b236e3d1@gmail.com>
Date:   Wed, 30 Dec 2020 21:30:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20201230200611.uvjmzovtnme5ssho@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jakub,

I updated the page.

Thanks,

Alex

On 12/30/20 9:06 PM, Jakub Wilk wrote:
> The get_phys_pages.3 man page reads:
> 
>> These functions obtain the required information by scanning the
>> MemTotal and MemFree fields of /proc/meminfo.
> 
> This is no longer the case. Since glibc 2.23, they use sysinfo(2) instead:
> 
> https://sourceware.org/git/?p=glibc.git;a=commitdiff;h=0ce657c576bf1b24
> 
