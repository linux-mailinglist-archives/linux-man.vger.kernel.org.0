Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 13B01470228
	for <lists+linux-man@lfdr.de>; Fri, 10 Dec 2021 14:56:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230205AbhLJOAS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Dec 2021 09:00:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48360 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238782AbhLJOAR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Dec 2021 09:00:17 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C9DFC0617A1
        for <linux-man@vger.kernel.org>; Fri, 10 Dec 2021 05:56:41 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id a18so15068190wrn.6
        for <linux-man@vger.kernel.org>; Fri, 10 Dec 2021 05:56:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=TqdVHI1+0TRQwXF6ylUKiH5zwIFza/cw/svnvRur3aM=;
        b=oLSi6bXHG0YqWLRVzlDYAZbaRpwCQi5n149N+K4pIeocs3fXfnFuBhMyQLduM0FrDs
         yRQE3/qzwVZkE6yLx7P7ACxRbGnvTHHrOKKvFFg6loIKxsQaMPLzpf1bh7mXupyD3j9c
         2I0AkyMVwsFWAIiaO2zRlxO3KNWBVmhkmCDu92A4mrEM/sZsycaDHfnu6p+GjkvRnOWl
         KAgaKIAP6xf7kFTV1cIzL5Xn1qiFoJGwrzwzhEZfLflILqhl6DehQsAWxUPepinK5i7a
         ekhEJWZvuG0tRRQXSKDjHVb2H8YmHFzR5mzvsLFAjfS/gJZV5BNlKysAPoCl/N0ccocU
         vZaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=TqdVHI1+0TRQwXF6ylUKiH5zwIFza/cw/svnvRur3aM=;
        b=oCBd9RvEZ2XEq2yGbi4ySlxH6JoQ+aFGD8lNiThsLQ3jm5lkemdhe7GoSPpptsIHje
         G/To8Kpz7uE0QbCagYlRTzSkycsdle3fil7qXtiobRv2+qmWnWK0CkLTqM+tm4/0D7Fl
         3GXVNI9WFxdc4WOu9KuUNqb2YUvU44qLatneKd8lny1SiWYr+EWWEd4Z0uuAtXPiKemC
         XAnAWtjf385+1EAcK7f2jp7reWcncmA9xFbKFosEEzZCZz2y/pfOJmvCsibas9OnXmld
         HvXLZTtvWHu8dc08EzWezcS1Ry5Roqh0O7sItiwunu4bg1c/hFbLGHaBYaLROuPGbo3z
         B5cg==
X-Gm-Message-State: AOAM532ZX/FygzcinWZ7RaLcuRBmbWOmx9G+WfYTmHuA8FdjZ4xif1OD
        Qr+pbJcQaNvqFt5uG9oc/rQ=
X-Google-Smtp-Source: ABdhPJy1d1YaaT/Fg+fgVKQEcFIM2gYWisOHLMTX24E87gStFAPZU2bYOPZ6zsBHyCYotdgUulwQaw==
X-Received: by 2002:a5d:54c5:: with SMTP id x5mr13499197wrv.607.1639144599944;
        Fri, 10 Dec 2021 05:56:39 -0800 (PST)
Received: from [10.8.0.98] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id w2sm2566795wrn.67.2021.12.10.05.56.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Dec 2021 05:56:39 -0800 (PST)
Message-ID: <e1b659e8-7efe-a6e2-6fdb-0ed4f4b29b7c@gmail.com>
Date:   Fri, 10 Dec 2021 14:56:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Subject: Re: [PATCH v2 0/4] fanotify man page updates for v5.13
Content-Language: en-US
To:     Amir Goldstein <amir73il@gmail.com>
Cc:     Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Jan Kara <jack@suse.cz>, linux-man <linux-man@vger.kernel.org>,
        Gabriel Krisman Bertazi <krisman@collabora.com>
References: <20211120171253.1385863-1-amir73il@gmail.com>
 <4c1659ad-dbaf-dccd-95bb-fe224c4c0912@gmail.com>
 <CAOQ4uxhuBm6oMGNVmtsrgErbbrTcd72Xuib5Fv=yfySbpqFoKg@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <CAOQ4uxhuBm6oMGNVmtsrgErbbrTcd72Xuib5Fv=yfySbpqFoKg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi, Amir!

On 12/10/21 10:37, Amir Goldstein wrote:
> On Mon, Nov 22, 2021 at 6:57 PM Alejandro Colomar (man-pages)
> <alx.manpages@gmail.com> wrote:
>> Patch set applied.
>> See some tweaks below.
>>
> 
> I understand that the patches were applied to your github tree main branch [1]

Yes.

> 
> Should we regard that branch as the "next" branch and base our next
> fanotify man page updates (i.e. FAN_REPORT_PIDFD) on top of it?

And yes.

Thanks,
Alex

-- 
Alejandro Colomar
Linux man-pages maintainer; https://www.kernel.org/doc/man-pages/
