Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 96FB34A6539
	for <lists+linux-man@lfdr.de>; Tue,  1 Feb 2022 20:57:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234329AbiBAT5F (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 1 Feb 2022 14:57:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234118AbiBAT5F (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 1 Feb 2022 14:57:05 -0500
Received: from mail-ua1-x929.google.com (mail-ua1-x929.google.com [IPv6:2607:f8b0:4864:20::929])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4393C061714
        for <linux-man@vger.kernel.org>; Tue,  1 Feb 2022 11:57:04 -0800 (PST)
Received: by mail-ua1-x929.google.com with SMTP id n15so15195728uaq.5
        for <linux-man@vger.kernel.org>; Tue, 01 Feb 2022 11:57:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=z81dlSJYQ6mveNZZcZMi3VdrH6/u0QLc5DV/lOtABqk=;
        b=RSxBjbk5CXGD0A24hozQ77dq4QKQITg6XVZGiwUw0wW3NRcr5PuCgaQ9vmyIdm1Koj
         IMkDFqhwnUQmNBRzaQ9F4emcVc7FOOAn2OipAwpjzoQQ66YOFC/cCzr+EiPprtSK/87h
         2qIle1E0vB3PvxqAYwovAAtBaQdL29CqJvzCeyLK9tk+2yIxMK7HvCad72cnsA9dVgI0
         2weBeqBLvpjIuHLIDLMjK5DBcm7B2e7RbNem8dZJWMAF9vFmPYAt+0W1oaxK12hEZSlm
         1QlD5463euATFYCwZpouQ4Gf4dxRW3XgZ+Jt+z/cELah4SlgDwvTTzLkgkfF3Nonl996
         yxiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=z81dlSJYQ6mveNZZcZMi3VdrH6/u0QLc5DV/lOtABqk=;
        b=TIlhSauhgy6VMvqLKgcYDtj65uAfjkrk0tCvADFmkd4LHVHf8RguKxpaKKLEITbURC
         8lpeWXQv3HZjroI7I5o1ikn49G6zgHm+9Aarxu7WwqtPed9HHHTUQ1BZMcKGVKUi0Dr3
         MfDO5qfayUeScf/AeRzWs6hxNjFPGM6qy3icSa95tx7+apEd3EO2XjQsU+XRlqBnrjNd
         mlqGSwzugUeDPCM1uFXU0YtPcpLrOK4GSUN3W+q0nH+Ur9Y5inxff6Lf4QFz+EejXaUk
         R8M5sRetwEIGK8FdOjnWAL/ox0VW+VPa2KUb+S5WN677s+fwpebDcK8C2bX3GMRoMcNl
         fd2A==
X-Gm-Message-State: AOAM531TidbE5KX0j7i8PN4JoVJq59yxNbu0ggUJ7S8L8iRarMPt1BVx
        NB+IGdUn9KT8l5xtWPu7JN5ckfGwLrquPmsIBH8=
X-Google-Smtp-Source: ABdhPJyRbakF1vO9hyvfSzt2bF2Rek3CoW2GeXzLrHzl/K9yDRUvDZcN/Xe3ydFEnOJxDt8dzmb+EERhXWVbwERzxis=
X-Received: by 2002:a05:6102:3f02:: with SMTP id k2mr10252354vsv.20.1643745423879;
 Tue, 01 Feb 2022 11:57:03 -0800 (PST)
MIME-Version: 1.0
References: <CADVL9rE70DK+gWn-pbHXy6a+5sdkHzFg_xJ9phhQkRapTUJ_zg@mail.gmail.com>
 <55d40a53-ad40-0bbf-0aed-e57419408796@gmail.com> <Yfh/E5i/oqhe6KsQ@casper.infradead.org>
In-Reply-To: <Yfh/E5i/oqhe6KsQ@casper.infradead.org>
From:   Mathnerd314 <mathnerd314.gph@gmail.com>
Date:   Tue, 1 Feb 2022 12:56:51 -0700
Message-ID: <CADVL9rEWuAyNtSOM2JWhPk7Q1D9pF0amTg09rYw0T1ZSXi5zYg@mail.gmail.com>
Subject: Re: EINTR for fsync(2)
To:     Matthew Wilcox <willy@infradead.org>,
        Dan Carpenter <dan.carpenter@oracle.com>
Cc:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, mtk.manpages@gmail.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Jan 31, 2022 at 5:30 PM Matthew Wilcox <willy@infradead.org> wrote:
>
> It's probably worth reading this part of POSIX:
>
> : Implementations may support additional errors not included in this list,
> : may generate errors included in this list under circumstances other
> : than those described here, or may contain extensions or limitations that
> : prevent some errors from occurring.
> :
> So while it's worth adding EINTR to the man page, I don't think it's
> worth going through an exercise of trying to add every possible
> errno to every syscall.
>
It's true that POSIX's error list is purely a guideline. But that
doesn't mean Linux can't specify the precise set of possible error
codes. There are currently 133 error codes defined, across an equally
large number of syscalls - coding defensively and handling every
combination is impossible. Not to mention that the meaning of the
error codes differs from syscall to syscall. But with precise
information there are likely only 5-10 codes per syscall, so handling
every error appropriately is feasible. So the information can be quite
useful.

I agree the lists would be too much work to create / maintain by hand.
What about a static analysis script that walks through the call tree
and collects the set of possible error codes for each syscall? Dan
Carpenter, is this something Smatch could do?

-- Mathnerd314
