Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 003CD25EE29
	for <lists+linux-man@lfdr.de>; Sun,  6 Sep 2020 16:29:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728971AbgIFO26 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 6 Sep 2020 10:28:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48576 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728907AbgIFO1h (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 6 Sep 2020 10:27:37 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70F6AC061573
        for <linux-man@vger.kernel.org>; Sun,  6 Sep 2020 07:27:36 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id x23so991386wmi.3
        for <linux-man@vger.kernel.org>; Sun, 06 Sep 2020 07:27:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=VWnK4NShHa7x3ql0xqWaJdxiZ6zkjaLwXzV/v91uptA=;
        b=dQUCV8eFMVjGLF4Wfc4fevhph2faGaFSKslb3I6yBv0SoeFJIdXCjjbjFX8vv4JWrW
         nlAU6aFCN0biiZBG2ieLhfAdx+mei2Pv8qxTVBPWzgiBWdbrj25eQjtFsfu5y7qn0Svp
         zlITXtvdUEpQwOtQqdKDLX65bMzfLIcEJX/SVQtF434m8n68JHBj8wlvArwAFyuX9zzY
         2oicdSfhxPEIaL1O2HyyQVaLbBYEiosmlAKnSuMC5HHYEXAuSCyX/CkszvHh5lT0Izop
         /oed5+iLwkUi9XdJP4nBi0RhgIniFUWGNeGougwzCsBNbTIx2rC42Q1RIkVmdJy0+Jq2
         eVlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=VWnK4NShHa7x3ql0xqWaJdxiZ6zkjaLwXzV/v91uptA=;
        b=GHx81XLL+BnHJtOlV3AHzEFr4V6bfAqhJiy9rAi3J8yzSHOhJNOGTmWfT6hSaWjt05
         ANNT++W9zJnK8kaCAfTARiAyyWDr/VQCHx12AkEpRnZAlxfBPyYIpnNL8iOkW5iqHAjt
         WVDTkrUeNNDn2YcA+znldNttcgLhi3m4JMWEPV2yzS1m2T9EjS+JJonNnj3VBBarJdgR
         NieTXmQW3r+KVKc6X4lHXUd/EIkOhQ5IntrTdp5v2Gzxsl0WDovOCPPNgZZl/G8RFmH3
         +Xhsxh0AOwrenhthBfvyNM8ApPgSdPGwhmJv8hQk2vdFnN3T+x6TRuaKX4asmgMCoK2V
         uIkw==
X-Gm-Message-State: AOAM531je4MjhjLRm6L2W4g2eF5TPR1caUtp0DnfkhKvZNYPl3IgRDCq
        2ClVSg8KZGW6nmvixZBjYt0oJl2JPU4=
X-Google-Smtp-Source: ABdhPJzsmYFdtxwkRRvBw2XC4axVU6jF7UiTFWPH5q8dhtHc4Al6qSEB+viASYkeOgUnv8AAn/YRmw==
X-Received: by 2002:a05:600c:1:: with SMTP id g1mr15800504wmc.57.1599402452118;
        Sun, 06 Sep 2020 07:27:32 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id s5sm23231548wrm.33.2020.09.06.07.27.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Sep 2020 07:27:31 -0700 (PDT)
Subject: Re: [PATCH 5/7] dlopen.3: Remove unneeded cast
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20200905151501.609036-1-colomar.6.4.3@gmail.com>
 <20200905151501.609036-6-colomar.6.4.3@gmail.com>
 <e2a7096a-5678-245f-f5c2-0fa37d10ecbf@gmail.com>
 <0e29a44e-f3a5-aa28-a6dd-76f38c6295ec@gmail.com>
Message-ID: <fde56ca0-7ef8-846b-3abc-fb75e87f975b@gmail.com>
Date:   Sun, 6 Sep 2020 16:27:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <0e29a44e-f3a5-aa28-a6dd-76f38c6295ec@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 9/6/20 3:22 PM, Alejandro Colomar wrote:
> so the warning is legit IMHO, and anyone using `-pedantic` would
> probably
want to
> be warned about this line, and anyone not wanting to be warned
> about this line should probably disable `-pedantic`.


On 9/6/20 3:02 PM, Michael Kerrisk (man-pages) wrote:
>> I've applied all of these ,except 5/7 (I'll reply to that mail).

Actually all of the patches were applied, so probably you
applied 5/7 by accident.  My branch is up to date with upstream/master.

> Oops -- and I meant to say: thanks for the patches.

:-)

Cheers,
Alex.
