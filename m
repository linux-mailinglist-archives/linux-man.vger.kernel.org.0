Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 66721320707
	for <lists+linux-man@lfdr.de>; Sat, 20 Feb 2021 21:15:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229810AbhBTUPY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Feb 2021 15:15:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229808AbhBTUPX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 Feb 2021 15:15:23 -0500
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com [IPv6:2607:f8b0:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 114E9C061574
        for <linux-man@vger.kernel.org>; Sat, 20 Feb 2021 12:14:43 -0800 (PST)
Received: by mail-ot1-x32e.google.com with SMTP id b16so8471953otq.1
        for <linux-man@vger.kernel.org>; Sat, 20 Feb 2021 12:14:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=OZ5hI92SDYj7U93ZGPfNpN9S8pDNxg/4bPS9CKLzhbE=;
        b=Movk6ITvUOwWnfiIzJgaDZVZVUCI+Y0PFL6YV7SMG6nmTlIJVQbo13NMtDVzlLZPE5
         9hvL0zB61rWn85rYOEU2kW6YlQ1ZtsZlTa/MRZfTXxImNuWVxCO3nYejuuPJSOMJlFH/
         0G9YYW+KumwoOaQQIhtUggRvzGML0Hpe8GsIyWs7BH+7L60nSy51+UKI+sJHbtn7WtX5
         ta47b3091ENAuivOuSlfq71YGz+cvUrfKdXmqNxMFm2zk/cTBXw6lkv1DIObkm2Gs3bA
         911xcLWfr0+JkxcCl7RC7gL4qkooRlS2ggc+mV2g1B9qqdI9FftI+lvSoKIou/5XN4WV
         c9Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=OZ5hI92SDYj7U93ZGPfNpN9S8pDNxg/4bPS9CKLzhbE=;
        b=qGLlRH+1gAmw90TVezDKP4maO9+GqTZ3c4ROh9IhA2pR8iLr7PMriEnObzWUzkZ3Xj
         hhsE4mnx8YGdFLbCYpqYKVFszZFkGmcIowqKFevg8QpGP+k6w23UliV9pN91ziORZWVz
         An+ekHPAiUoV290k/gA88OyseVJM4tgZx0D1jRrvfoHynZo3tNOc7IF41gD/doa1HH6U
         HS+GNaIcGxybwDkL2iLYkKuCW4RGmSHDxyBLMske/p42wTXQluBPAMBVxy4InDYT2kdI
         XFNKQnEcnV6+QABqhcTTArDAUTlBUy9ftYpD0pLNp7sFQNrGPhQlsnMT7gtDAugvYAfJ
         XTtg==
X-Gm-Message-State: AOAM5324QZdtxx06qId39WhcvTeGeD/SlrjaN4yHZNLJ3aD0dGnJguM2
        QGZI8zM1jujx0WJZznRAWwlWI7we2XaUQNU8duc=
X-Google-Smtp-Source: ABdhPJzHlZxnQ3Ka21zET8tkarO1zXKpJDBm7Jj8Aa+/wfh92vBtsizH79amOjlenQ2uMTquz6yP4By3i7gwDfTGPKc=
X-Received: by 2002:a9d:dc6:: with SMTP id 64mr12312165ots.114.1613852082401;
 Sat, 20 Feb 2021 12:14:42 -0800 (PST)
MIME-Version: 1.0
References: <268231613796665@mail.yandex.ru> <4c169a8f-4368-3423-1af1-e7f6ba7df8b9@gmail.com>
 <90ba66dc-8c1e-fea9-20f5-16ed65535d00@gmail.com> <e9e55f48-104a-703b-9d15-939daa04cf6a@gmail.com>
 <379711613836030@mail.yandex.ru>
In-Reply-To: <379711613836030@mail.yandex.ru>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sat, 20 Feb 2021 21:14:31 +0100
Message-ID: <CAKgNAkiOYs5iCYmJe6ZnLYHzpf_rVzLm9=9ZKre8V0RV0Zq1cA@mail.gmail.com>
Subject: Re: exit: Bug reporting
To:     Dave Chupreev <cdn.dev@yandex.ru>
Cc:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sat, 20 Feb 2021 at 17:18, Dave Chupreev <cdn.dev@yandex.ru> wrote:
>
> Thanks a lot for such explanations. Just to make sure.
>
> There are two system calls:
> exit and exit_group.
>
> POSIX standard specifies 4 entries for section 2:
> _exit(2) - this is direct calling of system call
> exit(2) - eventually it does the same but with additional actions like clearing stdio buffers etc.
> _Exit(2) - the same as a _exit(2). It is created only because name should be started with an underscore and an uppercase letter
> exit_group(2) - this is for exit_group sys call.
>
> C standard specifies these wrappers:
> exit(3) - as above
> _Exit(3) - as above
>
> And everyone understands that as it is and think about it in such way.
>
> Am I right?

Nearly. POSIX specifies _exit(), exit(), and _Exit(). exit_group() is
Linux-specific.

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
