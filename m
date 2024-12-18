Return-Path: <linux-man+bounces-2171-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C531C9F68E2
	for <lists+linux-man@lfdr.de>; Wed, 18 Dec 2024 15:46:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7A6A816C052
	for <lists+linux-man@lfdr.de>; Wed, 18 Dec 2024 14:42:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 543AE1F191B;
	Wed, 18 Dec 2024 14:40:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="InJbiL8Z"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2EE71F0E21
	for <linux-man@vger.kernel.org>; Wed, 18 Dec 2024 14:40:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734532830; cv=none; b=e5xAyhl917+/nLeuC7ls/cTaSyQOQouDq48ds4SzE+GmlokUXS4xW2bAXgsyNHB59lb8g8BZHbyjUCYL2CIP3xaxGsYeK2ciVMFo74sOp2/ls+rHWUEDcWve7CQcJmGcNgxyLJqizD70Oupapy+daSGVyRlGJlvP4zTNzqrh2Ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734532830; c=relaxed/simple;
	bh=tXq4aGFQ64VtkUj6AvuTA7Q6MRlGL+6jI1Yjdm/BqXI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fXUUGCLq+gPJlysMqwf/lIiCCFVdZY5kY5kfW6gl8dqqOem+4XlJazA8b9AkSmE35ROwNyQRav1WOACU/L8gwtpdTGQoXsWCWenPAKxZq9LwDstcocHAP5VrSuhSB6D+QBBJJp/cWgfmuzUnnrWxzFc/VY+VbXLzaB9PfFt7WqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=InJbiL8Z; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-7feb6871730so4460225a12.2
        for <linux-man@vger.kernel.org>; Wed, 18 Dec 2024 06:40:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734532828; x=1735137628; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=97JdkkmwJuXiSKl9Te+0TqXRtxJgenNQ7ep4Vp3sGSA=;
        b=InJbiL8ZlGtl4VUDrAMTYBjG3MRpp1CXWY2SIAqdPJrUITMT286LodAoN/C1m2TrW+
         myXKZnE36/Z6eqq6wh3qqeuNLzDeVk7Q5IQe2GLYO7CiwsaCz5wssFagQVybikz0/MyC
         +aRcsnrMEm1Byvp40nYT3UXUeRRs+vStqr0tImYdegkskiM+CAh+W8eho64vL3DA1DNm
         GbmFOqJ03pHvg6WBa4c9tgYgHoL1YappBO1phIOj5suzF5VyKxSX4rCc2h13dFJvA674
         9ygegvJgM9ixWq28G6p63Bj0SfHEcpiGM4mzqW6MRWNkzJPihRTvu2nAYDB8EfRa/F1b
         T1QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734532828; x=1735137628;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=97JdkkmwJuXiSKl9Te+0TqXRtxJgenNQ7ep4Vp3sGSA=;
        b=rWqjWfQh4zxCwGZDvqcz+Yf2LzCuQLiLW34TicHgbpCybJISK+Gxn7EcPfk1VNi+bt
         VgsB1SIP/fyaNAPZ32d+wuddHX1OfB+BBoR5/b4qpiupj89ABXpLdfi/F8oXkxwkC+tq
         uF00tIIeh+qnqFhJg0bVEeAGR1XVIaHY0Z3AZ8IMme/HhxH0uVMdcZReWGixjPkwHZ6f
         84iSrkKbhJW1ojiM+YuEjd/C5DQo5VikJzbxagk2MDSLeDJMu4FbdiYk86iJ6Es/wiJh
         aMiJxhUj168Jxtdf4g3KdSQo0DGCLHlt0h+Yb9CVtrNUVyg2x8ZDHXgP/tcOiiw++mSW
         heGw==
X-Forwarded-Encrypted: i=1; AJvYcCWfkGtoFnMc+tpIcGexkcfNNTk4OFoykj41QdNh11GSjiciRzZggtYBtlv5EJyKjwodnOyj0iurxpk=@vger.kernel.org
X-Gm-Message-State: AOJu0YwFnVb7QW3Pgva/72T+JFhnCG8OA8cuT3Zb/+riyFilJgT1SVnq
	5I4t7l5Na53YokXVabzz6shGV7tNVuBqjUcH+zp1V6t70LYEvHKFyjTUVvcStGfUKcsgfFtjlrZ
	Ia14lsAd5UpQ7V+3AXF7gexwdJoQ=
X-Gm-Gg: ASbGncseFAiRriST6EqZ7rnZHyJ/yjk/bcqWj1N6/1X7fzU4C5G4tNRn+OJiCn4VZ6j
	nuJqFIJ6L7yRtB627HMlBkH+Q+ch+XHizHgjKyA==
X-Google-Smtp-Source: AGHT+IH36+Jbo9VrsQtmdF8Do6pdhV455N1MqZGNAqL5hLxz9S0aCRd/q0IGYp+KwzxmcF3YIsjdqwabHjJoL80AUDM=
X-Received: by 2002:a17:90b:2b88:b0:2ee:7a4f:9265 with SMTP id
 98e67ed59e1d1-2f2e91daa10mr5034103a91.15.1734532827841; Wed, 18 Dec 2024
 06:40:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <k57itvvrwcyzpgojoh6y4qe7gagkt4tuof6w6gcfpzpjg6juo7@tarta.nabijaczleweli.xyz>
 <CACGkJdsJ16u0Gedv-wBo4-qzbCbDyNoVm_mPz1pxxL+SiQ04Wg@mail.gmail.com> <3oaxdb2364nqty4fxts6i2fx66dksiw2vq3s5nlzfukztakg3j@iyl3vwrgrfe2>
In-Reply-To: <3oaxdb2364nqty4fxts6i2fx66dksiw2vq3s5nlzfukztakg3j@iyl3vwrgrfe2>
From: Eugene Syromyatnikov <evgsyr@gmail.com>
Date: Wed, 18 Dec 2024 15:40:19 +0100
X-Gm-Features: AbW1kvY6PfLLQ4ptejBCcLypWFAEbF0ai1k3Quaf1sB1aGhoN_Y8-viiRVm7PQ0
Message-ID: <CACGkJdsoMZF1n68wwWyBrhD42R3j8qLp2EhpwGFAxgY2ztbSGA@mail.gmail.com>
Subject: Re: [PATCH] getopt.3: remove _<PID>_GNU_nonoption_argv_flags_ description
To: Alejandro Colomar <alx@kernel.org>
Cc: =?UTF-8?Q?Ahelenia_Ziemia=C5=84ska?= <nabijaczleweli@nabijaczleweli.xyz>, 
	linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 18, 2024 at 1:51=E2=80=AFPM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> Hi Eugene, nab,
>
> On Wed, Dec 18, 2024 at 12:43:06PM GMT, Eugene Syromyatnikov wrote:
> > On Tue, Dec 17, 2024 at 5:36=E2=80=AFPM Ahelenia Ziemia=C5=84ska
> > <nabijaczleweli@nabijaczleweli.xyz> wrote:
> > >
> > > Per <https://sourceware.org/git/?p=3Dglibc.git;a=3Dcommitdiff;h=3Dbf0=
79e19f50d64aa5e05b5e17ec29afab9aabb20>:
> > > * this was set by bash 2.0 (1996-12)
> > >   (implemented in glibc b07c5668f672125074dd5b0b658145e1544120be)
> > > * it's no longer set by bash 2.01 (1997-06) because it was bad
> > > * glibc disabled this with no way to enable it in 2001-08
> > >   (518a0dd201c48a5c15d73c1919c304a9f8f5e3c1)
> > > * glibc removed it in 2017 bf079e19f50d64aa5e05b5e17ec29afab9aabb20
> > >
> > > So this was experienced by people for 5 months at best,
> > > and could remotely be experienced for 3 years
> > > (if you somehow wanted this bad behaviour and added it into your shel=
l),
> > > over 20 years ago. No modern reader (or, frankly, non-modern reader)
> > > has ever used this, or could use it, really.
> >
> > I would suggest to rather comment it out (along with the provided
> > history above), so it's still preserved in some
> > relatively-easy-to-find form.
>
> Maybe move it to HISTORY, having a short mention about it?  I don't like
> those comments too much.

Yeah, this is a much better idea, thank you!

--=20
Eugene Syromyatnikov
mailto:evgsyr@gmail.com
xmpp:esyr@jabber.{ru|org}

