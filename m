Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D397B293A2D
	for <lists+linux-man@lfdr.de>; Tue, 20 Oct 2020 13:42:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2393579AbgJTLmK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Oct 2020 07:42:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2393578AbgJTLmJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Oct 2020 07:42:09 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3967C061755
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 04:42:08 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id f21so1443554wml.3
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 04:42:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=E7iWm6BqcSx5UxRdVDUTzAm8l1B+Y5DG9vT2o+XCXCk=;
        b=Qo5gtf+F5GWXqskFVSmKrt7yrAz13K/AGYpM9VcFSt6rlGutynu1/oBfmyOb0vckz9
         a//g+B7u1y64I15/5xjRiYJhtKBVfA+e6ZhjJBUjbxTmxipcMbkh0gwNcNlPNLh9va4a
         NY1C9X/p1t6D+QPHgz95i40jpwn9ZiRVqP3mB6Us+cZXF/Z5eg7jYPVbIlR76Fqpjtyu
         t4MVyKLurKR2+BB/jB9sxNhoN8qlIHwKsKK2VCFjJjlPdotDN4g4FeFFrEoyndpAnQIL
         pf9stGXqJU2+znsahGwIRgAiN4khkOIIaMLnVr0bdql8N14gvn6BZdp3ztMrhEWd7eD1
         gsgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=E7iWm6BqcSx5UxRdVDUTzAm8l1B+Y5DG9vT2o+XCXCk=;
        b=tB8o+6Ppn2Iya+iqahljCoYjGv8iVxnV0x35TqnRnaP/iWjEueHV5e0hxRMPDELdyv
         +Xi+VflFMMfQBdnsFcSsf6oOl6q79XeMYo3pOWCsG9zQvJ2o5j93nuOdisS0tX/bYx6h
         7+z8D6f/+RuCI0fxH8txvwSqyyXyq1opZScVXbKXKS86PDmMdeNdnohAkF4MzYaQowmp
         7SFbK1gfV3d8Aj7DZjYEBADJ+/3jk/CVDzhHlriZbxTGDkuzK2jjDRNh9Gr36FVENyKf
         1+MIV5gtL4Q2TEzlph+JgNELLMisRB0HEMDdMnz1g9mKmEvsUmXgvhYAUdkOqGmKDsE+
         EDQg==
X-Gm-Message-State: AOAM533WKxxUYJwlk+Od/kQDkfAzJUdii/ElFszLyqMxfjivHVbmp+xf
        PTVmZQDylwMbOURaG886m1U=
X-Google-Smtp-Source: ABdhPJwf+1GwcfS/ATCQJPg2P93bYTjGLUQ8PTkwPuSSXy1fsJ/tq91JicBiJyOvdkJWgLMA3a3dMQ==
X-Received: by 2002:a1c:6289:: with SMTP id w131mr1650857wmb.109.1603194126717;
        Tue, 20 Oct 2020 04:42:06 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id z6sm2246205wmi.28.2020.10.20.04.42.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2020 04:42:06 -0700 (PDT)
Subject: Re: queue.3 overhaul
To:     Hans Petter Selasky <hps@selasky.org>, mtk.manpages@gmail.com
Cc:     linux-man <linux-man@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
References: <33af3ca2-d6ea-5f75-6ad2-e2f43eefe4fa@gmail.com>
 <CAKgNAkhDZK9YyvDNr+s=bT9Y6BGCtC7mrGuYa+bdrzQnhGSjhw@mail.gmail.com>
 <907cf2f7-70de-42c3-a738-d7e6a14327de@gmail.com>
 <e8cc9a94-d017-7f2b-cf5c-827cdcd6d2a0@selasky.org>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <213d9db0-ebf5-ddcc-c796-2478143db9c9@gmail.com>
Date:   Tue, 20 Oct 2020 13:42:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <e8cc9a94-d017-7f2b-cf5c-827cdcd6d2a0@selasky.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 2020-10-20 13:22, Hans Petter Selasky wrote:
> Hi,
> 
> You may want to import new queue macros from FreeBSD, especially for C++ 
> use.
> 
> https://svnweb.freebsd.org/base/head/sys/sys/queue.h
> 
> https://svnweb.freebsd.org/base?view=revision&revision=284915
> 
> --HPS


Hi Hans,

Thanks for the suggestion.

I'll add the documentation to the manual pages commented out
(as with other queue.h macros that aren't present on glibc),
and if glibc adds them in the future,
it can then be uncommented.

Thanks,

Alex
