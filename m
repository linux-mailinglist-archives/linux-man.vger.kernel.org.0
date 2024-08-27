Return-Path: <linux-man+bounces-1715-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DAFA9613A4
	for <lists+linux-man@lfdr.de>; Tue, 27 Aug 2024 18:07:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EEF4628338F
	for <lists+linux-man@lfdr.de>; Tue, 27 Aug 2024 16:07:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 374691C6F5A;
	Tue, 27 Aug 2024 16:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aGSuZvEZ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 727F664A
	for <linux-man@vger.kernel.org>; Tue, 27 Aug 2024 16:07:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724774828; cv=none; b=kkCYHBDEuFnKgExtbdCUS15fAEyMTTY0Hdp1CCnDS8t9zjPpflXy8Z28gy1WBef81KvfghjhqhytlxbpCamk2zVypxPMnZSdrpxtGdyrG5IlrH1aEz9CySfJBgnyXV3gp9R+EVi1jH7KI+TbM7Oju8qm5EgyoCq+uo325MOw0XU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724774828; c=relaxed/simple;
	bh=Y4CLWhKnf0d+92S9se1dZE8znjzEj3p6ShTaNG9viI8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=o7DBu/9Mu8HENXkk+UaU0+mnHWENSL74Vf0tJ1pgUG99w2VAgGv8fUGi0/xRsMPgR/3hBy7OYozXOVjYnCvPxSBlvyp09jW3BNIrpDecjvsMphDb+UKwSFUi0u9iSL3u9LyFoRSR5wR3pAzNiGhzBo/cOO1lDbXLU7FyIQr2dPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aGSuZvEZ; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2f3edb2d908so59869271fa.2
        for <linux-man@vger.kernel.org>; Tue, 27 Aug 2024 09:07:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724774825; x=1725379625; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f/TiIoqtq3cWjKhmQ2eONwTUp2yLdEiByCHG0EBX0/s=;
        b=aGSuZvEZFPm9JFvKN8V/MHApM2vbIiEfsmHWNQ5FtNL1O+cZ8vBaUDPhPpfJKW8TXI
         Cs2xaSy1HKZiSzE3TelApDIut3RR2TWAZFgPsUzow8pA/8C+Se8PWJA9bm1NddxGEd/y
         GtZS1cBwI+HOOngLpAT9ZCWxQgP1WZEIlGwUlut8XYrBZFxf0fQzOj7X/+CS+7mkmqn+
         nW4InSHD7zvZ4gSw4gJTgMMd0noXv5LUFLOO5Q3QVkeDGEfBDSll+Xow4alqWFm/mX25
         JYM9S13QorAualG4LzpWHuyeIoUePkeXdDlecJUA5t5sRPi2HF4y8j59t/UGrcJhspIt
         C2kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724774825; x=1725379625;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f/TiIoqtq3cWjKhmQ2eONwTUp2yLdEiByCHG0EBX0/s=;
        b=hq7zC0keXQX+cqJMTrLj97IQZ4/Joc0mWTQLslYCHFIqF3pwvLPUGjO03heOgQ4Ojc
         A0RJUQYcyZLAFjIkHOQ6BBaQSFxIjP50istUwre8UMdHFmn3nZ51QAP2BtXtC80FQ/Fa
         YDnUMLhiapgFP9zagMTRnndLa14Fs2H0mK39QWi/eujUbpzATWG4YHJ8Z2fEzvLR6TRc
         O29vappdgVZJgh914QsIPho52aJTToVt2JCYqqa04bvLi01y+6kfMS1HEcGWZoq4Vwb5
         E21afoj96g9mWy8bwunAIoQ2yGaGJAxO5mthMXT0sq6sRxbEzVJRc8zGm77wEfvkQRO2
         OOiw==
X-Gm-Message-State: AOJu0Yz9MFMZpj/CcmqsXC+d30AqQWKxfgAeH4DN8IjfqmZYcX2XLVnL
	+Rn1C2Nw7whoUE9yt4mtov8NicJB0xafIrdtdQ8OaFdRYv0hIbp39/cgitEedxIn+AxfQj7XMiw
	HfwtrOcvTMhXr6KzRILTyV2+9iADJjJuR
X-Google-Smtp-Source: AGHT+IEcgEaNvVGbO9OL/YJblJNfgv1d62a5NrP/6wuixqKHjD43gsPYt+2oR5adiLiL2pT2AKhGtPxGUSTWQT1igF4=
X-Received: by 2002:a2e:a987:0:b0:2f5:15f7:7165 with SMTP id
 38308e7fff4ca-2f515f77219mr25328231fa.33.1724774824014; Tue, 27 Aug 2024
 09:07:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAHeAhPS-Z1zV_2TX3T-FPcgW9H8DLafas9-GGUpr-pk-5zEzXA@mail.gmail.com>
 <utbcwylyt4dsx7ikfhv2vwbqedxmxlfivjih6nxtm424zba7de@5ctrj6xvegxb>
 <CAHeAhPR+G5k2k+nF18TqfAsMtP_pf+Gr9RQDLbotzQnATb_TyA@mail.gmail.com>
 <mztcfeqtqhzmw2bng7sbs3h3ym4t63hrlolcj7uctdkxy37yox@7uqjzipgst4y>
 <CAHeAhPRcRaxryqc20-XQNo-KPs-=8ObyrfW35w8Kyux+fwBOAA@mail.gmail.com> <4xw464u2munxbgujopgfggxvnvgxa2b5lh35eriaeziapaa4uq@z6jmdim6f5mo>
In-Reply-To: <4xw464u2munxbgujopgfggxvnvgxa2b5lh35eriaeziapaa4uq@z6jmdim6f5mo>
From: Absee Seeab <doesnt.look.like.temp.mail@gmail.com>
Date: Tue, 27 Aug 2024 19:06:52 +0300
Message-ID: <CAHeAhPSM3XO_V=kDSW-bW9wmvoVVnWd1ccYq=Qn8wTK-4o+nAQ@mail.gmail.com>
Subject: Re: Missing crucial information in splice(2) manpage
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks!

On Tue, Aug 27, 2024 at 11:22=E2=80=AFAM Alejandro Colomar <alx@kernel.org>=
 wrote:
>
> Hi Absee,
>
> On Tue, Aug 27, 2024 at 06:09:33AM GMT, Absee Seeab wrote:
> > I'm not sure that's a good way to construct documentation examples
> > personally, but here is an example program demonstrating that my claim
> > is correct, as I agree that's useful for you to have.
> > Feel free to edit it as you see fit.
>
> Thanks!
>
> I've rewritten it to:
>
>
> #define _GNU_SOURCE
> #define _FILE_OFFSET_BITS 64
> #include <err.h>
> #include <fcntl.h>
> #include <stdint.h>
> #include <stdio.h>
> #include <stdlib.h>
> #include <unistd.h>
>
> int
> main(void)
> {
>         int         fd;
>         int         pfd[2];
>         off_t       off;
>         const char  s[12] =3D "Hello, world";
>
>         fd =3D open("out", O_WRONLY | O_CREAT | O_EXCL, 0666);
>         if (fd =3D=3D -1)
>                 err(EXIT_FAILURE, "open");
>
>         if (pipe(pfd) =3D=3D -1)
>                 err(EXIT_FAILURE, "pipe");
>
>         if (write(pfd[1], s, sizeof(s)) !=3D sizeof(s))
>                 err(EXIT_FAILURE, "write");
>         if (close(pfd[1]) =3D=3D -1)
>                 err(EXIT_FAILURE, "close");
>
>         off =3D 10;
>         if (splice(pfd[0], NULL, fd, &off, sizeof(s), 0) !=3D sizeof(s))
>                 err(EXIT_FAILURE, "splice");
>         if (close(pfd[0]) =3D=3D -1)
>                 err(EXIT_FAILURE, "close");
>
>         printf("New offset is %jd\n", (intmax_t) off);
>
>         if (close(fd) =3D=3D -1)
>                 err(EXIT_FAILURE, "close");
>         exit(EXIT_SUCCESS);
> }
>
> And used it as
>
>         $ gcc -Wall -Wextra splice.c
>         $ ./a.out
>         New offset is 22
>         $ echo $?
>         0
>         $ hd out
>         00000000  00 00 00 00 00 00 00 00  00 00 48 65 6c 6c 6f 2c  |....=
......Hello,|
>         00000010  20 77 6f 72 6c 64                                 | wor=
ld|
>         00000016
>
>
> I think this is interesting information to readers of the page.  (And we
> didn't have an example, so this is better than nothing.)
>
> I'll put it all together in a patch.
>
> Have a lovely day!
> Alex
>
>
> --
> <https://www.alejandro-colomar.es/>

