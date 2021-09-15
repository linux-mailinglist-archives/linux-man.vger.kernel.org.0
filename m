Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0621C40CDDF
	for <lists+linux-man@lfdr.de>; Wed, 15 Sep 2021 22:20:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231592AbhIOUWF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Sep 2021 16:22:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231490AbhIOUWE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Sep 2021 16:22:04 -0400
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28A1DC061574
        for <linux-man@vger.kernel.org>; Wed, 15 Sep 2021 13:20:45 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id u19-20020a7bc053000000b002f8d045b2caso2939346wmc.1
        for <linux-man@vger.kernel.org>; Wed, 15 Sep 2021 13:20:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=mYxHxzq49k60FcoMBPx4SDCbsWvXRmXQJ5dOmMDntDA=;
        b=UwINliYLRHNTLm6hKgLAS/O2YX2FQqyXcdqMjmh5dKaTONtWLKTUW1cFuIbOk5jxD3
         517rzOgyDH787wvGFd/Eo997xQ9JB9K79yd3R1aaCxh3zVGFfLgkIMqTnxKEpxv3grl4
         6Xzq/iJhgK4OrbnZck9k81lXzLMH1Lo8QplgjINrmOEUTg5elFo1SX/sRZU0H8Jd2230
         r8shL8in8kb1b4CQ80yI4pSYw1eaz9hjLwRgexJ3vN0zfU2eKEKqtxTwkvJWx+bE5AkN
         514eeMmkl76/I3qY7qx3+TQoWJhdo3gp9QNHmYFZkSlocswLSZe+vQSC8HiRIPKbL8h5
         mPyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=mYxHxzq49k60FcoMBPx4SDCbsWvXRmXQJ5dOmMDntDA=;
        b=GvhoOSuE/CGFWy84ky8gKsxCZwWM748ve/wVy1+cTAxCRXK+3si/su896kQCSj9PKv
         UE+tlW/2hUXTudNakJ8o2wEs17q3jowG5BRwjD8XzNjN8QvJh5oioTL364U8TrFUODCp
         e2XrvD45lVgcDzN07GNLwMGjvoXaUX0KXuMLzTFjh9LBIGTCmHC22KGhXoBBs2TBS+Sc
         TpkFeO6DE7WpfoR2YO55PBqkd9urUJWW909yhTSvC37ET2WGxJOkHXXY82pyjt0zaGxU
         62YFZbLiod2fKrlNdEruVFgtl7/JrW2yoQph2rkaYvedg1XS4//VkS05wMPnBSBL5zfw
         nPwQ==
X-Gm-Message-State: AOAM532F4iRWQE9myJxyIlOqQmRDh2f5fgyqTGBEpcjCt3n3ide25QiG
        D5RLoA8qmR5suj7mBOPGqV4=
X-Google-Smtp-Source: ABdhPJxWSeRKc8WoxTawA3n+LmSngndLm/yTCdgPMaQc5l/8CqxlQtVE5ac5In/ZRdR816YGCIhBtw==
X-Received: by 2002:a7b:c4d5:: with SMTP id g21mr1440905wmk.47.1631737243817;
        Wed, 15 Sep 2021 13:20:43 -0700 (PDT)
Received: from [10.8.0.26] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id o26sm5177671wmc.17.2021.09.15.13.20.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Sep 2021 13:20:43 -0700 (PDT)
Subject: Re: [PATCH 00/45] Add LIBRARY section (based on FreeBSD manual pages)
To:     Eugene Syromyatnikov <evgsyr@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        lnx-man <linux-man@vger.kernel.org>,
        Stefan Puiu <stefan.puiu@gmail.com>
References: <20210911160117.552617-1-alx.manpages@gmail.com>
 <CACKs7VA=y2t3iGjKyzp-p1tt1hW3YsD6LMCqn0rotttOvk4pfw@mail.gmail.com>
 <CACGkJdt0Yg2i-R3dkuANSqKoDu0oCk7bz43tAP4dojTHeCL6Gg@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <974646ca-5122-36ad-2b73-2abe6629fea8@gmail.com>
Date:   Wed, 15 Sep 2021 22:20:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CACGkJdt0Yg2i-R3dkuANSqKoDu0oCk7bz43tAP4dojTHeCL6Gg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi, Eugene!

On 9/14/21 10:30 AM, Eugene Syromyatnikov wrote:
> I think, the split is codified in the standards[1][2][3][4][5] (so,
> -lm/-lrt are expected to be supported by the compiler, per my
> understanding, and providing the necessary -l* option will always
> work, because it's codified in C standard, contrary to not providing
> one) and the fact that glibc provides libm/librt symbols in -lc is
> more akin to a bit of convenience (for application or glibc
> developers, not sure which ones), and not something one should rely
> upon.
> 

Thanks for the references!

With those, I'll do a second round of changes (after all of the man[23] 
pages are changed to use LIBRARY, which is the first round), checking 
that the info in LIBRARY is accurate, and possibly documenting also the 
standard if we were documenting a glibc extension.  Now I'll assume the 
man pages are correct, and only move around the info.


Cheers,

Alex


> [1] https://refspecs.linuxbase.org/LSB_3.0.0/LSB-PDA/LSB-PDA/libc.html
> [2] https://refspecs.linuxbase.org/LSB_3.0.0/LSB-PDA/LSB-PDA/libm.html
> [3] https://refspecs.linuxbase.org/LSB_3.0.0/LSB-PDA/LSB-PDA/libpthread.html
> [4] https://refspecs.linuxbase.org/LSB_3.0.0/LSB-PDA/LSB-PDA/libdl.html
> [5] https://refspecs.linuxbase.org/LSB_3.0.0/LSB-PDA/LSB-PDA/librt.html
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
