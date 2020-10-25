Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5DEF72983A6
	for <lists+linux-man@lfdr.de>; Sun, 25 Oct 2020 22:19:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1418849AbgJYVTE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Oct 2020 17:19:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1418848AbgJYVTD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Oct 2020 17:19:03 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75E8AC061755
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 14:19:03 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id g12so10255029wrp.10
        for <linux-man@vger.kernel.org>; Sun, 25 Oct 2020 14:19:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=O6hL3h+/53+2S8Btz3CInUoPfH3hq9AkMO7Ryo/LkL8=;
        b=cL663gguRCMcfH6D629zohuvzdscGTjyIzzfsIz4iXzfHDOFt9eONRX2bObKhXX5n8
         nVHr7w+XVSGcl1aWLXmkUmQItRmmhPkdBIKovRZoC1shOeWt8zDQDRMKnNNuimRdZSXT
         H1G5k0kZs49VdJt0Lx92Rnjuemrx7DLG5xQRMsS5xRzuI2QziVL8hKsGCX/TPtWSszDp
         1rbX/U4gccmLZ+AJrhs8+mCYQsL84LcPbWfXdPtQCn5RSaUJ849nHD+yOApF7Qw0uxcJ
         P7M1IkEm+OJgD3Wd8So2up7KuCevMqGmhfhuk8n78nmT3kaa+YVkxHTdd6Je4NRZPwCi
         +ndQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=O6hL3h+/53+2S8Btz3CInUoPfH3hq9AkMO7Ryo/LkL8=;
        b=fTkGfBzX3ky2YSFePHqqq78sk048NnYGKu5PF0mzono275zqblbPm0snRS2DuVZs0V
         4ICCmsuh3DdVQRchl7UXez0k3hf1/nRE4Zqbt60z7DQnPQX3TbGVwbx2uaEq3evsveog
         qqvpKRR7befCAMVdu9JVisgTLI18BeCbXENQRMQdhE1VD6EHgTTN96Uj9L+JGCG46So8
         RGNAQ6hkC0OQQPXgjB+z2S/u2L0ZBmRnaGzpp3mQo0I0rGEb1DUVM2+YXUEY7P1J4sRy
         6aUmXPlax2Mcpa5x4biKPifxJSFflCVEeyGG5ojP5+U4Hew3BOXyrKFaldBt1tNPeMfi
         +kRg==
X-Gm-Message-State: AOAM532uN3+TltBMwf3ewScsQDjiuTWoWOJjVzG/eoU/6psEqfYCkyzv
        8hP0VhrIDLJSFL0i+NlbqLtbghDFUXQ=
X-Google-Smtp-Source: ABdhPJwWRTHl2lvcwHbGpLN/Qa4YbfFIH15oevHG4h9dDDANnGtrNmBmEQrlckH2bfLUVPY4LHuPAw==
X-Received: by 2002:adf:f48c:: with SMTP id l12mr15062476wro.77.1603660741949;
        Sun, 25 Oct 2020 14:19:01 -0700 (PDT)
Received: from ?IPv6:2001:a61:245a:d801:2e74:88ad:ef9:5218? ([2001:a61:245a:d801:2e74:88ad:ef9:5218])
        by smtp.gmail.com with ESMTPSA id n5sm18979951wrm.2.2020.10.25.14.19.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Oct 2020 14:19:01 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 0/3] Move queue.3 to queue.7
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201025204617.6802-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b8c41964-03ea-17d1-808b-7c832e2737f2@gmail.com>
Date:   Sun, 25 Oct 2020 22:19:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20201025204617.6802-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 10/25/20 9:46 PM, Alejandro Colomar wrote:
> Hi Michael,
> 
> I think this page belongs in Section 7 now.
> I agree that it needs a link for legacy reasons;
> otherwise, many hyperlinks to the online queue(3) would break.
> 
> I'm sending you the commits as I wrote them,
> I don't know if you prefer them separately or squashed.
> Feel free to squash them together if you prefer.

Thanks. I've applied the series. I kept the patches separate.

Thanks,

Michael

> Alejandro Colomar (3):
>   queue.3, queue.7: Move queue.3 to queue.7
>   queue.3: Link to queue(7)
>   circleq.3, insque.3, list.3, slist.3, tailq.3: SEE ALSO: queue(3) ->
>     queue(7)
> 
>  man3/circleq.3 |   2 +-
>  man3/insque.3  |   2 +-
>  man3/list.3    |   2 +-
>  man3/queue.3   | 149 +------------------------------------------------
>  man3/slist.3   |   2 +-
>  man3/tailq.3   |   2 +-
>  man7/queue.7   | 148 ++++++++++++++++++++++++++++++++++++++++++++++++
>  7 files changed, 154 insertions(+), 153 deletions(-)
>  create mode 100644 man7/queue.7
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
