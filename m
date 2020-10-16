Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 95B62290965
	for <lists+linux-man@lfdr.de>; Fri, 16 Oct 2020 18:11:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2410653AbgJPQL0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 16 Oct 2020 12:11:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2407134AbgJPQL0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 16 Oct 2020 12:11:26 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C936C061755
        for <linux-man@vger.kernel.org>; Fri, 16 Oct 2020 09:11:26 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id d3so3513895wma.4
        for <linux-man@vger.kernel.org>; Fri, 16 Oct 2020 09:11:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Mwbj82GUrEuPiMgpBOalBVWrHlx52d5EPNji0OvTFQc=;
        b=d1MmffTBdb2UiKDnUt0te/jYr7Nh3wELZghqa5rvc0hPz4zHa9O8whgOfPZb1OXdlz
         CVarvhdK8N/AQmjc/6k1RDlIh2WeIdawEZ/FbJXJJmZy8YKo3hxarooPFda9vM43dD7X
         bpEUoufLTKmGXgofrpsaQ0vYmCqGSj4JgNYpqjScPICeT3cIGDzDTkMyM//lp2zandS+
         TSl2hpa3vFq/peb9yk3+IHVqJ7PsEdd+Pw9Hufe886RAzOXOjAsN7IjXZRUk/s+BAQxk
         xkngaL7oBZBXUf4B4M1SxAYChZPqNF/WdYMyQh9QiA/2DdMEG67aauaneAgKemCwnr3L
         u8tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Mwbj82GUrEuPiMgpBOalBVWrHlx52d5EPNji0OvTFQc=;
        b=ORXakJv3Jm+HXGrhvyHywQKYbP6nc3OcK/tTcw3CZMSrdnFuptAQQZX1iB9ynBwiv0
         JbJpRq+bhbqLr2kFN2E7+8StK/KLxwH/v/QJYGmucocn9K/7dQ6VC1bqhWKr7txz4zFa
         UfBwH7LuR6kjzhORhwsfUmas3UBQpGablQ88cvVkqYNG0A/HMCt3HK0BGsORNGDym3yB
         ylgNdIHsUP0acMqipWshOLFDUURY/TQyj6T63wv2oHKuNuk4xcucHjxCLZw67hXMe4Mw
         nFBaCCk6FLqkDnjPgEDTDSawllk/7X7nDQGm15TLA8XHlCwoO5RYf/HpKhizvKnlBrHS
         PYHA==
X-Gm-Message-State: AOAM530xj4shf6OXrST2P90zLbh/Vxh+u+WsZ7wWjkMtodYI4XNxS5o9
        WdnHhjA0PWswI2887rtAry8=
X-Google-Smtp-Source: ABdhPJzdr/mn+zxVC+z1OnvlCMw/Dz5q/7AioSsAMQldXGZfSa5mV+HCdN06OR9U12wCeW/PxntUhg==
X-Received: by 2002:a1c:7d48:: with SMTP id y69mr4465370wmc.82.1602864685063;
        Fri, 16 Oct 2020 09:11:25 -0700 (PDT)
Received: from [192.168.1.10] (static-176-175-73-29.ftth.abo.bbox.fr. [176.175.73.29])
        by smtp.gmail.com with ESMTPSA id t13sm3357179wmj.15.2020.10.16.09.11.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Oct 2020 09:11:24 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>,
        Matthew Garrett <mjg59@google.com>,
        Ard Biesheuvel <ardb@kernel.org>,
        David Howells <dhowells@redhat.com>
Subject: Re: [PATCH 1/1] kernel_lockdown.7: new file
To:     Heinrich Schuchardt <xypron.glpk@gmx.de>
References: <7b9485d9-e286-a61e-63b6-15459dfc1f17@gmail.com>
 <20201016112834.12530-1-xypron.glpk@gmx.de>
 <b8f4fef7-514c-0ac0-e6b7-a3c31763b052@gmx.de>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <1df01114-402c-43dd-8f69-ce35594c15ff@gmail.com>
Date:   Fri, 16 Oct 2020 18:11:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <b8f4fef7-514c-0ac0-e6b7-a3c31763b052@gmx.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

> We should explain in this context:
> 
> * string "lockdown" in CONFIG_LSM
> * CONFIG_SECURITY_LOCKDOWN_LSM
> * CONFIG_SECURITY_LOCKDOWN_LSM_EARLY
> * CONFIG_LOCK_DOWN_KERNEL_FORCE_NONE
> * CONFIG_LOCK_DOWN_KERNEL_FORCE_INTEGRITY
> * CONFIG_LOCK_DOWN_KERNEL_FORCE_CONFIDENTIALITY
> 
> The relationship between CONFIG_LSM and CONFIG_SECURITY_LOCKDOWN_LSM is
> not obvious in the Kconfig menu as CONFIG_LSM does not mention which
> modules are available and CONFIG_SECURITY_LOCKDOWN_LSM does not mention
> that it depends on CONFIG_LSM.

I'm kind of hoping that you might make a chance to work
on this. What are the chances?

Thanks,

Michaek

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
