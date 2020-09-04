Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CC24025DCF0
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 17:13:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730271AbgIDPNj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 11:13:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38788 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730202AbgIDPNi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 11:13:38 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A20A8C061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 08:13:37 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id j2so7097822wrx.7
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 08:13:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=QXtAJkhoxNZU3JsWpZaLUcwvduqgq2fDNNFHPN0ppCo=;
        b=gdTDFXDZ/ZTs5bg6tikhLBsqtY6oXo9BGe2gLcgQPJEFsSRCCxLii6wIu5x7n3eFLB
         eafDG7TS75WxhD9roo6r2Nd8fnvgXK668LKhrvV0jMnFJWihlY0uOI7M/JtKZxs1Kb4+
         pYkkj/6aP+N6DEZGnI6UskHQSleWMSNPx2+VeG2y8T3vRI+qRDk+LeP4rJI5XAjZuFZF
         /CEZJ4CiNi6oij9vADNcI8PYxR4IfMKGfooS+aYEpTmsylcn4NZ/G2FGnTAsv4r/oCnd
         JEwrEf0NiE1tAmWls+VUr5kkuZi0KXjCB5K08XMNbrxYHaTUiz2rgu8TtumyVpJJFe24
         IqGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=QXtAJkhoxNZU3JsWpZaLUcwvduqgq2fDNNFHPN0ppCo=;
        b=ONvwox+TljAI9yEGZZy0eMpam/nJbHSURWv5SHoDHANEDUy7eAgbxzTxrZ0d1pC4/T
         Of+LD7VXjCCnk2+dnd9ALHEb/g+TyMGYDfChgrl70ymEBRvBTtTBaTwszMTVs9mVjThW
         2vGAPyI5Tz/v97SgpD7nub/pZPzEcfJzCVwF5u5CjdjEopORJkKIpU0Nx5rg32cXojkV
         3D8Ve3ZF2DaGP9loEUwqQpt85KSDheiLyBfiq9VfFLOjqmui+u4kTaC0x8ht2s13IIkG
         0AWP8VoDNy/JhTYgky0V/bH9RKXIiabFl2EcBlX23gs1BOo2B6rTHmfVwMvYomRAFIeW
         6wfA==
X-Gm-Message-State: AOAM532Lrq4615JdlQjs5meBX6u+xYMDrRCeFEU7BSIGJmbvvarAxPBl
        b9maUZ7MpQdAYEnQ2FFc+mi4O+hx9ws=
X-Google-Smtp-Source: ABdhPJy9GUt+N1rh3fQ9p4cWRnI5ARXBMv8kKR3B1wxENylUD2TenQo/XZb5E/KVpefWadlW/8IDTQ==
X-Received: by 2002:adf:8187:: with SMTP id 7mr8192275wra.266.1599232416317;
        Fri, 04 Sep 2020 08:13:36 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id i3sm11736504wrs.4.2020.09.04.08.13.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 08:13:35 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH (2) 10/34] signalfd.2: Use sizeof consistently
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
 <d084b7eb-a691-52e8-4996-5080af0175de@gmail.com>
 <CAKgNAki_wyf7dCShjpAaRLUeuL=+EFZYeVp0fY-EKHyOBW2hRw@mail.gmail.com>
 <d72263bb-7c84-3f33-ee44-a2cac2e2662c@gmail.com>
 <806999b7-8947-d350-2125-f04b69846f37@gmail.com>
 <d3537144-e4da-8359-bc08-4eaf8c7bd059@gmail.com>
 <9fcc512e-a12c-5b28-126f-aaf1854ed290@gmail.com>
 <2b288808-c840-343f-9e56-8097765e5528@gmail.com>
 <876dcc97-8151-7160-5eda-19307f0483c1@gmail.com>
 <462b75ca-bef8-063d-b6ec-d1c845fb1580@gmail.com>
 <d38d3644-698c-41e4-4d6a-5d999c0a3fdd@gmail.com>
 <26629635-bf4c-1279-314d-db92f11adbb7@gmail.com>
 <d38b1e35-2471-09a1-ad49-4509a30fd14a@gmail.com>
 <edf9e2a1-0612-437d-9fbf-e255e0d1df97@gmail.com>
 <c2636c53-e81c-881a-2938-08871e1b176c@gmail.com>
 <257c9374-3253-9091-c116-045ee16590c0@gmail.com>
 <40ba6e68-c2f6-649c-2225-6037e3c0c077@gmail.com>
 <afec3122-19aa-02f4-0850-7000552ceb95@gmail.com>
 <da654939-dcc2-e1f8-65d9-a873325d4609@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <fa7b648d-9302-eed4-9529-7c0975a7e047@gmail.com>
Date:   Fri, 4 Sep 2020 17:13:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <da654939-dcc2-e1f8-65d9-a873325d4609@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 9/4/20 3:44 PM, Alejandro Colomar wrote:
>>From 9a10e681849a57f75d89cf6943901a3df8097399 Mon Sep 17 00:00:00 2001
> From: Alejandro Colomar <colomar.6.4.3@gmail.com>
> Date: Thu, 3 Sep 2020 21:41:31 +0200
> Subject: [PATCH 10/34] signalfd.2: Use sizeof consistently
> 
> Use ``sizeof`` consistently through all the examples in the following
> way:
> 
> - Use the name of the variable instead of its type as argument for
>   ``sizeof``.
> 
> 	Rationale:
> 	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Patch applied. Thanks.

Michael

> ---
>  man2/signalfd.2 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/signalfd.2 b/man2/signalfd.2
> index 96d502a50..92e9fd7ef 100644
> --- a/man2/signalfd.2
> +++ b/man2/signalfd.2
> @@ -502,8 +502,8 @@ main(int argc, char *argv[])
>          handle_error("signalfd");
> 
>      for (;;) {
> -        s = read(sfd, &fdsi, sizeof(struct signalfd_siginfo));
> -        if (s != sizeof(struct signalfd_siginfo))
> +        s = read(sfd, &fdsi, sizeof(fdsi));
> +        if (s != sizeof(fdsi))
>              handle_error("read");
> 
>          if (fdsi.ssi_signo == SIGINT) {
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
