Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9B1CB69CF68
	for <lists+linux-man@lfdr.de>; Mon, 20 Feb 2023 15:30:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231705AbjBTOaJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Feb 2023 09:30:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231661AbjBTOaI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Feb 2023 09:30:08 -0500
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A06C199D6
        for <linux-man@vger.kernel.org>; Mon, 20 Feb 2023 06:30:07 -0800 (PST)
Received: by mail-ed1-x532.google.com with SMTP id ck15so6671648edb.0
        for <linux-man@vger.kernel.org>; Mon, 20 Feb 2023 06:30:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=SQQ3UkckJf4RgV7knYHkYINVlF25Vumf5AvQWuX77Mc=;
        b=g0o1ifgSGQSaTaf5X5nYMFMuh71VtD4xZdPgaoZeFXXXpvGRij9fDYG71KVM6hViUg
         c4FzxSiyoMk8VcTVAzyOQC4cixVsLJ6YmXpvOvC8kGUMnr1N1C8uutMPE/+45IYA0AsC
         G83jRjVwtm1O+ZzVqZqeCuw/duEQUUp5u9F+tKz8g9EjQ9Qh3PZ6tliyyaMzrqE60WKI
         9DX1ureewNyffkatoeaVXLv5/hmx86iVYwwkENBkG+eF7pnZk+7xz18DMVRq4nvd0PVb
         YnKgudyiq93qcvnmM0a5xJk+F0j3oxuGFZ39ztWQLMwsMmk74vAuU7tklg/1ejebBycM
         umKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SQQ3UkckJf4RgV7knYHkYINVlF25Vumf5AvQWuX77Mc=;
        b=vwKR6R28+v43BWK1WaA8DS44hTu6LY8dd0+NweHGCcScWEAoeoxWx2e6XAoZ0de6jW
         gxpbNkudkXst23LdeDbkfq1MW58e0ZIUqZbLzt/4LBrW/9tMq2kh6MXa1w/424WzWZY9
         vmVt0WxzQwpwc2w72N/X3PO/+rQJ/fR58/jeFTP755xNKtKRq3/rSmOqMd4wYMRm7M1X
         z04gJ45UTYp0ypD5iVZPsp9UNeJVplUVBhZ0dRtelzF+GCkA8PorO2m3v0cs6wOvny/H
         39KPQ+N6LKzA4BMz7pbi8K+3ZySdcv1EN2wBU5wwfztinWAlBhcvf04BJrA3nfRL/k3H
         NZ8g==
X-Gm-Message-State: AO0yUKWRLRkY6vT3tforHaUtX679ltIKOG4pxnbC7h7989PBf946JB2j
        RQ4WQ0ZbCxpz077bVzT2a+DWJ2cS6iA+vIE3aUc=
X-Google-Smtp-Source: AK7set9yUoQTkjaluXBjxmNabyHtujrgqAzZIYtZBItXCSsLT40cYrDxQi5EztsMhMOjMqup6TxLxeAy/TcNm7gYAlM=
X-Received: by 2002:a05:6402:500b:b0:4ad:739c:b3ac with SMTP id
 p11-20020a056402500b00b004ad739cb3acmr526682eda.1.1676903405951; Mon, 20 Feb
 2023 06:30:05 -0800 (PST)
MIME-Version: 1.0
References: <cover.1676489380.git.Brian.Inglis@Shaw.ca> <4a3350ac873f45df96abf9045cfe1605839f490d.1676489381.git.Brian.Inglis@Shaw.ca>
 <CACKs7VB672Ka6GJQmVozS6n1kR+g8LoDuLtw1XuwSjKsttFBTg@mail.gmail.com>
 <cb47e19b-ba02-da3f-b253-ee8ddec28aa8@gmail.com> <CACKs7VDaAX=qZh9fhn9wa5L5c4xegF0q+ZDBbzE9KTY9pPN+mQ@mail.gmail.com>
 <ed3e2487-2b28-e205-b1aa-c65cb54843ce@gmail.com>
In-Reply-To: <ed3e2487-2b28-e205-b1aa-c65cb54843ce@gmail.com>
From:   Stefan Puiu <stefan.puiu@gmail.com>
Date:   Mon, 20 Feb 2023 16:29:54 +0200
Message-ID: <CACKs7VCWsF+Pvso-H0VhTr2HFWUBs5JJ=m6uCJ7yB_FPY9g5Bg@mail.gmail.com>
Subject: Re: [PATCH v3 1/6] man2/: use IEC or ISO multiples to clarify long
 numeric digit strings
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Brian Inglis <Brian.Inglis@shaw.ca>,
        Linux Man Pages <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Sun, Feb 19, 2023 at 11:10 PM Alejandro Colomar
<alx.manpages@gmail.com> wrote:
>
> Hi Stefan,
>
> On 2/17/23 15:05, Stefan Puiu wrote:
> [...]
>
> >>>> diff --git a/man2/add_key.2 b/man2/add_key.2
> >>>> index 56fc6d198d21..215de20baeae 100644
> >>>> --- a/man2/add_key.2
> >>>> +++ b/man2/add_key.2
> >>>> @@ -167,7 +167,7 @@ The size of the string (including the terminating null byte) specified in
> >>>>  .I type
> >>>>  or
> >>>>  .I description
> >>>> -exceeded the limit (32 bytes and 4096 bytes respectively).
> >>>> +exceeded the limit (32 bytes and 4Ki bytes respectively).
> >>>
> >>> For what it's worth, I find 4096 much clearer over 4Ki (what is Ki
> >>> anyway?). Ditto for 32768 / 32Ki etc. What are we trying to achieve?
> >>
> >> In this case, we should rather use 4\ KiB, which is standard.
> >
> > Maybe it is standard, but why is 4 KiB better / more suitable than 4096?
>
> 4 KiB is not that much better than 4096, since 4096 is easy to read.
> For higher numbers such as 33554432, it becomes more important to use 32 KiB.
> For consistency, using 4 KiB seems reasonable.

How about using KiB / MiB over a certain number of digits? It seems
excessive to use them everywhere.

Also, for the record, I had no idea what KiB / MiB means and how it's
different from KB/MB until this discussion. I googled it before
writing this reply, and found this among the first hits:
https://ux.stackexchange.com/a/13850.

I would say making the docs easy to understand for users is more
important than adhering to some specs users might not be familiar
with.

Thanks,
Stefan.

>
> Cheers,
>
> Alex
>
> --
> <http://www.alejandro-colomar.es/>
> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5
