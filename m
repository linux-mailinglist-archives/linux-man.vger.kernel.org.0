Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4317B4880C9
	for <lists+linux-man@lfdr.de>; Sat,  8 Jan 2022 03:02:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233233AbiAHCCt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Jan 2022 21:02:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59996 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229912AbiAHCCs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 7 Jan 2022 21:02:48 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66D44C061574
        for <linux-man@vger.kernel.org>; Fri,  7 Jan 2022 18:02:48 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id c66so5055217wma.5
        for <linux-man@vger.kernel.org>; Fri, 07 Jan 2022 18:02:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=M4UjftC/AFH7EiP6hXBVPeupbQSB5ZuMFUT7g3GSf2I=;
        b=esdg2Eo/EA6SOLt7yQm7Vinh9cD46WqCGqsSVKvu2F1MIgpezbJBirf0oN4MEU6spj
         e8AiCs4xocn+J1E//t+t9CldCpQD227nG9I3IDOwEszbUiC+oKjKhQ9BfGZ5U8dbVbhH
         xE6GShDc7DuEe+UuSF8QFi7UKVrtXjf3k19fcJuBJHCfudEHdSGZeEpO60NQuZPnNnQv
         oT09M2tO1Kc9pCjtdMAOyptzHVLl6neCkc2Jw4rmqe/rOOIF5jiD0AG8B06HcIhUEy+C
         tJ2IoSoV0mfSo97mUHKGPTCuPEb7KxTXR/BmN7dLyHbvVer9VutjdDLnaZgCwJ0vAikB
         kqVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=M4UjftC/AFH7EiP6hXBVPeupbQSB5ZuMFUT7g3GSf2I=;
        b=uDSBHOMnXFauixritQVpvmFjgEBivS08sl9z9Xf80woOLlnH8lGGY0H1VBEuazBI31
         J8fVSRPZcHyo/fvyOIlHCW+2c9fhTwp12LNLOjjpBaRZQOtnPE3XWymOcNE1mkYnN/io
         eCdsmRcFAVy0Wpfh3DHZW8ueUU9KhFD59Uyx4b5444TTt/ORAh20LuPB3gsO2uEgKjW2
         nDaV4bU3IRPKBXkTrxVORBbnzbR60XmY/AkrsWQNSBAfkrCIoemgIRsp2C50cb772JWa
         8xqNJ5g+r7e2uZwVUNCQAor65XiaGJLRDPK/YK29gaQPLCmgXm/UD3JGELlq5nrKFMJl
         QXDA==
X-Gm-Message-State: AOAM533MxYthIUERmILVGh9bCM9wMjXKXwMyjRthbf497kdMvWE7yE0a
        LVfaMiZYivi8s+osKuMSoV9VYtM+kBI=
X-Google-Smtp-Source: ABdhPJxQz5h7yG+lyO0sCxpTMDC4GYMpwaK4adVvkXbAOq0utz0rcuYt/jQvwEUZ2lfWIFlirCYzFA==
X-Received: by 2002:a05:600c:1d08:: with SMTP id l8mr13106031wms.44.1641607367023;
        Fri, 07 Jan 2022 18:02:47 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id g1sm289294wri.103.2022.01.07.18.02.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Jan 2022 18:02:46 -0800 (PST)
Message-ID: <15d314ae-7c9c-31c7-d914-1a3d2947d6ae@gmail.com>
Date:   Sat, 8 Jan 2022 03:02:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Subject: Re: [PATCH 1/9] Add a target to check example programs
Content-Language: en-US
To:     Stephen Kitt <steve@sk2.org>
Cc:     linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
References: <20220107164621.275794-1-steve@sk2.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220107164621.275794-1-steve@sk2.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/7/22 17:46, Stephen Kitt wrote:
> The compiled code isn't linked to avoid having to handle
> library requirements (e.g. -ldl).

BTW, I plan to add that information so that you will be able to parse it 
easily in a script.  See 
<https://lore.kernel.org/linux-man/20210911160117.552617-1-alx.manpages@gmail.com/> 
and <https://github.com/alejandro-colomar/man-pages/tree/library>

Cheers,

Alex

-- 
Alejandro Colomar
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
