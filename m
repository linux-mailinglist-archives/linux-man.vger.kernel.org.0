Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8168F2680DA
	for <lists+linux-man@lfdr.de>; Sun, 13 Sep 2020 20:44:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726019AbgIMSoD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 13 Sep 2020 14:44:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53444 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725976AbgIMSn4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 13 Sep 2020 14:43:56 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 611EFC06174A
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 11:43:56 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id t10so16371794wrv.1
        for <linux-man@vger.kernel.org>; Sun, 13 Sep 2020 11:43:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:cc:references:subject:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=jz7cfO/0OJZZc94/n1iMLRGx2FiCL4lYYEb+Px9J8ko=;
        b=ZeuC3mM/csYbPer/B6Ed1ifb85Sd2YhWrjv5CRfz5024wnAzqpji1nL8w39FLmyab9
         A2iL1tTbjGFFalEus2HfEFCUZTDP2gWWoXwcNmYLEwglVeQCUIN17l45HpqNnLbwnviT
         arTrSey4yRTGZt2UQseJ1vqNbDxKf5cXWd8vpSzvtE3thXvjXWJDWdBC/y3H2sIEhjQ1
         M+sBOlE4fuXCpZgpKmGKeRJMi5cRC3b4egx0wCvFQ7iLMBUGvOjyy0DWEmAHsZuqCGjx
         6rFoRSMUVTRVMY8yWHCuRjoH9L1YwQg6fM9p4rbL1e6GOSeS1yoVbC8P/14zh4Bv+hNX
         e+Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:references:subject:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=jz7cfO/0OJZZc94/n1iMLRGx2FiCL4lYYEb+Px9J8ko=;
        b=bbZshErNiRdH/OMVJpnwxQWxtp6frNVqKBCqZat9uJnbCbAq6psR9COy9W0Y1+OxYh
         IDeq/1woMw5Re9pUg+5TnbAPJv7yyAYbe7du4RvxSrA4Slc+VkMm87nYXiNqGd7Nifca
         T1Jg1VMJUXpMF4NFr4FgMkEoozmy9sLUJEZQMfTLxng2TkMcUR/PsHIefLV27KZapwkf
         IGxO7qfIQBrD2IZJoNQcfWBfo9rnDHbtQo8NmZTWQFSLtGrxqDuetC8+i2tu/GViRPQT
         6u+nt4IPZqCek/AqOYaaI6hLFh1jXLLxN53AIUadWVMkqi3084hWla60lj9Ve37qmLKP
         pFQw==
X-Gm-Message-State: AOAM533hsrWijacGdcsz7jJ3XmQaCNVFAoYH0YqKYD7qgD/ytx6CDeP+
        fB2/PylY7XSPFK4xZrhXTQTwUwGjM4unVg==
X-Google-Smtp-Source: ABdhPJwXwTwIA5m0pg7VDL0lvQIFKi3qaxCDUKKfWuQWBgO8C2K3TR2sOFKZdeVi4whECeqcPdkMQw==
X-Received: by 2002:a5d:5583:: with SMTP id i3mr11736084wrv.119.1600022631728;
        Sun, 13 Sep 2020 11:43:51 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id x10sm16211587wmi.37.2020.09.13.11.43.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Sep 2020 11:43:51 -0700 (PDT)
To:     kbukin@gmail.com
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com,
        "Dmitry V. Levin" <ldv@altlinux.org>
References: <20200913182949.29815-1-kbukin@gmail.com>
Subject: Re: [PATCH] stat.2: fixed inode printing in example program
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <68e2c613-3ccf-a62d-f2ae-3e33e9450a3a@gmail.com>
Date:   Sun, 13 Sep 2020 20:43:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200913182949.29815-1-kbukin@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

> Such erroneous reporting happens for inode values greater than maximum
> value which can be stored in signed long. Casting does not seem to be
> necessary here. Printing inode as unsigned long long fixes the issue.

The cast is necessary.

Relevant standard: C18 §6.5.2.2 6

Details: 'ino_t' may (and will likely) be defined as 'unsigned long'.
If you try to print an 'unsigned long' with "%llu" you will:
- have Undefined Behavior (and a warning) if 'sizeof(long) < sizeof(long
long)'.
- have a warning if 'sizeof(long) == sizeof(long long)'.

So if you want to use 'unsigned long long', you'll need to cast.

Cheers,

Alex
