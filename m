Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5197A20DEFD
	for <lists+linux-man@lfdr.de>; Mon, 29 Jun 2020 23:53:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730103AbgF2UbY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 29 Jun 2020 16:31:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387492AbgF2UbB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 29 Jun 2020 16:31:01 -0400
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com [IPv6:2a00:1450:4864:20::544])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 483D1C061755
        for <linux-man@vger.kernel.org>; Mon, 29 Jun 2020 13:31:01 -0700 (PDT)
Received: by mail-ed1-x544.google.com with SMTP id e22so14122979edq.8
        for <linux-man@vger.kernel.org>; Mon, 29 Jun 2020 13:31:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=Zji6wMculjsm4q5vy/M56MNYOngVPZ1bs2mBGpSYh1I=;
        b=O+fcB60m7DJatC9FCbf9ddKDxYeZcadauIWAZyYU7ef1OUpCa2bowXIkRg27u3mjcr
         1tQdjtnTAt0Z/HfKRTyAmmNK1Gzaq0ge3qO+McmnGI+H2Yri2o+fcoHM/ENReqermPTl
         +JCN8HSQ2j6syZgG0/+daRsNCScOAOH4Ef+24AZV3ExYnyPDeq8T5ROoTQ1qZDknWVyJ
         Q++uvwHAAnU14UJYI4AThenpXkOcO7pDdbRRZPE/Og0N1g+Y9tmXHLIvpVEKNC+EbmZk
         a0VlOm+mRY7SBe5Z0XxNeP6qk96kV+cYjpWMMNBo6/QhxKxRdFb9BXrcz2M8yaU8Ma1X
         AAMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=Zji6wMculjsm4q5vy/M56MNYOngVPZ1bs2mBGpSYh1I=;
        b=IchRTqitr3j7hpfQg1A/cfdbgfAdBlsh1OAEMFNUZax/JIpXLJ/hq8Af4yWdq770d1
         Lmp39hxq1+Kx8SFtkMCofvFv2ADKKLbZziyO6ik32IYZOJ4ZsiGN5f/q2/k5BLx1d4M0
         x/nRc4HTysm3Lg+0cQVaxJDyRE3P1MTcnQvM7/Q9PNvRqFpEtijhCV/UGO+T28MhRlkN
         nk53yhiyC262WX8UVp1RUQ9sERFYXGHR7hUCpNVMNLtGrpIFeYQ4knRhmmTk+j7iOI7p
         wh6oymdODoHJKY7WR1k8tU6UCXOetAzQKXehF+IcK0OqOJqZUs6riAL7Fj4BBMlFr2Ep
         51KQ==
X-Gm-Message-State: AOAM531X6Btx7OGorg86pHbc9JgM/9fIA/HwfEIvgI0w2p1gre1E9iTr
        YnuoFvBehcqeNj+rvKXGu1HcLQWcIYwgqqtLnIJOGf9G
X-Google-Smtp-Source: ABdhPJziprvOAvf1IgWfsUBdTabsZ9HcRr04/p216gpzx/d6PCZF/REyPA/KPUth5OZA59+b6psz4h+FKIsw/SLl0/c=
X-Received: by 2002:a50:9f8c:: with SMTP id c12mr16383781edf.149.1593462660026;
 Mon, 29 Jun 2020 13:31:00 -0700 (PDT)
MIME-Version: 1.0
References: <0608691a-6400-0a44-1031-a693f57dee52@jguk.org>
In-Reply-To: <0608691a-6400-0a44-1031-a693f57dee52@jguk.org>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 29 Jun 2020 22:30:48 +0200
Message-ID: <CAKgNAkgH4L-_A0LqqYyk621EmRqDOqAbG80gR-bu4Fk6jcEskA@mail.gmail.com>
Subject: Re: strcpy compared to POSIX strcpy
To:     Jonny Grant <jg@jguk.org>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jonny

On Mon, 29 Jun 2020 at 15:41, Jonny Grant <jg@jguk.org> wrote:
>
> Hi Michael,
>
> Returning to an old topic, noticed strcpy man page is different from the POSIX spec with regards to "terminating NUL character" or "null-terminated" shouldn't man pages should follow POSIX style writing "NUL"?
>
> https://man7.org/linux/man-pages/man3/strcpy.3.html
>
> https://man7.org/linux/man-pages/man3/strcpy.3p.html
>
> https://pubs.opengroup.org/onlinepubs/9699919799/functions/strcpy.html
>
> Another function even has nul in the name
> https://man7.org/linux/man-pages/man3/strchrnul.3.html

It's not so simple. In POSIX/SUS, you will find variously:

terminating NUL character
terminating NUL
terminating null character
terminating null byte

There's even one instance of "terminating NULL character" (in
<net/if.h>; I estimate it's a bug).

In the C standard (C11), "terminating null character" seems to be used
exclusively, but as I understand the C standard [char == byte] by
definition.

I've tried to consistently use "terminating null byte" across all
pages in man-pages. See also the discussion in man-pages(7).

Cheers,

Michael






-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
