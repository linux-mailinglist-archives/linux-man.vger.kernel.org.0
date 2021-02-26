Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EDDCF3263D7
	for <lists+linux-man@lfdr.de>; Fri, 26 Feb 2021 15:13:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229449AbhBZOMY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 26 Feb 2021 09:12:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229915AbhBZOMX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 26 Feb 2021 09:12:23 -0500
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD5ADC06174A
        for <linux-man@vger.kernel.org>; Fri, 26 Feb 2021 06:11:42 -0800 (PST)
Received: by mail-ej1-x62f.google.com with SMTP id jt13so15101196ejb.0
        for <linux-man@vger.kernel.org>; Fri, 26 Feb 2021 06:11:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Jnh1SE8zbpwk949b54dGh9DYrH/OVDUsV/NTP0TaGA8=;
        b=DXULFdn4CEbckS2lPio4aZdYxD+y/P4KHA5Jk3+OHObW2Dw9c6ji001fX4L6oP1WUO
         PP2EQMQ4SWzVjIMTawQ2+i3gtw2ACKt9VullGltebUfLErxKxU9Di6g9eHlN+FHJoXzx
         7hbO1EM2cIwAidFHZsn5MQE8UNwZNs9FFkGwHYmiEjFI26le1s42xVFgqZdR7G9Qn1N2
         mlU1g1aUUihZrp6/fg8/G0ihzLQCm0E1h6H+ZWdmSAWFqeVcKtlCgQJvd7vJFc75nRoj
         w7xAejQDDfmwzMz/qdOOOy35aAUlcEJ+WD2WXjOo4u3XLCMoiiWZQvPdc8FbSS60m657
         /6CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Jnh1SE8zbpwk949b54dGh9DYrH/OVDUsV/NTP0TaGA8=;
        b=iRzO3UFfNDorum+qlmT15ZQ+68dOQWn1UD9zJ9N4Q0ZlUoO7vkMxfrv7KBDHNWZtjm
         YviRt1h7vWSL6WmMPeByGP/edg/MhFHndkNwd2zG2Gg3DBCNT0Xcfjwzjy+kGnXCzubT
         o9VzKuC/u8/8Ih5oWFN/jTSO/fUqWsowc4YByjlz4nDh+ECW0BPgSj+X980OEIYWDkTY
         DGllmQ4JRKlq/cBh5eTjmToNuEgu4D0uWOVI2Be3ErpjfG9bmdHt+/RmMnAZncQqCU3K
         tbeTr5oy5Z11UXzNV81Pobt5R1uxMNxau5B2GMt3smwdq4KHQOY9ak3ko9dHGuQpAbiZ
         ZyGA==
X-Gm-Message-State: AOAM531GbFt1v5NLZzTcyy2WnN/Eh6ZV7NGff8JV7gG5T5YgVIFfTotD
        WL7ppgoEeWtjLddYtQsA7r66Gw==
X-Google-Smtp-Source: ABdhPJzCijFzqq1xKdpyjO3GBPtL5z1mF4ZY/hr9Sb4rC+wOlu6/GvikruQSNYjbKkyJ+NfV/5qkVQ==
X-Received: by 2002:a17:906:7b8d:: with SMTP id s13mr3561402ejo.247.1614348701266;
        Fri, 26 Feb 2021 06:11:41 -0800 (PST)
Received: from google.com ([2a00:79e0:2:11:8026:754f:d3fb:e1d8])
        by smtp.gmail.com with ESMTPSA id i2sm5817296edy.72.2021.02.26.06.11.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Feb 2021 06:11:40 -0800 (PST)
Date:   Fri, 26 Feb 2021 15:11:33 +0100
From:   Piotr Figiel <figiel@google.com>
To:     Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Cc:     Andrew Morton <akpm@linux-foundation.org>,
        Peter Zijlstra <peterz@infradead.org>,
        paulmck <paulmck@kernel.org>, Boqun Feng <boqun.feng@gmail.com>,
        Oleg Nesterov <oleg@redhat.com>,
        Alexey Dobriyan <adobriyan@gmail.com>,
        Andrei Vagin <avagin@gmail.com>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Peter Oskolkov <posk@google.com>,
        Kamil Yurtsever <kyurtsever@google.com>,
        Chris Kennelly <ckennelly@google.com>,
        Paul Turner <pjt@google.com>, emmir@google.com,
        linux-man <linux-man@vger.kernel.org>,
        linux-api <linux-api@vger.kernel.org>
Subject: Re: [PATCH] ptrace: add PTRACE_GET_RSEQ_CONFIGURATION request
Message-ID: <YDkBlYp76PGsgUZs@google.com>
References: <20210222100443.4155938-1-figiel@google.com>
 <1521573573.29432.1614005597395.JavaMail.zimbra@efficios.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1521573573.29432.1614005597395.JavaMail.zimbra@efficios.com>
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

On Mon, Feb 22, 2021 at 09:53:17AM -0500, Mathieu Desnoyers wrote:

> I notice that other structures defined in this UAPI header are not
> packed as well.  Should we add an attribute packed on new structures ?
> It seems like it is generally a safer course of action, even though
> each field is naturally aligned here (there is no padding/hole in the
> structure).

I considered this for quite a while. There are some gains for this
approach, i.e. it's safer towards the ISO C, as theoretically compiler
can generate arbitrary offsets as long as struct elements have correct
order in memory.
Also with packed attribute it would be harder to make it incorrect in
future modifications.
User code also could theoretically put the structure on any misaligned
address.

But the drawback is that all accesses to the structure contents are
inefficient and some compilers may generate large chunks of code
whenever the structure elements are accessed (I recall at least one ARM
compiler which generates series of single-byte accesses for those). For
kernel it doesn't matter much because the structure type is used in one
place, but it may be different for the application code.

The change would be also inconsistent with the rest of the file and IMO
the gains are only theoretical.

If there are more opinions on this or you have some argument I'm missing
please let me know I can send v3 with packed and explicit padding
removed. I think this is rather borderline trade off.

Best regards and thanks for looking at this,
Piotr.
