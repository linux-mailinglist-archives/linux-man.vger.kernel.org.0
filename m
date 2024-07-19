Return-Path: <linux-man+bounces-1498-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C81EA9378B7
	for <lists+linux-man@lfdr.de>; Fri, 19 Jul 2024 15:48:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E0452B21C37
	for <lists+linux-man@lfdr.de>; Fri, 19 Jul 2024 13:48:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06F6F13AA31;
	Fri, 19 Jul 2024 13:48:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="sCIF6M8O"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f74.google.com (mail-ed1-f74.google.com [209.85.208.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278CC13E028
	for <linux-man@vger.kernel.org>; Fri, 19 Jul 2024 13:48:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.74
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721396926; cv=none; b=rlJup35/UOoicAl3w/hz5tXRCzSsgSymgNByVJ4hDwERk6wizlQX6gBkT/ReApS6YUP6R19Cv8Wl80utPPWFKaWRBGGxWpmvTgnN/V5FO5Y3sVCPR7rl3o6G5lqCM9VjpIc1k8jPr71Z0l9bSawgP9udZg/eoH2GxHes4cm2BW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721396926; c=relaxed/simple;
	bh=X4cPotP7SnObU3v5qxoOt8rBQfivICtM1YcRv73/pF4=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=sgGPN0N33jaQd/rFrCcaqSawA2+whfWGnw64jKVnK1lQ0nXZEwfLlp+uvpK4B5goPb4IQSXVwy+B33Td5LX+uDcVzCApN/J9Uv6IxG+5xiCHFcXk67k5XsblOoAawAnh/albypuc+g7PIOP4p0t2A6gNRqbuFZvQJa3KWaZByg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=sCIF6M8O; arc=none smtp.client-ip=209.85.208.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com
Received: by mail-ed1-f74.google.com with SMTP id 4fb4d7f45d1cf-5a3af129344so192129a12.2
        for <linux-man@vger.kernel.org>; Fri, 19 Jul 2024 06:48:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1721396923; x=1722001723; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DlOsEjHYBbDcUK3jOm0pT7IMVxeRJBjkSCLNrDbfWD0=;
        b=sCIF6M8ORFdqlKPIVDcHgAble3Drq9pKZyO2/ugClXfixLa41QZx3kTxHHenqtniHz
         xrjvoHTxO74o3WFDcZLUb70d1kPmvae3xEbJy4Cp+JWCYwV/+P+dn7V3DR3S0hmjThdA
         RV4L7z6W0FWDTc6imBmLFzV3iuXQtMgpSvRdmMPYsr8D74b9b9RBOR+XfJsux9nC5L7+
         pSbGTRDHZ8cXMeWYc5xu6mHrRMcd0yYFMc6rfkprBjO0dO9Rz8CKLo0QrFwBe58ay/7z
         2oTS9Bx8vPdKSG/qur1NDbE3uYyTiWc3Iw14mD9lwqy+SNOlw+RIW+tEqI0/wSaFDnih
         ikLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721396923; x=1722001723;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=DlOsEjHYBbDcUK3jOm0pT7IMVxeRJBjkSCLNrDbfWD0=;
        b=pkDHFQLQKpAacPXLJKtyETOcs4QBQnZcZQXLzKwvtzD71Rovhq+LrNvSbUayjFoPgQ
         TmFu7YQg5JBCpBTrjcS2fO/GY29sTU/ED7C1xhlSMwIxEWUXojoAd292NsWeugfPzFQ3
         H9O6jHCvW0A93MVowLNJbilpOxPyP4gWSZaIDDIQOhmmR/pjwpqY15QKeqST2FbjSFRK
         wD8bZzCaMFbqJ528295zvUGL2Pv3mxE3YgkQlNAX4tJrB1B/P7BAIjZMZh8Vr76EEWIm
         OiNM5igOTxQyDRtMHCObjD6HZgX9+YtXmxTsUePVTfkDvG8cRVZZwLW7RBN7SG1tJ2yH
         IQYg==
X-Forwarded-Encrypted: i=1; AJvYcCVZy3sS4X97pY5AtzdEwmlrN/l9lv9cWWYk2rWCk0g9tL4IDlXW3vZmh4bqau2YiFXkMV7uLuszW7UAJO+BLkXmLzk68x5QqrB7
X-Gm-Message-State: AOJu0Yy6l5zQrzu4hADl4zmOhWhyOCKy9HvAMWVHZW+o3Tha5MKG1+3W
	NeFXz2EU8Wnuve/NNAG+NuU36ThyujpK7WzuY3OWThTaqgyro4CmO+YPqZS10k0MvV6n2gCLxfs
	seA==
X-Google-Smtp-Source: AGHT+IFxFDmbh62FVJDutSclze/1tnzf2zruiKTLW8a4i64MKjodW21/yjAJneKyTmmpC8LKN6nEA3SE0iU=
X-Received: from swim.c.googlers.com ([fda3:e722:ac3:cc00:31:98fb:c0a8:1605])
 (user=gnoack job=sendgmr) by 2002:a05:6402:3181:b0:584:a86b:820b with SMTP id
 4fb4d7f45d1cf-5a3ebbc101amr80a12.0.1721396923332; Fri, 19 Jul 2024 06:48:43
 -0700 (PDT)
Date: Fri, 19 Jul 2024 15:48:41 +0200
In-Reply-To: <20240716.wu8queemuR5p@digikod.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240715155554.2791018-1-gnoack@google.com> <20240715155554.2791018-6-gnoack@google.com>
 <pbgazmvujum7sitkwgquqzy6fe5caks3vm75zelwcuzxerwdfh@5gagcpv3cv5f> <20240716.wu8queemuR5p@digikod.net>
Message-ID: <ZppuuULsx-4cmzzj@google.com>
Subject: Re: [PATCH 5/5] landlock.7: Document Landlock ABI version 5 (IOCTL)
From: "=?utf-8?Q?G=C3=BCnther?= Noack" <gnoack@google.com>
To: "=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?=" <mic@digikod.net>
Cc: Alejandro Colomar <alx@kernel.org>, Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, 
	linux-man@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thank you both for the reviews!
I sent out a second version.

Konstantin: Please also do have a look if you are around, since this also c=
overs
the documentation for your networking connect/bind feature.  Thank you!


On Tue, Jul 16, 2024 at 04:39:17PM +0200, Micka=C3=ABl Sala=C3=BCn wrote:
> On Mon, Jul 15, 2024 at 06:20:53PM +0200, Alejandro Colomar wrote:
> > On Mon, Jul 15, 2024 at 03:55:54PM GMT, G=C3=BCnther Noack wrote:
> > > ---
> > >  man/man7/landlock.7 | 51 +++++++++++++++++++++++++++++++++++++++++++=
--
> > >  1 file changed, 49 insertions(+), 2 deletions(-)
> > >=20
> > > diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
> > > index d452b93b2..044f57208 100644
> > > --- a/man/man7/landlock.7
> > > +++ b/man/man7/landlock.7
> > > @@ -92,6 +92,8 @@ This access right is available since the third vers=
ion of the Landlock ABI.
> > >  .P
> > >  Whether an opened file can be truncated with
> > >  .BR ftruncate (2)
> > > +or used with
> > > +.BR ioctl (2)
> > >  is determined during
> > >  .BR open (2),
> > >  in the same way as read and write permissions are checked during
> > > @@ -188,6 +190,48 @@ If multiple requirements are not met, the
> > >  .B EACCES
> > >  error code takes precedence over
> > >  .BR EXDEV .
> > > +.P
> > > +The following access right
> > > +applies to both files and directories:
> > > +.TP
> > > +.B LANDLOCK_ACCESS_FS_IOCTL_DEV
> > > +Invoke
> > > +.BR ioctl (2)
> > > +commands on an opened character or block device.
> > > +.IP
> > > +This access right applies to all
> > > +.BR ioctl (2)
> > > +commands implemented by device drivers.
> > > +However, the following common IOCTL commands continue to be invokabl=
e
> >=20
> > Maybe s/IOCTL/ioctl(2)/ ?
>=20
> ioctl(2) is already used in the previous sentence, so it might be too
> much?

I agree with Micka=C3=ABl here, I feel that IOCTL might be more appropriate=
.

We've been using the uppercase spelling throughout the kernel docs to refer=
 to
IOCTL (the concept and the overall feature), as opposed to ioctl(2) (the
specific system call).

This is the only remark which I left unaddressed in v2 of this patch set.
We can change it though if you feel strongly about it, Alejandro.
Otherwise I'd prefer to keep it in sync with the kernel documentation,
to keep the delta between the kernel doc and man pages smaller.


> > > @@ -440,7 +485,8 @@ attr.handled_access_fs =3D
> > >          LANDLOCK_ACCESS_FS_MAKE_BLOCK |
> > >          LANDLOCK_ACCESS_FS_MAKE_SYM |
> > >          LANDLOCK_ACCESS_FS_REFER |
> > > -        LANDLOCK_ACCESS_FS_TRUNCATE;
> > > +        LANDLOCK_ACCESS_FS_TRUNCATE |;
> >=20
> > s/;//
> >=20
> > right?
>=20
> Correct

Well spotted, thanks for the attention to detail!  Done.

=E2=80=94G=C3=BCnther

