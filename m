Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 989812D811B
	for <lists+linux-man@lfdr.de>; Fri, 11 Dec 2020 22:29:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2392983AbgLKV1o (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Dec 2020 16:27:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52558 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2392109AbgLKV1H (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Dec 2020 16:27:07 -0500
Received: from mail-oo1-xc34.google.com (mail-oo1-xc34.google.com [IPv6:2607:f8b0:4864:20::c34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 568C0C0613CF
        for <linux-man@vger.kernel.org>; Fri, 11 Dec 2020 13:26:27 -0800 (PST)
Received: by mail-oo1-xc34.google.com with SMTP id t63so2493896ooa.1
        for <linux-man@vger.kernel.org>; Fri, 11 Dec 2020 13:26:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=nf6NdkowbfPPTCBKFll87LM7Malz8TuMl6rf7YWJA0o=;
        b=fWfWbcZWyNb/7n4RNUrwuUNbE2Eirav/0AzmTprBfXnE7Gljf+VCV2juk1hxB8b6Q0
         5tWmLR+UfUAXsrcffAKPyKRvrvCmnagxkSzV57h6zabYzSgPvfjISqGBmuxL5cdlyrx1
         /Oksi4MA20ewSvH/mqi7sP2vaRvwuiJNci2CwkLbTECm/TvYt7S0UobtBXZVdWhhwXDf
         659jxvNbxWYIhBPx5K+LZ228ToP9f9VyBkTUD2YIYbBfngOdA5wJS+qtP5SUdfIdN6P5
         EPHrtGj4i+RSwnwT9qoHoJKm4T9BhcUgVbrgxI7z28T94oAY88RtvIvwX5R3gULZZyCU
         LQgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=nf6NdkowbfPPTCBKFll87LM7Malz8TuMl6rf7YWJA0o=;
        b=rIXiJiI8j0Fg7cUoksWwTCYvP7UsCfNEbJIOViNfHJXLIlrp18sg6w7+f/zCvCfYKs
         nfJEdv6d3O8OXWOYWmxdVYROW2dcxUiw7r8GP9+RDcfcFOyVIVovjGSFCgY3P4HtngPi
         XWdEOn81q2D5oswUl1WCF+WaezLpbZhIo5PfxkwZkzid29TU1uMC7OVK+QaI97LpSN8e
         ANFHHk7vWCxnAJDMfjTLjtMA+HJrHoKms2EBW/3F9e8Qc+KNtU1UBkfJzqN9ur7r0cmh
         3rA17jjiGp66mkgDmrlRMB7Z2yPT+uAE3JNSRD4M1VQBZWnBO3vBPirFdcukDCce6mNS
         EuFQ==
X-Gm-Message-State: AOAM530jnjxMcwTWf8ZinMvNcYEiEnTZljAiT0uiHGIMGF+MSt8ArAew
        QLPEk3TpUa+ipzSiAIZUHFsQzhNiHJIRaoMCUTbt3vAw5tI=
X-Google-Smtp-Source: ABdhPJz+Y+WPUhIwepSN6nXvLta43d/57rCnpmHCyV6drFPavGL5z+A00ATcHpunvWfQJ58iUAzgU27fYLZEs09bqWE=
X-Received: by 2002:a4a:4ccb:: with SMTP id a194mr11682016oob.14.1607721986415;
 Fri, 11 Dec 2020 13:26:26 -0800 (PST)
MIME-Version: 1.0
References: <1f731252-395b-e8bd-ed5d-cc3b3eeea948@gmail.com>
In-Reply-To: <1f731252-395b-e8bd-ed5d-cc3b3eeea948@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Fri, 11 Dec 2020 22:26:15 +0100
Message-ID: <CAKgNAkisA-6-GhYugwFLWp4pZLqHSU7T8unpTt5mibcMzApz4w@mail.gmail.com>
Subject: Re: Right margin for code (SYNOPSIS, EXAMPLES, ...)
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Fri, 11 Dec 2020 at 22:14, Alejandro Colomar (man-pages)
<alx.manpages@gmail.com> wrote:
>
> Hi Michael,
>
> For code, for example function prototypes in SYNOPSIS, do you have a
> preferred right margin? 80? 72?

If I understand your question, 80. But what prompts you to ask?

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
