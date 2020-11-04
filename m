Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 62AF32A7024
	for <lists+linux-man@lfdr.de>; Wed,  4 Nov 2020 23:04:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731876AbgKDWEY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 4 Nov 2020 17:04:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732162AbgKDWEL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 4 Nov 2020 17:04:11 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B39DFC0613D3
        for <linux-man@vger.kernel.org>; Wed,  4 Nov 2020 14:04:10 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id 23so2769889wmg.1
        for <linux-man@vger.kernel.org>; Wed, 04 Nov 2020 14:04:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=7vKYWhETxRDm9flCFjgxxVtII0Jv8tur48QiCZOTq4w=;
        b=Ilcan9l1J2H7i/vCfeFvWdmY9REU5LUHgXjLrVKt+5UsGAa0Nv6tCCI3KKqh0mqANR
         6AKpl5K3j2Rh0MGJ92bR8IIxGNd6LhJD7DYarOXZr1qLSRw/DvIFaSPGH9pcvB1AxzZM
         bos04ef/Rok/SOtgxMq9KBaZ3+Em5d5ufdCX1xeZBgaP5jHvDhtv7WDG2C9vxdV6CoRP
         M5fVN5fA1+UWOrjDjiZmJv8UJwNnurGzLbstSjimpzpOk0lf6/PNrEnAenuVpzLnJIRn
         K3OxpZcgTsv657IdigypCOg0rmKSZlW7CAx2rE6O7i9RrCu6P7sL84vhOCLzdbGjSyrL
         n4Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=7vKYWhETxRDm9flCFjgxxVtII0Jv8tur48QiCZOTq4w=;
        b=BMdZpEUmMOJaEos0/3YaEd/xmYuoqQC3v+8Qwi9KCovcPuP8ofOBPrJMzEftstQpyO
         E3xYqLJif9WonJehYMeuPSCjrGI9OmkXd9EiSNAI31634pBB1cZ3YaC2Mtf6X62gwnsQ
         iEjkEr+nNkdmiS/mD8FpHS9zcRydmSX2an5MVQuzcG8d1TeaFwq/0vx+1MlYig+W676S
         jyakSqV0MrrYA2bxmoKveKms/f5jYTOlRk8Bq8XWrzwSmz9R4QwsHXEQyZmCJGhHddZT
         pL2jqAm1M6cun0WYP/4ZMTr33EUYIeOhbLqM9GnpMTawKy1xXcobJF9KeDWnmnHX43lX
         mvDg==
X-Gm-Message-State: AOAM531mAaVADxxCojmjs+R1DPAfLW1dByDa7pdSFFLkCp1PRq99rMpt
        XccBqVgCy1E0SSDRVsHMEjY=
X-Google-Smtp-Source: ABdhPJwl/uOVXJTg1RT9WqJU7MqjfdQbRgKwtGqAhvtRu9wwE5CAf0662ksvkRWjuPCBzJfL2GzNFw==
X-Received: by 2002:a1c:b686:: with SMTP id g128mr6847484wmf.128.1604527448427;
        Wed, 04 Nov 2020 14:04:08 -0800 (PST)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id s133sm4245430wmf.30.2020.11.04.14.04.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Nov 2020 14:04:07 -0800 (PST)
Subject: Re: [PATCH v3] membarrier.2: Update membarrier manual page for 5.10
To:     Peter Oskolkov <posk@google.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
        "Paul E . McKenney" <paulmck@kernel.org>,
        Peter Zijlstra <peterz@infradead.org>,
        Boqun Feng <boqun.feng@gmail.com>,
        Paul Turner <pjt@google.com>,
        Chris Kennelly <ckennelly@google.com>,
        Peter Oskolkov <posk@posk.io>
References: <CAPNVh5e_u0JcF7dE0sOs6DZrnw1zAw1f9VzCu4B+gO2fOF7AMA@mail.gmail.com>
 <20201104162943.4823-1-colomar.6.4.3@gmail.com>
 <CAPNVh5d4d1tTSL0aY6yf=deQjfAgdBW1oE4itcpdMOtv+VzojQ@mail.gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <bcc77a52-12e4-73dd-7dda-8053a99447b5@gmail.com>
Date:   Wed, 4 Nov 2020 23:04:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAPNVh5d4d1tTSL0aY6yf=deQjfAgdBW1oE4itcpdMOtv+VzojQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


> Hi Alex,
> 
> Thanks a lot for your help! This looks good to me.
> 
> Thanks,
> Peter
> 

Hey Peter,

You're welcome! And thank you too! :)

Cheers,

Alex
