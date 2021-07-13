Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 79D4A3C6B51
	for <lists+linux-man@lfdr.de>; Tue, 13 Jul 2021 09:37:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234305AbhGMHke (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 13 Jul 2021 03:40:34 -0400
Received: from smtp-out2.suse.de ([195.135.220.29]:44510 "EHLO
        smtp-out2.suse.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234172AbhGMHkd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 13 Jul 2021 03:40:33 -0400
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
        by smtp-out2.suse.de (Postfix) with ESMTP id 8E40E2005F;
        Tue, 13 Jul 2021 07:37:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
        t=1626161863;
        h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
         cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=Hq2c9xZsvqW774kdI59IJ8mNNDC47Lg/E7EzR1uxpDA=;
        b=sED8oC/wG6zAbqcB04S1b7O4/JRSiBboPBv5Wc6y52lzyj0hu05r2dsVh0A3Jh/FXzVGgR
        jXWT9PwYnH9WeJO2phajYnMhLqChJUy/ZBHq4tgTCtbwPEsWqXdtni+scGXBirQdGFJVPx
        173ehJ5yEDxfiWrrLP/Gku1i1uwlX1E=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
        s=susede2_ed25519; t=1626161863;
        h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
         cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=Hq2c9xZsvqW774kdI59IJ8mNNDC47Lg/E7EzR1uxpDA=;
        b=0Fuir0sXP7YuUKpefjMFkTFS0Cmx7gafaOFe3cMyKvWzSTorBikxaNhzONbFWwso3mwYXm
        rMCGGi4iUOlXALAQ==
Received: from g78 (unknown [10.163.24.38])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by relay2.suse.de (Postfix) with ESMTPS id 4CCE4A3B8B;
        Tue, 13 Jul 2021 07:37:43 +0000 (UTC)
References: <20210708100853.17391-1-rpalethorpe@suse.com>
 <20210712161159.no5qnjjzsrjev2s3@jwilk.net>
User-agent: mu4e 1.4.15; emacs 27.2
From:   Richard Palethorpe <rpalethorpe@suse.de>
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH] wait.2: Add ESRCH for when pid == INT_MIN
Reply-To: rpalethorpe@suse.de
In-reply-to: <20210712161159.no5qnjjzsrjev2s3@jwilk.net>
Date:   Tue, 13 Jul 2021 08:37:42 +0100
Message-ID: <871r827jg9.fsf@suse.de>
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Jakub,

Jakub Wilk <jwilk@jwilk.net> writes:

> * Richard Palethorpe <rpalethorpe@suse.com>, 2021-07-08, 11:08:
>>Please see upstream commit:
>>
>> commit dd83c161fbcc5d8be637ab159c0de015cbff5ba4
>> Author: zhongjiang <zhongjiang@huawei.com>
>> Date:   Mon Jul 10 15:53:01 2017 -0700
>>
>>     kernel/exit.c: avoid undefined behaviour when calling wait4()
>>
>>It avoids negating INT_MIN by returning early with ESRCH.
>
> That sounds like a bug in the kernel, though?
>
> POSIX says the error should be ECHILD if "the process group specified
> by pid does not exist".

The absolute value of INT_MIN is undefined or "not representable" in
two's complement. So I think this can reasonably be considered undefined
behaviour and the kernel can do what it wants.

Also, as the error code is different, we can detect if the fix has been
applied without UBSAN enabled (unlike a similar fix in kill).

OTOH, I would have probably used ECHILD for consistency. However it is
done now and has been in use for some years.

-- 
Thank you,
Richard.
