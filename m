Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C00D7291795
	for <lists+linux-man@lfdr.de>; Sun, 18 Oct 2020 15:09:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726519AbgJRNJW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 18 Oct 2020 09:09:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725837AbgJRNJV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 18 Oct 2020 09:09:21 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95104C061755
        for <linux-man@vger.kernel.org>; Sun, 18 Oct 2020 06:09:21 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id q5so10070443wmq.0
        for <linux-man@vger.kernel.org>; Sun, 18 Oct 2020 06:09:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=F5n+8TP73RPv4xPOWs2aopDNKSCsvENL2ALIGM5VyAQ=;
        b=C/5ulm54XUQytHx/yjx5Q5KZFNhYVFLbkS0ZJom5uxluSE+ELfQKvjXD72jpx73IVN
         aPcXFCwYJMLaVkIMAIQhfh/8kjjnahwfb0E4iCvncaaBOE3d9AY+54XdixQx164Z38ag
         EDq0lgWpEL9pIyStA6rZSBxRA+qnr0JAmL9V0chdt6yk25+MefC2GOlbU9lkhpZmefKU
         l6wLBS53RdIUjfo/DCwjrTf9loFYDA7e8QMRqQd353hf5Dwcuxhkl+2mEeBbhZG7dNMX
         TMO/rSGqt3ENiGirFlvowz2lCUsUTSEBk/rmcrResXgJD9vhlmGpO4S8NG2WpgTR+AO6
         7JbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=F5n+8TP73RPv4xPOWs2aopDNKSCsvENL2ALIGM5VyAQ=;
        b=qGoALTzeVjuljSCwVrKfIbNY2dRPfrBMShiQjaPALj2KvEnQqag0j59d1gC0H7dVqB
         ItZRfCq7lb2Q6WZfDhQpmt4ozfCICr0+7niXpuET+lZ6K7OWogiSE0BoadiUiu927ylh
         5kva//z9JIHzPSdz85qhwZ21P7bJZV9Fz5/x38iTUrG0iCyTuChf/2wpnmesjYRskFFR
         d3bN3QkkqSBChMhTKLZspGBwfkwr7KvG01HnWP1Sk7dH5u+X9pMGXPPF+U/x65dO12DR
         A9a9lIhPfPAeWmwDzn5KbJaTF4gEAwa+dYE0mLDFnzZuJ8sXPYJtYKPCrAWY3R4MAUg9
         IqeA==
X-Gm-Message-State: AOAM531XoIs1rlWmrfTypOE2Gq1JSV02T3czGC1m7VSm/kFvtGHeMk+6
        k7WL6B07CpDqfFlvWh/YrHmSO1Qg4H0=
X-Google-Smtp-Source: ABdhPJzVpwhJqwtGUx9kfcEwITbQXXTKsdq3OzGdOdQexFXXemQU4v+Nqv7VnDGqoHIty+ZUptBWUg==
X-Received: by 2002:a1c:2d8f:: with SMTP id t137mr12665983wmt.26.1603026560177;
        Sun, 18 Oct 2020 06:09:20 -0700 (PDT)
Received: from [192.168.1.10] (static-176-175-73-29.ftth.abo.bbox.fr. [176.175.73.29])
        by smtp.gmail.com with ESMTPSA id c18sm13472383wrq.5.2020.10.18.06.09.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Oct 2020 06:09:19 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH 2/3] system_data_types.7: Add 'clock_t'
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201017213758.9270-1-colomar.6.4.3@gmail.com>
 <20201017213758.9270-2-colomar.6.4.3@gmail.com>
 <e9162722-25f4-6d00-00c4-73ffb4fb6528@gmail.com>
 <bc517c1f-4f2e-08b2-4ce6-02da8f73f380@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b7f55fc3-3a2b-8d45-8871-5e268621b656@gmail.com>
Date:   Sun, 18 Oct 2020 15:09:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <bc517c1f-4f2e-08b2-4ce6-02da8f73f380@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

>> This type has a strange history. In my book, I note:
>>
>>      Although the clock_t return type of clock() is the same
>>      data type that is used in the times() call, the units of
>>      measurement employed by these two interfaces are
>>      different. This is the result of historically conflicting
>>      definitions of clock_t in POSIX.1 and the C programming
>>      language standard.
> 
> 
> Ahhh now I get it.  So CLOCKS_PER_SEC doesn't mean CLOCK_TICKS_PER_SEC, 
> right?  I always thought that it really was that, and clock() simply 
> returned clock ticks.  But it looks like it returns an arbitrary 
> division of the second called CLOCKS_PER_SEC.

More or less. But the standard also says (in the <time.h> spec):

   The value of CLOCKS_PER_SEC shall be 1 million on 
   XSI-conformant systems.

(Yes, it is odd.)

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
