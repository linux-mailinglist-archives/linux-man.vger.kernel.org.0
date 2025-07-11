Return-Path: <linux-man+bounces-3257-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D78F2B020ED
	for <lists+linux-man@lfdr.de>; Fri, 11 Jul 2025 17:54:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C1B0B1C22B3A
	for <lists+linux-man@lfdr.de>; Fri, 11 Jul 2025 15:54:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DE6B2ED165;
	Fri, 11 Jul 2025 15:54:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="vhVSNz1c"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE01B2EBBB8
	for <linux-man@vger.kernel.org>; Fri, 11 Jul 2025 15:54:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752249260; cv=none; b=WGke7cJahkm3kXCD+YGF92XAd3bTAaEyFn9YjPywGuABhgURrOWBkSQK3uUKi3PhDuK6U4To3NkTHCWldN4XDk7BGLFoI8xZmv3ODUFvtjJg3xPEygadVvhJTXhGHgJz5XKhyE9PSbtNfMHnz+jFxb1p2Ogi4ECc3uxwHFZHrqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752249260; c=relaxed/simple;
	bh=qHuSOEzf9svlo1uHvkBxvsSHm9Q67BiVYGLNI4L9lTc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DjOjeqe3tPpGSCw9GlKc/scJShWqi/Ga/UlleFtPPUM0TrT5LUehy/1s3Bt0AQ2aUA/mJrBL0gPkky9+GXXzumTV2GGH+LgcuCPZoN7qlcHEzlKy57P8VbGJTaTkJDnalG8yhpK18I2vjWwboU4LsXz7ol5VkaT4KtIJUrES83Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=vhVSNz1c; arc=none smtp.client-ip=209.85.160.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-2ff1ed124deso674535fac.0
        for <linux-man@vger.kernel.org>; Fri, 11 Jul 2025 08:54:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1752249258; x=1752854058; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4b9jLuLGnuq3T0XlXUAlVI50tfrKbzbRf54d/mMpkOA=;
        b=vhVSNz1cHg6aD8YnOc1UJNsI34nuSEz9P6UZerNBrBjwrx9bdAY9vgDTo9Yu4dni1M
         kRoee4UxQ/DRDA979Omkanb8PA/Imua+z19eW4nCYeSN2b9JlOJdJT84dg5HmBHlWpy4
         SN1dqyhqKAdAA0BxZBbOvgmtdR1SHIlLcw9m4x6iyyZUJR+seZey9ojaD92s8fhIIRP+
         SJxsLJbQ7vka4Pw2ShLvhe37XUK7WMcKPE7v0C5SCv7BjneI6GxCbODDG7xInAm+2+Df
         KoueDjQ0pk3QyDLHl8ymScn3TSQXSJY5NK5xYqXiIpd+0Lc4DrOygpREEyIIxunxDGHQ
         IPcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752249258; x=1752854058;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4b9jLuLGnuq3T0XlXUAlVI50tfrKbzbRf54d/mMpkOA=;
        b=tuLGn/RvH78LvD6NrvzSlScNFcV4faHSR9qIsgFJnNpehd7+zVkpEec5tgpDJK2ytX
         KZWZea0hFo3OfIjLP5tFbyaUybFQBg6GyI0YbsOumNYV22M6JvfZR+h0jpPYeqfoluo6
         4iky6oQt8vAyjI+YuThoCnlvahtaLjp/wWKdXxmnpLtfZRSOkRYv9ohmv0CytgVlrF8u
         QpuTr/6Ja+BdhBM1IqDEyY+lnzDgyBe37roHX9QlZARWTUQgbty72LNSrHioyLeNxuIN
         8PqmSRLTGZocPsrPnoSSDRS+uMMbOHIRzZUuqhkgz9w8R1v9qRYtjqRxaXfw5PmeEs5Q
         W+Tw==
X-Gm-Message-State: AOJu0Yz1r0bsHil7opN34dBpNeFWZUK0ZIGOGvB5xja+ZXcaKc3G2b0H
	g3iUWSMqGTUSGjLR8reXXzdZoQK/WlUisnNr84YywYb1rvbeN2aIPs9CGDxiXNwKL9SxWZ0M29L
	EJw01qxgs8CL6ji3+ZlvkICNWqUNGAlui3ngbf0VC
X-Gm-Gg: ASbGnctprmvPnQurxWrhHzYtoQV/k3dWpYO2Dx7ssgzUQp+yO5GlSzcbekhbVrZIlbX
	CxlmEYz84xXeZ2/2RnMRRYFaKDBXNg2fL0Z7SMcIKrZdqk26qVq7u2ezzi80sQIiu38bJOPrA19
	7Asw94amSVec07o6sGvIZGrWsdQdbWm5z84XsppdGPuKFQ8nBU/hLunsZUQzLVOlw3I1MHZxOZG
	ab9
X-Google-Smtp-Source: AGHT+IGA/UYvwth0ptxl5BLDcinpx6FMd7V4dA58ZiNl/BcifkgQLR0QmymgkprcIbdYV5V6dup3AeJUkOfC7cg9edw=
X-Received: by 2002:a05:6870:1e8a:b0:2bc:7811:5bb8 with SMTP id
 586e51a60fabf-2ff2701f7e8mr2491965fac.18.1752249257771; Fri, 11 Jul 2025
 08:54:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAJgzZoq0AvK8EDicLk7ZMVbWS8MmoqW0Nv4U9HCFUXnNw+yUGw@mail.gmail.com>
 <7low246gskvwm5sxyepqz6io2qdvpctxsi4pnzmb52na2ynt45@s6gghy7pcq76>
 <CAJgzZooxTPz0BQh8NoG+osQCG36KJ3rGD0dbMhN493cnTqSWFQ@mail.gmail.com>
 <tjgvyarabwcwk3l552tiligv6z25xmkxwy42a224u32u3kwfoj@um4uxiy6tbie> <ijc2bqonmqeqbbl5lg2qsucoltoq5atkepfp62aipmjjnc6egt@aw2l6zclt35c>
In-Reply-To: <ijc2bqonmqeqbbl5lg2qsucoltoq5atkepfp62aipmjjnc6egt@aw2l6zclt35c>
From: enh <enh@google.com>
Date: Fri, 11 Jul 2025 11:54:06 -0400
X-Gm-Features: Ac12FXy9yDXCiOw50ivleurv3tWE44wAJDCpu4M_wtWhH4zFmUAXSGdjEaFeV7g
Message-ID: <CAJgzZooCaSxfXeja7rsBopY7aouDyRfMNM-PT9p03TWmk=jL6A@mail.gmail.com>
Subject: Re: [PATCH] wcpncpy.3: fix incorrect return value.
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 11, 2025 at 9:37=E2=80=AFAM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> Hi Elliott,
>
> On Thu, Jul 03, 2025 at 12:12:49AM +0200, Alejandro Colomar wrote:
> > On Wed, Jul 02, 2025 at 04:40:31PM -0400, enh wrote:
> > > > Hmmm, yup, that's quite incorrect.
> > > > We should add this to the commit message:
> > > >
> > > >         Fixes: d91506f8faa4 (1999-08-24, 2022-12-19; "man-pages 1.2=
6")
> > > >
> > > > > +returns a pointer to the end of the wide-character string
> > > > > +.IR dest ,
> > > >
> > > > I don't like this wording.  It gives the impression that this funct=
ion
> > > > is appropriate to create wide strings, while it's not.
> > >
> > > i actually didn't come up with that: i looked to see what wcsncpy()
> > > said and copied that :-)
> >
> > Hmmm, I should rewrite wcsncpy(3) then.  (And st[rp]ncpy(3) maybe too.)=
  :-)
>
> I didn't find any text in wcsncpy(3) similar to this.  Maybe you read it
> elsewhere?  It would be interesting to find the source, if it needs to
> be fixed.

yeah, looks like i might have been copying from the wrong man page:

~/man-pages$ grep -r 'of the wide-character string'
./man/man3/wcsdup.3:contents is a duplicate of the wide-character
string pointed to by
./man/man3/wcsncat.3:to the end of the wide-character string pointed
./man/man3/mbsrtowcs.3:up the converted part of the wide-character
string, not including the
./man/man3/mbstowcs.3:up the converted part of the wide-character
string, not including the
./man/man3/wcpcpy.3:returns a pointer to the end of the wide-character stri=
ng
./man/man3/wcscat.3:to the end of the wide-character string pointed to by
./man/man3/wcsstr.3:It searches for the first occurrence of the
wide-character string
./man/man3/wcstok.3:If the end of the wide-character string is now
./man/man3/wcslen.3:It determines the length of the wide-character
string pointed to
./man/man3/mbsnrtowcs.3:that make up the converted part of the
wide-character string,

you are in a maze of twisty function names, all alike.

> [...]
>
> > > > How about this:
> > > >
> > > >         returns a pointer to
> > > >         one past the last non-null wide character written,
> > > >         that is,
> > > >         .IR dest\~+\~wcsnlen(src,\~n).
> > >
> > > yeah, that's a good way to avoid having to describe both cases
> > > separately
> >
> > Thanks!  I'll use that.
>
> I've applied these two commits:
>
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/c=
ommit/?h=3Dcontrib&id=3D53783e73e482042cff0db76762d808b2f73305a1>
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/c=
ommit/?h=3Dcontrib&id=3D7e4e9222e90d11ee0f7ad35004eb00c3d56b3574>
>
>
> Have a lovely day!
> Alex
>
> --
> <https://www.alejandro-colomar.es/>

