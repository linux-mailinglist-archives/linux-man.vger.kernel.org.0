Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6F8771B062E
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 12:05:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726020AbgDTKFR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 06:05:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36790 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725773AbgDTKFR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 06:05:17 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DAB4DC061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 03:05:16 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id n17so7416563ejh.7
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 03:05:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=E+zc/jYddfIUqbihvsdSQ0pWFei37yuSsRGxsVHfFv0=;
        b=agp6TXpqkRGa/G1S5R1PWv8cL8SFcTXVZklv1dn8hAzZUl63ykF/ztdMdmTUehNV6p
         6I1yUzVz5oaDvtfU2ULWCxO3fKp6DLaNmpRD8jeZOtWoDMX+9QOJRtKAThP2uuWCSfiH
         8kCcrcMh8svuTxPfeDemTNw9HvCs9FZFEp/FfFp6U17rvv05Bc6BqGAG95y/Bw/bufCT
         TqFpXe6wuIQK3MMiZ2lt3qCaGTLLu4ITF+fcSp8iQPv/2lzrqcGxrV2M9OwbyFb7dfgI
         MDBIr5CUo1FqOSYzh3V9fBNrcbxS8/laPvyw5qFliwroWCy0NgWKzQKbbz8myYkp3xmr
         EHuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=E+zc/jYddfIUqbihvsdSQ0pWFei37yuSsRGxsVHfFv0=;
        b=RHQG8MRmlSFXhIgnDnhfcMQQEwypYSDp3kCGVdNkayjckyOH6QBH3GTOfi6LM50upb
         UaQFCEQyBVGkCd0Gqtgv07UtlL+Y03A21dqctwAv9wdLFQGi+D03V6RPr8GIcnIzvACY
         NP3voej9TzxTy7tmM8LvwxU1VGaK9E0H31WFnIdzGO4xjRwHvEqMC/k+AhP4bu+kRnW1
         D4fmvxTMl7rJPOfd7V+6ijQ0jhKm0YMkQw9du4MbzZBl/WdGnPJvBSPzeTACgLK0Zq2C
         aNjdSpY1mjQW6Gm9tuTAWojtptUHV2YrQ1+Fm/aZmyR6ZH7D9te0op6pGUtVxPvW1K8H
         acHg==
X-Gm-Message-State: AGi0PuZYTQ2BW+kvFMN994NSr16M01VWFo6sE6ZItRD8GKIJ1ItLY3nW
        OZGq4KSfFeLXHHOCmHfM9cCBb1FSk/+WyetzU9cSgw==
X-Google-Smtp-Source: APiQypLuB8G2nCiGyVaCcv9FJMHxmF/OT+6xcr0XUaacWT9wh4UZk0uXJM3QpvgZ33EUQGfSwCPWSuX+7kiggSjDf2o=
X-Received: by 2002:a17:906:2488:: with SMTP id e8mr15389958ejb.157.1587377115526;
 Mon, 20 Apr 2020 03:05:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAHVhoEfFzzve8Jy+3Jk6w40D26fSQXQrqKYsX6rf0qvZ6Ce1cw@mail.gmail.com>
In-Reply-To: <CAHVhoEfFzzve8Jy+3Jk6w40D26fSQXQrqKYsX6rf0qvZ6Ce1cw@mail.gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 20 Apr 2020 12:05:04 +0200
Message-ID: <CAKgNAkh5xUZGTpSn58GsZaMoFzkvRp+-i7eHzyz8LjHOWSjWSQ@mail.gmail.com>
Subject: Re: [patch] add man3p pthread_once posix manpage latest 5.06
To:     Scott S <ssimmons9999@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        =?UTF-8?Q?Nikola_Forr=C3=B3?= <nforro@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, 20 Apr 2020 at 01:12, Scott S <ssimmons9999@gmail.com> wrote:
>
> man-pages-posix-2013-a-pthread_once.patch
>
> From 0409c3370ddd08cec10586f6f52fe1fbe3c717ef Mon Sep 17 00:00:00 2001
> From: =?UTF-8?q?Nikola=20Forr=C3=B3?= <nforro@redhat.com>
> Date: Tue, 24 Jan 2017 16:35:02 +0100
> Subject: [PATCH] pthread_once.3p: fix return type of initialize_random()
>  function

Please explain this change.

Thanks,

Michael

> ---
>  man-pages-posix-2013-a/man3p/pthread_once.3p | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/man-pages-posix-2013-a/man3p/pthread_once.3p b/man-pages-posix-2013-a/man3p/pthread_once.3p
> index 316b1e9..db83d63 100644
> --- a/man-pages-posix-2013-a/man3p/pthread_once.3p
> +++ b/man-pages-posix-2013-a/man3p/pthread_once.3p
> @@ -86,7 +86,7 @@ on entry to a routine, as follows:
>  .nf
>  \fB
>  static int random_is_initialized = 0;
> -extern int initialize_random();
> +extern void initialize_random();
>  .P
>  int random_function()
>  {
> @@ -125,7 +125,7 @@ becomes:
>  \fB
>  #include <pthread.h>
>  static pthread_once_t random_is_initialized = PTHREAD_ONCE_INIT;
> -extern int initialize_random();
> +extern void initialize_random();
>  .P
>  int random_function()
>  {
> --
> 2.7.4



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
