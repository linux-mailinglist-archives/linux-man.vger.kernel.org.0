Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 41BBA382276
	for <lists+linux-man@lfdr.de>; Mon, 17 May 2021 03:04:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229948AbhEQBF4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 16 May 2021 21:05:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58152 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231355AbhEQBF4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 16 May 2021 21:05:56 -0400
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com [IPv6:2607:f8b0:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E49C8C061573
        for <linux-man@vger.kernel.org>; Sun, 16 May 2021 18:04:39 -0700 (PDT)
Received: by mail-ot1-x32a.google.com with SMTP id t4-20020a05683014c4b02902ed26dd7a60so4215395otq.7
        for <linux-man@vger.kernel.org>; Sun, 16 May 2021 18:04:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=fuDMhLkaETQY9xHJS98X3MowdQ8vPg67b7SQcvMvG8c=;
        b=seDv7zxTi+iKyfw6raCPdp+tOlpZHHtd+1Wf4i3KPBVYdwmKhh4rmxvnINtPWqpE41
         UXcb3xSkrFf6IqvNJPdNDnJmbfRgoJYDjIhgTJ9jkVfqBTm+u3R80k5KSRrQURnI+krs
         /D4DX8Mwzqkxf76bT402BJiFcGs1ZipqjhXkrlSGqbAh75Vk+T2OBYstx2wOFyCcJ1Yq
         hClkc9awrqXB9Di+1iW8DnZvTP+PAz8NZkG7jQhFgsBqumkgVRr2kNu2NHSky8NFG4Nx
         9vROfhlryT79S5l4YAZDF9MJEl5HHd3xFvtpYUXJ6HH6CuFz73x1SlaMv7nHSMHbfVK/
         0WmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=fuDMhLkaETQY9xHJS98X3MowdQ8vPg67b7SQcvMvG8c=;
        b=J5NoNVrBwnlqA3pJuZOGMshfXqGk0FZFhl8eVwAiM1fT9H3LQzw1L8GVsbQBa8uNmh
         gisuVb6/k2f9bpBYOtaUHXFmmWuQ2vBupj50GnqhkOqbfHYL0dHOEX2i9reX1EALiXf3
         DwLJM447oi+mrw2ozl2XTdtFBEZQ7Cv7SEzFtteHfXo+BJfRj0cJHU1Fd3KY3YVJdoL6
         X7EwPaEJtYOKMlevQaU6WypS45c3W2W7jnHXpeFDkzgg0fmMipP7QxqrMyftowbTP/Kl
         Ohkf+4EjriI+u91cB/MHQ8dhBtMFltrKJVd5PNLOtdhdyl4nkwi9gT8A2QCNoD1XBPRt
         ryEA==
X-Gm-Message-State: AOAM531uUzBL9UYNQMOyHUGaaDmg+noO5XpY0FmqOuhWwqpxzKVEZ6Q6
        tKOHqxjyWlVXm5w9qkSLGPndSZOKrBsR3hHevVfipz3J
X-Google-Smtp-Source: ABdhPJwGJelcGHEqhAjWAu7dAR+Sd8k42dQnNi3O94PesbJpauus/5/oti/T4rp83hGoOjVg1f7EGg1AFe8SeA0yHxQ=
X-Received: by 2002:a05:6830:a:: with SMTP id c10mr39897622otp.114.1621213479359;
 Sun, 16 May 2021 18:04:39 -0700 (PDT)
MIME-Version: 1.0
References: <cb816b17-df1e-8cb9-5847-1626571f7929@gmail.com>
In-Reply-To: <cb816b17-df1e-8cb9-5847-1626571f7929@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 17 May 2021 13:04:28 +1200
Message-ID: <CAKgNAki3XKdOdNrs9cG6P0A=ggSATeAGfXob1Ct1dy83SuLjeQ@mail.gmail.com>
Subject: Re: system calls not intended for user space
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Fri, 14 May 2021 at 07:25, Alejandro Colomar (man-pages)
<alx.manpages@gmail.com> wrote:
>
> Hello Michael,
>
> There are some syscalls that are not intended to be used from user
> space.  See restart_syscall(2).  Should I document those as
> syscall(SYS_...) or not?

Yes, this function is an odd case. (Are there others? Perhaps
sigreturn(2) also.)

I think I would just ignore these two. (That is, no changes.)

> How are they called within the kernel?  As
> sys_restart_syscall()?

I'm not sure of the details, I'm sorry.

Thanks,

Michael
