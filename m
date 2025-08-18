Return-Path: <linux-man+bounces-3463-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 308A6B2981B
	for <lists+linux-man@lfdr.de>; Mon, 18 Aug 2025 06:23:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0958C17DB0D
	for <lists+linux-man@lfdr.de>; Mon, 18 Aug 2025 04:22:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA3AA1D9A5D;
	Mon, 18 Aug 2025 04:22:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LogunuAD"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com [209.85.221.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 143E2154BF5
	for <linux-man@vger.kernel.org>; Mon, 18 Aug 2025 04:22:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755490935; cv=none; b=alENkt/Qb2Q9oxJCHAbnMJPIJqrDPqAjo75LMvmfFKpeUyxKZ494QpfRgmuHuh818CH5LaAoKGBNgM4Tjc7ntBf0h9hLiuabux6ys76wkSUNaqJe6AFLRvGH7ihw+RzZyhbVTlTd1/a66ity8u1/y/DL2wW//7dOtcDmW1k/m5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755490935; c=relaxed/simple;
	bh=iwg2eq8DJ9hudcfjqhRL8H0boncSEYzif/LiJVNIr/0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=elmwWKmRyg+xtBsgNmYIowzAxjWDtnAdR8eYTksN7i1EUc7pGSazu5F0EPrkjx/xNuabKFnOiNWzo/BZg1eFUKkFwKhOA1tZvXylHbgZyZ2a6LMf16WZYKu5LkemxLalvw7V4Lk1BtAhcI3yDvj1DYKkaDX6pTNxS56j1+v/t+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LogunuAD; arc=none smtp.client-ip=209.85.221.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-53b17558b2fso2835376e0c.3
        for <linux-man@vger.kernel.org>; Sun, 17 Aug 2025 21:22:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755490933; x=1756095733; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/vrz7royuAHD/Vkw2HypotwRxas2TIZLbrwxGr2pST0=;
        b=LogunuADX3364PnbCAWugoY6mafSuUdlOPFQm+lsA3nHLePq5DYHZzEXSy6XVKQmwK
         Sqmoc40ZW6zUiUUPwKeYde3c6UUxllX0GSUs/DIk7BhgyZtb7uVfSsTwKiW+fs0ZQRL0
         5P8zCgwgJuv6WX/vO/aN9yKjb9EVL0YUH+zSVznb0gIqjY3A8xfi0GJfSrt0qcSyHLoN
         eV29J1KgpH2/53cjMLBbdv0HIy7O0zJZ03qq1d3gGowX38+X+9njdGiiP2GMoMx1D7La
         naJkLbzYETPTQGKM9Y/6lAY58+Gue5R9PXc0CNuJOTXqSLUgmn41ga+6+w21v3hH8W2w
         YysA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755490933; x=1756095733;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/vrz7royuAHD/Vkw2HypotwRxas2TIZLbrwxGr2pST0=;
        b=TRSmy10KWXxioNdxct2SqHNMTGzs5kOmlpDmnqVKDQHfcwXntI7m8itaaQvZYlWz6V
         I+4Wzv1MAXYxNiXADW3ACd188udkezGdQtTsnNyv+tKsi9uMP17dXllmVklm0q1xC7cO
         8I5bkSus9lsLAjbeOM2E+xUd2aAiO0ckgZTFQTLgpmlmJgNvLRlwN/K2Lxv+KNftavZG
         +x8lAvyjcmc8umwmRP2JdaxcuRBnPDu/pmfUvv+u5ufuzbAAxOe5ngaeg/uBaDC9PyzQ
         inV28GMCB55ueWDxLYUICUfV3WhWDkNVs71wsEcgNyZOMseF4xLXGwIPeVUcAnHFYY/i
         1POA==
X-Gm-Message-State: AOJu0Yw8wfleCIbqf9C3+IW9cYjC70pBBp3VHxvPodiiWj/AW/ml64Rk
	iZK+srmdVTXWQE+oFW7UX85Roa5luOxh83IBPVXiPv5V3VwHzFaBzo+5LoruNzYAZeT6sZGsFWf
	apbMKfzA2Qlt9s3T5SSO/yPQ7XSQbo3KLZmnU
X-Gm-Gg: ASbGncsQYQ2ldRphyNg1hatXJzM/JYfrvTylRVH8oUGhn0htQIIt5x+wREIEAM09p8c
	QEghzzClz2KNK0YYjMcylqwG+G6raHhTaCL5tv5bDofMr7WQQn+UJPtZRrImLYsnmf7qUtnJgHK
	Eji+CDi1pgF18egzSTsK0WLHegTZeVs6DBmBRyiw1mwfXuKKwC9exPooyE+sb0j5/zhNR9XbZp/
	lVguKgsXMr2y27Z7UtG4vljUbO/
X-Google-Smtp-Source: AGHT+IEemJXVWGqb6HYKXL15H2OtEai8Za4isXBc5jg/AK8nf8ZY8sYQZfqeM+5oClrIL/djFiNB9AvKdoaccO/lrRI=
X-Received: by 2002:a05:6122:e4e:b0:53b:359a:ca30 with SMTP id
 71dfb90a1353d-53b359acf58mr2018203e0c.3.1755490932861; Sun, 17 Aug 2025
 21:22:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250818033256.54899-1-alex.t.tran@gmail.com> <msre74j33dj5j7l4zni4e3ipfwb55rvtcy4amexern242eaywx@vrvrt3ng54d5>
In-Reply-To: <msre74j33dj5j7l4zni4e3ipfwb55rvtcy4amexern242eaywx@vrvrt3ng54d5>
From: Alex Tran <alex.t.tran@gmail.com>
Date: Sun, 17 Aug 2025 21:22:01 -0700
X-Gm-Features: Ac12FXyrxCFpXL73TgGpOt7gWJH8lG-Unb1JqNMrxLcIMTKJ5d5sqLb2PG8U5UI
Message-ID: <CA+hkOd5gK5HeGH55Kbj4z1Pi9Ak-FAEeqDkz6hyiP-kQQyXFVw@mail.gmail.com>
Subject: Re: [PATCH] man3/sem_post.3: EOVERFLOW add SEM_VALUE_MAX to
 description (wfix)
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the review. I'll follow up with a patch v2 with the adjustments.

On Sun, Aug 17, 2025 at 8:44=E2=80=AFPM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> Hi Alex,
>
> On Sun, Aug 17, 2025 at 08:32:56PM -0700, Alex Tran wrote:
> > See: <https://bugzilla.kernel.org/show_bug.cgi?id=3D219335>
> >
> > Signed-off-by: Alex Tran <alex.t.tran@gmail.com>
>
> Thanks!  See a comment below.
>
> > ---
> >  man/man3/sem_post.3 | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/man/man3/sem_post.3 b/man/man3/sem_post.3
> > index 1df132c89..03b91b9a9 100644
> > --- a/man/man3/sem_post.3
> > +++ b/man/man3/sem_post.3
> > @@ -38,7 +38,7 @@ is not a valid semaphore.
> >  .TP
> >  .B EOVERFLOW
> >  .\" Added in POSIX.1-2008 TC1 (Austin Interpretation 213)
> > -The maximum allowable value for a semaphore would be exceeded.
> > +The value exceeded SEM_VALUE_MAX limit.
>
> This wording is slightly incorrect: the value would be exceeded, if it
> were increased, but of course, sem_post(3) will not increase it.
>
> I suggest something like:
>
>         The value would exceed SEM_VALUE_MAX.
>
>
> Have a lovely day!
> Alex
>
> >  .SH ATTRIBUTES
> >  For an explanation of the terms used in this section, see
> >  .BR attributes (7).
> > --
> > 2.34.1
> >
> >
>
> --
> <https://www.alejandro-colomar.es/>



--=20
Alex Tran
alex.t.tran@gmail.com | 408-406-2417

