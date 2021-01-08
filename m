Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A19612EF106
	for <lists+linux-man@lfdr.de>; Fri,  8 Jan 2021 12:01:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727489AbhAHLAw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 8 Jan 2021 06:00:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727169AbhAHLAw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 8 Jan 2021 06:00:52 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF6AFC0612F5
        for <linux-man@vger.kernel.org>; Fri,  8 Jan 2021 03:00:11 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id t30so8602651wrb.0
        for <linux-man@vger.kernel.org>; Fri, 08 Jan 2021 03:00:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=zcdYnYNtl3hBBpSSA29kvaARApF06ecpJh9hhPiggxU=;
        b=MDeIbAoVoywPNUP1P4jDZhI+HXCeVKpROvte4BiuJXTANyXQX2ZJch88cw815RUC+6
         2lqMC6juNuUkzKoeY9G2rZkKFtRG1W25nRrp+upATpYVriouvV2QEc7yRIJ2H2XXbPN1
         cDAd/rfDcmKDNB1GOGL4ReDzoArv76sgOjJlmvhnc2gcUPzaoUZT6i5F5JgrlT/+H3Ck
         xte7fRIf2xTM7NJwZ3mt/h5Jy2ec7tzFU0HLS5mZQ/CQScJzjtYFUtxWlT+dr04NroiK
         uBG52aFog+6HLTOsGwfT4bXbkqZxJynlMaSDup+lVip0W2ohb/ogq4bCzMi+6bsCiGIe
         44Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=zcdYnYNtl3hBBpSSA29kvaARApF06ecpJh9hhPiggxU=;
        b=aCMgnwlexdCfMKBBlEX90WfTGlc/96XzdV0STj2FiI1PDV6/VijlaBF89Ug5fjcSJk
         meMQVAI3LZXQcHFFBtkd33tWGMJH4A4mQvjwbo4B6WPltxVDtMEcZx+b4GpGUUMTeXX4
         bvP4xU4O+uTQloPYRigt001rq3zomgvhwfbtTGSLrcFnvyeGaOZHmJUf2Fjfgz6lGQo0
         Geg12cTr4wy89kfAM4zLtCIwHHJLtPuVZ4fAhWu/hCiq9qSqpIeXeZENrTwAioCkhHBy
         AxkvXY9h4C2P5B4yQWJZz5pObI5JfrAp/Lxr94GpyqRWYhRRTfA+dKzmkDJ7USelVwbL
         nE+Q==
X-Gm-Message-State: AOAM531GmNtlEfrZ5TOjOSXmMWkYdC6KCinhrP+HaKZIpm57eGNdKRoJ
        BI9mypKVieMTCRytWKu4zhMsMvBbXkQ=
X-Google-Smtp-Source: ABdhPJz2PVljG4j95kkbmno5YKnpvjVacIVSdlGVEUw5cLjLcPKRbPg1xKNUxbEwuz4A8pWpyvMPYw==
X-Received: by 2002:adf:bc92:: with SMTP id g18mr2982957wrh.160.1610103610314;
        Fri, 08 Jan 2021 03:00:10 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id s63sm13265855wms.18.2021.01.08.03.00.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Jan 2021 03:00:09 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: URIs mark-up
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <eae90a7e-c2c9-8555-4137-a5ff3f31329c@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <5974d5d4-7fa7-4c0f-d36c-69a0c5ebedb4@gmail.com>
Date:   Fri, 8 Jan 2021 12:00:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <eae90a7e-c2c9-8555-4137-a5ff3f31329c@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 1/7/21 6:50 PM, Alejandro Colomar (man-pages) wrote:
> Hi Michael,
> 
> See hostname.7:102.
> There are URLs and they're not marked up in any way.
> I guess there are a lot more like those around the pages.
> Should they?

I'm not sure what you mean by "not marked up". That 
URI is wrapped in a .UR/.UE pair, and I think all of 
the others in other pages are too(?).

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
