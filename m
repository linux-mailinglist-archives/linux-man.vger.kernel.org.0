Return-Path: <linux-man+bounces-296-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AF08E81E6DF
	for <lists+linux-man@lfdr.de>; Tue, 26 Dec 2023 11:14:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3745EB21D44
	for <lists+linux-man@lfdr.de>; Tue, 26 Dec 2023 10:14:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 305A04D5A1;
	Tue, 26 Dec 2023 10:13:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CQk3mcvz"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8753C4D594
	for <linux-man@vger.kernel.org>; Tue, 26 Dec 2023 10:13:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-55534e5cedfso204414a12.0
        for <linux-man@vger.kernel.org>; Tue, 26 Dec 2023 02:13:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703585635; x=1704190435; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=KlVs42NA+2B6j8XBOy+DCBKEc+75KlLgxGdB59IYpgo=;
        b=CQk3mcvzHNhO7wMu1MpfsaulBsltZaFfbgllYqqplRsWM5n70in3DEASATsHYUvYaN
         xky6W8EJ5NOB5SqEyOhqRf4v4e2yi/hNryjKGmx7dZMfoOwNsLOLR1qUeuPqTAbhTNRY
         GyIh917lIQGeoBSpz7sXakpcPFoadCVDWUJ6Fegza2M0lbgNly1yKyFbBevysw3MhaZ6
         F7Wha+K2shd24JV8cW2cooznxCjLUqragaX4+IRw8/WidEuHLuV9NZcTrqG6sK/z8eBj
         +KFq6Uu/7yTROS/X9yiu520zLcqzRahxP3D9ZjzO73hYf5OuBYahY+TEJ93oGOSI1bkC
         U3aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703585635; x=1704190435;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KlVs42NA+2B6j8XBOy+DCBKEc+75KlLgxGdB59IYpgo=;
        b=YmkOhpw6oCZ/WQLaDcv4fzfqLBLMeGyvpEAW+wgNmkSDB65UDROjTeA+l8pO1Vzgui
         OYGKCl3N6puWS61+yurtD5tUie51fmpwN3p9kdu4eqNsRPEXxYNB/Q7LvKgr+Bb4Uiiv
         FGtqclSf8uVKTWe+vKLbQPNy9H9SUj5I5JPUIr1MJ9xkfFuYDiCWBq84jcYc8q1p02sD
         AKhnSf8Un7CBpBDlD1UdKelZew9FZQAcW0QiwllE2HS4RacxRIHfv689rd3iWL1GS4AP
         6nJUgfUxB2bQ45zfpr61MOQZi5j8Z0xYaPySeI56lL2sOk5/1XcEHFD+wOSg48sOxO5q
         M65g==
X-Gm-Message-State: AOJu0Yw1N1j/pWFM1QwuGfiUhz/me2AsR4DwP+CqU8IVtcatUksf4Glp
	q+9cQq4KTmQPOmjAu+7gGNkG/vdx08bKGcYXutB2uUyWb7tI
X-Google-Smtp-Source: AGHT+IGjPi3Nf0uO4hPZhm6sg2k51lGW/iNxq2uLcR1dMvhpByKmOfvuZx97NgWEoWElPBuz5A+kj1QyIGJtRLRoRrg=
X-Received: by 2002:a17:906:410c:b0:a26:94ad:f508 with SMTP id
 j12-20020a170906410c00b00a2694adf508mr3322363ejk.52.1703585634708; Tue, 26
 Dec 2023 02:13:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <ZYqigLwks1bnwfIV@localhost.localdomain>
In-Reply-To: <ZYqigLwks1bnwfIV@localhost.localdomain>
From: rajesh <r.pandian@gmail.com>
Date: Tue, 26 Dec 2023 15:42:23 +0530
Message-ID: <CAKkEDkUmFuwZdjvAgNSr9=rGbCXoJt5_i0Z5w19unadqbjCKvQ@mail.gmail.com>
Subject: Re: [PATCH] : Fixing Bugzill ID 217709
To: alx@kernel.org, r.pandian@gmail.com
Cc: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

I fell flat on my face sending the patch while using mutt. Apologies.
I'll send it again later.


On Tue, 26 Dec 2023 at 15:24, Alejandro Colomar <r.pandian@gmail.com> wrote:
>
> The infrastructure of the list was recently modified.  Now, all the
> information to subscribe, unsubscribe, or other actions, are in
> <https://subspace.kernel.org/vger.kernel.org.html>.
>
> Signed-off-by: Alejandro Colomar <alx@kernel.org>
> ---
>  CONTRIBUTING | 16 +++-------------
>  1 file changed, 3 insertions(+), 13 deletions(-)
>
> diff --git a/CONTRIBUTING b/CONTRIBUTING
> index bde085a63..ef531231d 100644
> --- a/CONTRIBUTING
> +++ b/CONTRIBUTING
> @@ -42,19 +42,9 @@ Description
>
>         Subscription:
>               It is not necessary to subscribe to the list to send an
> -             email.  If you want to subscribe to the list, send an email
> -             to <majordomo@vger.kernel.org> containing the following
> -             body:
> -
> -                 subscribe linux-man
> -
> -             Unsubscribing:
> -
> -                 unsubscribe linux-man
> -
> -             Help:
> -
> -                 help
> +             email.  For subscribing to the list, or information about
> +             it, go to
> +             <https://subspace.kernel.org/vger.kernel.org.html>.
>
>     Sign your emails with PGP
>          We strongly encourage that you sign all of your emails sent to
> --
> 2.39.2
>

