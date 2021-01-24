Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 50004301F3D
	for <lists+linux-man@lfdr.de>; Sun, 24 Jan 2021 23:31:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726007AbhAXWa4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 24 Jan 2021 17:30:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725968AbhAXWaz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 24 Jan 2021 17:30:55 -0500
Received: from mail-oo1-xc2d.google.com (mail-oo1-xc2d.google.com [IPv6:2607:f8b0:4864:20::c2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A9AAC061573
        for <linux-man@vger.kernel.org>; Sun, 24 Jan 2021 14:30:15 -0800 (PST)
Received: by mail-oo1-xc2d.google.com with SMTP id n19so1469254ooj.11
        for <linux-man@vger.kernel.org>; Sun, 24 Jan 2021 14:30:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=6O75nBI5d3OJh/jKtILs8lE1SjHqY9sWR/npF5axLB4=;
        b=O/L/D+DO5afwqx5kC188QsN5I4uSJvR/8IWVovePX5BYVeYBiOJIngbfCdbwZztjze
         wwV7mJ6+EbxvNT6f9+TFyTvtq94L16MvAP0wiHpXF6D338zu2161ceVatLP3klt5Qmwv
         SbVssa2Xbi6qase2xTDKC0dnpiSvqxFJUbQne+QMPORpKZZWf5nZFvd9JoHufTSf6uQ9
         LKPqH8HFh+jwCPkDn/fnMqMKn1Z9EslZisQYhL5zlQuhMrbUlh6gb4v1C26ihEMb5h5C
         lG0gkFsLPtpgX5kbEmIG3qXRiqurdel690XDXTYFP2gXxbcMI1v2ZWRjJxioXNDH6cz9
         wJew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=6O75nBI5d3OJh/jKtILs8lE1SjHqY9sWR/npF5axLB4=;
        b=HOPTqpCGyCwKaO1kQXZkV9ETLgNal9pihQi5ttZ6tORUxD71+mrY7B0THrVFP2D1lD
         C6kG5DyVRLwI5zJ5N2jHb9SrMtIxUm3zYeedLwlr1z9wh/w2zqXBJ0WTFJyabIYK6jOi
         9/4NYEx495Ff7G8bmPRzEjaoY043KgjJDhOZAOuKqGfr3NakVTshzIsinkC+A+OKxrQ8
         lc1FTxyMsE7QokGnLisw1o6l6MWkkwToTu/sItY4j4Bd+W5y7ZRvGinxx/ZPT4wqZcUD
         VHWvR49WWxYLBe2NUDZmYTSZ+3bJRWWUvnTFb2/wN7ekW3+e1lNKZVYi34mx8Lr8n3lC
         VE6A==
X-Gm-Message-State: AOAM532kyzwm0L8HOhvDjHHNn82748kKfNVKj22GOhcvEW4krHQ4tpor
        GQ5eFtK+kan5GzqLW02sqnNImX2p5xjDGLO4opc=
X-Google-Smtp-Source: ABdhPJws2UVh5hhLPKCPo31jpBmurid0vF1mFScgZ0m2wVmu+nwRNW2CNPTsbNPfmf3KsNlxFeCtS59rYWezIrHA86s=
X-Received: by 2002:a4a:8602:: with SMTP id v2mr55458ooh.80.1611527414263;
 Sun, 24 Jan 2021 14:30:14 -0800 (PST)
MIME-Version: 1.0
References: <20210124151035.70536-1-alx.manpages@gmail.com>
In-Reply-To: <20210124151035.70536-1-alx.manpages@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sun, 24 Jan 2021 23:30:03 +0100
Message-ID: <CAKgNAkhHhwhhexkfOgmhEjyqz__L=qzqu+Ls5Ov1cTbnJbVY4Q@mail.gmail.com>
Subject: Re: [PATCH] fopencookie.3: wsfix
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On Sun, 24 Jan 2021 at 16:10, Alejandro Colomar <alx.manpages@gmail.com> wrote:
>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man3/fopencookie.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/man3/fopencookie.3 b/man3/fopencookie.3
> index e0aa257a0..35b01493f 100644
> --- a/man3/fopencookie.3
> +++ b/man3/fopencookie.3
> @@ -412,7 +412,7 @@ main(int argc, char *argv[])
>      mycookie.offset = 0;
>      mycookie.endpos = 0;
>
> -    stream = fopencookie(&mycookie,"w+", memfile_func);
> +    stream = fopencookie(&mycookie, "w+", memfile_func);
>      if (stream == NULL) {
>          perror("fopencookie");
>          exit(EXIT_FAILURE);
> --
> 2.30.0
>


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
