Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2F1DF2B7CA4
	for <lists+linux-man@lfdr.de>; Wed, 18 Nov 2020 12:29:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726297AbgKRL0M (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 18 Nov 2020 06:26:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725781AbgKRL0L (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 18 Nov 2020 06:26:11 -0500
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A121DC0613D4;
        Wed, 18 Nov 2020 03:26:11 -0800 (PST)
Received: by mail-wm1-x341.google.com with SMTP id a3so2364116wmb.5;
        Wed, 18 Nov 2020 03:26:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=xaKRTdgINLPmg7qBYh5qNn5IRVR2R2yxTbIKsvvUzcc=;
        b=rWH22AZ2rKV32ASMmvl9W/ipaYVhp/4/PWFP+pSz9jbxfVBasGgkNyxyccR/f5GU4K
         nmpWDPWf2k8y5yw8JNS53B3FAZTCAyU6n2Y0UjaxeXk0f6rpGU2FkSlMtJHuY5wi/K1J
         aLBBc8c+tNmaoF7Joef6jmDmbhKndl1+BSKqGf/eFTxtXP2nNnKfW7uMMa3mPUHFsaUh
         4wws8cWUENRo0LKz43NCGPjRPKLORMM12n2KFWdnCzTyVXjhl5bVg+WmzxEjcdJ5ln0Y
         uEpH9U1sMjoXNBAf6tzaPE1uw3XyM2bYM/pT8vNJZq6sfb6z7bsEktu96wYfDBRCHcnb
         UqkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=xaKRTdgINLPmg7qBYh5qNn5IRVR2R2yxTbIKsvvUzcc=;
        b=N1F1RTu0J4wNJHfNjXcG34GfDuGu6HmUtPKjh6Zt2xqO/lLpWCFNdkMosQOKS8aaXD
         mo8oqbNo1qOLegT2gM8KrZb0CcSIIs8gwIImnlZAEndEBD8+ZrxbOSUuZGSrOH2XlFn8
         ipICX/fpn9eBTq3Nu4SYij/k11g6nIX0iS/8+/0Jm9V+S141vOZAq/SXpZA/JXMFC+Oh
         duRyDG21vzB4MM08lSXvKsQQ8udtePnwOw1hp++Ol52NIQC0rlHo/tT91ggSr3C5m7Ym
         R+8Ocw6U/dNTp08WFY6xzmhGQMVHP4BHltmGV0XgBB9jGuX9q0OYliERPOY/gtw+xtyy
         9fPA==
X-Gm-Message-State: AOAM530Vqspv4ESAagZfybLEFhi4Odwfv4XXhsqArGcPdiNbLSrYC9Yp
        TA7ysB4DHRvbA+lrNXk+xgY=
X-Google-Smtp-Source: ABdhPJy0yOWornRkpmJ9mzE0ZunmsNiybyS6yx+QXyG1kdv00jMRerVN7G8jVvD34UH8e5bY8wL6hA==
X-Received: by 2002:a7b:c92a:: with SMTP id h10mr2205648wml.138.1605698770468;
        Wed, 18 Nov 2020 03:26:10 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id d128sm3451534wmc.7.2020.11.18.03.26.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Nov 2020 03:26:09 -0800 (PST)
Subject: Re: Ping(3): [PATCH v4] <sys/param.h>: Add nitems()
To:     Joseph Myers <joseph@codesourcery.com>
Cc:     fweimer@redhat.com, gcc@gcc.gnu.org, ville.voutilainen@gmail.com,
        linux-man@vger.kernel.org, rusty@rustcorp.com.au,
        linux-kernel@vger.kernel.org, libstdc++@gcc.gnu.org,
        libc-coord@lists.openwall.com, libc-alpha@sourceware.org,
        jwakely@redhat.com, enh@google.com
References: <20200928191237.32063-1-colomar.6.4.3@gmail.com>
 <e23782c8-2bee-a4dd-1bcc-d67cfd9f47d3@gmail.com>
 <alpine.DEB.2.22.394.2011172242582.28480@digraph.polyomino.org.uk>
 <8fb9c722-4190-6115-1d60-d94f8db7f749@gmail.com>
 <alpine.DEB.2.22.394.2011172308010.28480@digraph.polyomino.org.uk>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <01e7fc2d-d883-fec7-38cd-0a209dd549ba@gmail.com>
Date:   Wed, 18 Nov 2020 12:26:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.22.394.2011172308010.28480@digraph.polyomino.org.uk>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 11/18/20 12:11 AM, Joseph Myers wrote:
> On Tue, 17 Nov 2020, Alejandro Colomar via Libc-alpha wrote:
> 
>> Nice!
>> Please update me on any feedback you receive.
> 
> Apparently the author is planning new versions of those papers so WG14 
> discussion is waiting for those.
> 
>> So glibc will basically hold this patch
>> at least until the WG answers to that, right?
> 
> I think that whether C2x gets an array-size feature of some kind is 
> relevant to whether such a feature goes in glibc and what it looks like in 
> glibc, but the fact that it will be considered in WG14 doesn't rule out 
> glibc considering such a feature without waiting for WG14.
> 

Hi Joseph,

Yes, that's what I would expect, but it's been a long time since I sent
the patch, so that's why I asked.
Maybe glibc is busy now with other more urgent things, I don't know.

Thanks,

Alex
