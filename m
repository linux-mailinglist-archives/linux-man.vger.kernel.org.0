Return-Path: <linux-man+bounces-2168-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C189F651F
	for <lists+linux-man@lfdr.de>; Wed, 18 Dec 2024 12:43:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D9399162D60
	for <lists+linux-man@lfdr.de>; Wed, 18 Dec 2024 11:43:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5794D19C54E;
	Wed, 18 Dec 2024 11:43:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Uybolxs3"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB2A158853
	for <linux-man@vger.kernel.org>; Wed, 18 Dec 2024 11:43:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734522197; cv=none; b=Z9esUI+a/kHwZEt5dFq4BwkmfN+DGh0b56o9XIYas/zibnWsa8/RkErP7kmiWGGTOW9DNUTOOgIjCx1XkGIZvqTh8Ppn5bhEum9zSVLMkaF4onihVhipVa6X5j7jnc4W9Ejqxwyq5TzUoAF8yrPZRVpfTV9XSF1rOMTHr0NA04U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734522197; c=relaxed/simple;
	bh=544wI4g5ckn0Uqm+P+JBz4vG0XYNqepM/LGLX9rv+DU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CR2YIXOHY3XOV9ZLoVnkipQ1USXILEY7E0k4Rom+Ub99Uev0qXHCLc1CgLX1UpfV5jxuBjLJNEYcW9huReMIhWYD1GOUAMIJmV23vBQ4MTfvEmcasmwvstr2sxMyFDYv4L0u9Dx4E6v7pNyqUhUAlfWrvTGB8x6vIdPAtnoPByI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Uybolxs3; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2162c0f6a39so5865395ad.0
        for <linux-man@vger.kernel.org>; Wed, 18 Dec 2024 03:43:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734522194; x=1735126994; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PZWFmhwhTHs1JEcP0j4wffD2r2mOmbR6ZGN5u8FtDyo=;
        b=Uybolxs3oUzwyyhCAe259uDFxGIx/nn0r8MyeqlI8Qi29qipyXodIEk6j8Z8qP/2zb
         357aPDhnZVlrX2CruGSYZUC8e6qui/B3RLGvznF24lfR2iCOE108mzCrTRvx8uO0bTik
         CkVjw/xKfBGhMLHz0g6cSWmlCwRhftVzLdO8NaVXtHPpYEQz+47tShCS9Q9bTCUpWMNo
         RLHzONRYRdyOw9B3KnLZzWEFX1j8OFk5DvB3JS3pFjObnos8HFntfpr0MKbTh4keqwGU
         2a+GTGHol7+nA66PY4raNZV50+ZZGD/gdawt+Cf8WRtfh66GI2nDgr1uUQXF7remtarx
         6rzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734522194; x=1735126994;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PZWFmhwhTHs1JEcP0j4wffD2r2mOmbR6ZGN5u8FtDyo=;
        b=O7pEBOVaj1pNwNfhIRKeN0rSYQQmNohpmWvjyuhIF/bvu+JRW+CPIvc9IVKzu4ZqQd
         KCnaDtopf+v3GpAYE3AqxC+5Qjg9Ig3MuwjFdJUfD/+vUCsz7YF1VuX5YZIeE3yJ5BSo
         Dv1HJ+MVPCMv0LCGil5Y5URTpIgKblL4ntn/05aYwfTRM89EToy6g8rkh0puhf1fCSsl
         mEeOxsSgclFBkLzhui3oVNbVlpPAU5j2SA0q1CPF4o8za++1JkvcXDFQsmKhHmeVqWYi
         f6M0ooKxRQoQOXMStNJoXhbDOLcGWxqkL3z/PkuCO/7+6ZZsO8GP3gpSQuYVDzXqAIbN
         GGFw==
X-Forwarded-Encrypted: i=1; AJvYcCVP4CTD/61XRYs9TS3izOTNBgeTff0Qa8P5CL7CKC5AJt/HYYb1edRwsipkVENvFYBIpdlEXlj17x0=@vger.kernel.org
X-Gm-Message-State: AOJu0Ywxn4d3pWU9RPc4vsF4EFEKo9OnmOPYuQyHysWU5CHRUZJkEdWM
	CWyHb2ffsarX+PD+ixa2aLK6wsmkcfIywRwc0MF0mxFcIOBnunpUz70Xq/4AM73ROpY64O62GQ2
	D3sS/acPyAaPcw44ZPrrb86U/C/nN9AJF
X-Gm-Gg: ASbGncvt7xMy5fWsXcxTPK2S4+ujZp45eB8GWOYXbgny9JyK1+D+bPqt6H2tOXfMj4r
	k3hRrE40A/p/uEBYwrAlw28D643moCUIUTFKPtQ==
X-Google-Smtp-Source: AGHT+IHPgvovkybDgoK1TWMPci1YHHgUbWfQr6cIhYLTpCQTGEBh2WePDApDFdvLlwxhOhtY7r2FalMHybijyv+NVzs=
X-Received: by 2002:a17:90a:f944:b0:2ee:7e53:bfae with SMTP id
 98e67ed59e1d1-2f2e95b2458mr3526778a91.10.1734522194620; Wed, 18 Dec 2024
 03:43:14 -0800 (PST)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <k57itvvrwcyzpgojoh6y4qe7gagkt4tuof6w6gcfpzpjg6juo7@tarta.nabijaczleweli.xyz>
In-Reply-To: <k57itvvrwcyzpgojoh6y4qe7gagkt4tuof6w6gcfpzpjg6juo7@tarta.nabijaczleweli.xyz>
From: Eugene Syromyatnikov <evgsyr@gmail.com>
Date: Wed, 18 Dec 2024 12:43:06 +0100
X-Gm-Features: AbW1kvb9gwX2G0-BsEm0cCfE0UsyEaceNTPRjbDsMgOvNZQXMiKCCTc3vHdCLSY
Message-ID: <CACGkJdsJ16u0Gedv-wBo4-qzbCbDyNoVm_mPz1pxxL+SiQ04Wg@mail.gmail.com>
Subject: Re: [PATCH] getopt.3: remove _<PID>_GNU_nonoption_argv_flags_ description
To: =?UTF-8?Q?Ahelenia_Ziemia=C5=84ska?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: alx@kernel.org, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 17, 2024 at 5:36=E2=80=AFPM Ahelenia Ziemia=C5=84ska
<nabijaczleweli@nabijaczleweli.xyz> wrote:
>
> Per <https://sourceware.org/git/?p=3Dglibc.git;a=3Dcommitdiff;h=3Dbf079e1=
9f50d64aa5e05b5e17ec29afab9aabb20>:
> * this was set by bash 2.0 (1996-12)
>   (implemented in glibc b07c5668f672125074dd5b0b658145e1544120be)
> * it's no longer set by bash 2.01 (1997-06) because it was bad
> * glibc disabled this with no way to enable it in 2001-08
>   (518a0dd201c48a5c15d73c1919c304a9f8f5e3c1)
> * glibc removed it in 2017 bf079e19f50d64aa5e05b5e17ec29afab9aabb20
>
> So this was experienced by people for 5 months at best,
> and could remotely be experienced for 3 years
> (if you somehow wanted this bad behaviour and added it into your shell),
> over 20 years ago. No modern reader (or, frankly, non-modern reader)
> has ever used this, or could use it, really.

I would suggest to rather comment it out (along with the provided
history above), so it's still preserved in some
relatively-easy-to-find form.

--=20
Eugene Syromyatnikov
mailto:evgsyr@gmail.com
xmpp:esyr@jabber.{ru|org}

