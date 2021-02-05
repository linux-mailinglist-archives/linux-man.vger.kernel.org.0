Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 08FE0310740
	for <lists+linux-man@lfdr.de>; Fri,  5 Feb 2021 09:59:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229716AbhBEI6n (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 5 Feb 2021 03:58:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229692AbhBEI6l (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 5 Feb 2021 03:58:41 -0500
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com [IPv6:2607:f8b0:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5589C0613D6
        for <linux-man@vger.kernel.org>; Fri,  5 Feb 2021 00:58:01 -0800 (PST)
Received: by mail-oi1-x22e.google.com with SMTP id k142so6732121oib.7
        for <linux-man@vger.kernel.org>; Fri, 05 Feb 2021 00:58:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=C7nGXiuyWZpA6/jXSCahuEbpc9mR37jhFw4owsZCL+E=;
        b=DlOTQ3eoYPD+LO89TXu2uifFQj5TxDAlHm5PdFAM+9F3rsHS242o5XxzWC8oc2vgFU
         NPXiHsQ3StzYl0JtvYtKI6OUpWbvz50UP3eEuuoRu75NrVh7cWYe5aJEzjQiiEXhMyEU
         HKCsstifIGGYEZzLBgKzySXKKcN4PjZBZJgP1uudxNQN405FXWoXjFtNGjYlJDOfTZNB
         rNH5LVOJtzmcrnr54sngRAYP8OSD9CNeu6Uu7mevcf8nLQsMZs7ff1Gof0PodHCUwxR5
         3hwDj5/qsYxT+xe/0ZyXH4m5LB1WoQxuuKCodDMEExWR6M/sd7t9J2Q/U8F7Ongdu7Va
         8OkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=C7nGXiuyWZpA6/jXSCahuEbpc9mR37jhFw4owsZCL+E=;
        b=ngh1oJkS0XV9PX2cRbGEQ5Y9Jieu+43HRGKTzUFtCLKR1sQ4J28oM0R5hlQdFk1+fQ
         cH22JWm38TOL+RseaGZhE48eZI4SWIoKB/HXKXdkUqht0oV4vKM/716voCoANivvBkde
         S/e/6ZytdtAw4fzT8vKQ76EN5Y9qf2tJq1n+s14ZT8Dqj6hA5X/dZoxFMuzWEuN8fwOO
         RgIAlX3QFyaUfc8FSKb1eNnv3aoWFSp3nImXlyQWu3YeFK10gM2+hJZvOh3TOV7syFAP
         p9qLCVgJBuoNrSLa7xNwn8xlXhvKWpIqUz3iDnZCaj6MPiPPgWPrlQnDzlDSaJGBnMo8
         GvMw==
X-Gm-Message-State: AOAM533TJw+Tv8zdrKkYPPw9KvWul8QQDfXbkOKEZ8EhYV0FG3UrAcuF
        6yBr8nqZammzE5BlbxXVIh2AdJLWQSAnziaiglE=
X-Google-Smtp-Source: ABdhPJzDZRg6lmcv2kSoOTFuzbctlnHXAq/pLAxzZKkjZkRp47VU3Mr1j8s4cJYyGhdhfHlKripV9dbQV54zaR8IRlM=
X-Received: by 2002:aca:4f4d:: with SMTP id d74mr2390447oib.159.1612515481103;
 Fri, 05 Feb 2021 00:58:01 -0800 (PST)
MIME-Version: 1.0
References: <6336a172-6bc5-bad8-21a4-0309a83728e7@gmail.com>
In-Reply-To: <6336a172-6bc5-bad8-21a4-0309a83728e7@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Fri, 5 Feb 2021 09:57:49 +0100
Message-ID: <CAKgNAkg=Eqd5QDkdWhecSq-0=Q8tnRm3yR_=5gsoDuxXQbpMYw@mail.gmail.com>
Subject: Re: outb.2: What to do with prototypes?
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On Thu, 4 Feb 2021 at 13:59, Alejandro Colomar (man-pages)
<alx.manpages@gmail.com> wrote:
>
> Hi Michael,
>
> What would you do with the prototypes in outb.2?
> They are different in glibc and the kernel.
> However, since these are functions to be called mostly withing the
> kernel, the kernel prototype is more important.  Would you use the glibc
> one in SYNOPSIS, and then a C library / kernel differences with the
> kernel prototypes?

Are the glibc APIs wrappers for the kernel interpreters?

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
