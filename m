Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2A795315721
	for <lists+linux-man@lfdr.de>; Tue,  9 Feb 2021 20:49:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233582AbhBITrC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 9 Feb 2021 14:47:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233562AbhBITmY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 9 Feb 2021 14:42:24 -0500
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E2CBC061A29
        for <linux-man@vger.kernel.org>; Tue,  9 Feb 2021 11:29:50 -0800 (PST)
Received: by mail-ed1-x52a.google.com with SMTP id g10so25420902eds.2
        for <linux-man@vger.kernel.org>; Tue, 09 Feb 2021 11:29:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=RqqxZY5pxXsWcNt+rmvcBdNqizpun2RZKtqolF/M+mA=;
        b=ZhkvMqLEEClNZU3k0LmuX610aTjuDvTu37Z+jnmH1EbbQEMZfyrRnzc7Aza1xZHaT5
         K0OhI1BekfCyJBkZEapr/LcRNXOMU3Q8r8a6ey/qO6YYIF6k/U9dqfSCNYlJf373UmSC
         2Yr5afbzUUoMDTwBEROeYHRFnxaAHnW4kvIcbLBIX+sMk4G/LvMxEHGSMVbsUYYQuhH2
         Od0VacuNQo6oiyJWACo9wbcLqsV+C6aJUT69kFM627JQwpJq8uvzwOxU7Z86EdLRvjvw
         WbnfvF3cNrj1VWbNJfUts4s1P0gsfEnTMI3wlcrvGeryidvPxllaoZF0Xh5j9n/KodvL
         s9bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=RqqxZY5pxXsWcNt+rmvcBdNqizpun2RZKtqolF/M+mA=;
        b=FiH9rkFjJqMFsure2GwZECoeE/eL2KWSKkljGYVR0VAlUdZZ9wHMV/qf/4NCeVrWe9
         kZD0XV4zjGC6X2YCB8NF1p8Y0jEno+NHgcc9TSoTlGiKTddx9v1PJL5Nxd7/nnXm7Axa
         TACJBalfyYUED5dCBWxclKlB7xAZAOsAWnyepPeX9VXwcZWfrgODtTMQVqW0eG5ZwZKp
         suXcLUYDwAhBBc8JP6xgHt7nMy6Ev6sz2yb3wmUwAtWfoRvUojgZROnMt+oxk50af3gs
         xmf6mIPN//sqBOOusswI3eStg3Xc1HybAbFzF6+7Br2YfBmxJ0bBaoAjNfWDKQSqsok/
         jA3g==
X-Gm-Message-State: AOAM533xPiAjbkKIW/3GxxV6t8zrQ9fIrVKo4NPOYQ9T7gklFRmgtQ8x
        3Fe+C/J5EKFpR4zUuTNH6OPfofgLkbFKEg==
X-Google-Smtp-Source: ABdhPJyPq8vaLgwIJIieBDWR9w9aMTgB/lpGsN6PMcZ/QgpY4PjcC8vJPaLAEXLiMPVxseWRuZ/6yw==
X-Received: by 2002:a05:6402:5206:: with SMTP id s6mr24372172edd.92.1612898988977;
        Tue, 09 Feb 2021 11:29:48 -0800 (PST)
Received: from ?IPv6:2001:a61:24ca:4d01:a815:d0d9:f754:e0ef? ([2001:a61:24ca:4d01:a815:d0d9:f754:e0ef])
        by smtp.gmail.com with ESMTPSA id c16sm8380317ejm.86.2021.02.09.11.29.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Feb 2021 11:29:48 -0800 (PST)
Cc:     mtk.manpages@gmail.com, pali@kernel.org, linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] netdevice.7: Minor fixes to Pali's patch
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <20210128152430.314458-1-alx.manpages@gmail.com>
 <20210128152430.314458-2-alx.manpages@gmail.com>
 <2263f2ae-6984-bc6d-d14a-285078aacbe3@gmail.com>
 <8ba042b9-c292-c76f-d553-cfb06bd74884@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <2483bb46-5d32-1f2c-fceb-70d30f81b810@gmail.com>
Date:   Tue, 9 Feb 2021 20:29:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <8ba042b9-c292-c76f-d553-cfb06bd74884@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 2/7/21 12:18 PM, Alejandro Colomar (man-pages) wrote:
> Hi Michael,
> 
> On 1/28/21 9:16 PM, Michael Kerrisk (man-pages) wrote:

[...]

>>>  .BR rtnetlink (7).
>>>  Adding a new or deleting an existing IPv6 address can be done via
>>> -.BR SIOCSIFADDR " / " SIOCDIFADDR
>>> +.BR SIOCSIFADDR / SIOCDIFADDR
> 
> I noticed you didn't apply this part.  Did you forget it, or do you
> prefer it as is?
> 
> Rationale:
> 
> https://lore.kernel.org/linux-man/fc4a94d4-2eac-1b24-cc90-162045eae107@gmail.com/

I'm not sure, but overall I did not/do like the sentence structure.
I applied the patch below.

Cheers,

Michael

--- a/man7/netdevice.7
+++ b/man7/netdevice.7
@@ -394,8 +394,11 @@ IPv6 addresses can be read from
 .I /proc/net/if_inet6
 or via
 .BR rtnetlink (7).
-Adding a new or deleting an existing IPv6 address can be done via
-.BR SIOCSIFADDR " / " SIOCDIFADDR
+Adding a new IPv6 address and deleting an existing IPv6 address
+can be done via
+.B SIOCSIFADDRi
+and
+.B SIOCDIFADDR
 or via
 .BR rtnetlink (7).
 Retrieving or changing destination IPv6 addresses of a point-to-point



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
