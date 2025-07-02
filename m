Return-Path: <linux-man+bounces-3239-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D631AF6379
	for <lists+linux-man@lfdr.de>; Wed,  2 Jul 2025 22:40:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E8C213B0E4C
	for <lists+linux-man@lfdr.de>; Wed,  2 Jul 2025 20:40:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8425C2D63EB;
	Wed,  2 Jul 2025 20:40:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="v78XPd1X"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE2722D63E8
	for <linux-man@vger.kernel.org>; Wed,  2 Jul 2025 20:40:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751488847; cv=none; b=WeU7LBYXgDOF2McOTBdBinVdAyE9PWXI4NJbkbf3fsgEY22lVLnV8rZrgsV/qBObuQSr1STSwADfOHe6iaPYJ5YjKkl2HfGIVRpNLI+Hrunq3MU5itzu9KiR/g6PEs3aY4YLcgzzG+bLom348KWMeyefe+t2nWc8P7EjUGzw+sM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751488847; c=relaxed/simple;
	bh=tOWlfrpWRuDO0tscrg4oMDjPtWJTmZ9wZP+QJCBm8uQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Gx491VtUGp64ywX2uzdDIwbg8u0uPbhiwEO2UosiDee/zFOMApjMrKREM8yDxWT0MWJNYKCXfPxQAlC/nTLl4qmju2hBmk/8iKjEeUv8FBQUOxk+D5AGB8AKXUISw/OBx40VDHpji6k9HC/NlBHKicL1VHO0EgLGYVy+Hvgbygs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=v78XPd1X; arc=none smtp.client-ip=209.85.216.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-311e2cc157bso5739430a91.2
        for <linux-man@vger.kernel.org>; Wed, 02 Jul 2025 13:40:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1751488845; x=1752093645; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uKq5VJ6XB3IgzgSBpurMySmVY2BzxDjqluAisQHnY1c=;
        b=v78XPd1Xtc9nCxw8qZttIByg+ulUVJug5VYhKbg8OBY3FcBvNVZvYhVQh1jooD7cmY
         OY6hC43genIzAaL4n1n5miN68PjQl8+DQkHedIvRRD/Fsbe71BmXDlvum1P7F1obB0WG
         h6WpTdr867ybOkAYB0/pNuWch3YnSw0N4ydZ1sf4wZFEeXMfQ92x9Dqm+XYP+POT8EXi
         BhPW463f7u8/qJy6DMiQpSGXQWXErlsd02naCDKV6yntwcgJbAteYSS7mjx/2vOK0GkS
         k+g2xPybcYxLfjehXqEix1CIsSnz0nuGdQ4bkJd6sO+sCTp1/7SMytBrUyRGfPUi/gRn
         bXVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751488845; x=1752093645;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uKq5VJ6XB3IgzgSBpurMySmVY2BzxDjqluAisQHnY1c=;
        b=aA0JCnnfsNic+YY6YDtG44hydcw0X4Rm8+cxfFOO7Tn6VmMXJW3X6QPnIh3Ao/rA9X
         eLFSS8FBQacptKG/T+UhrO97rWJYdEsOutmgxY5ZLMXqm0YXF4obwAAIz0hjnZJ5+Lco
         OMTHthYaCEaa+Y8MYuKTvxwxLIO06TEDFwL2vVpiA29DaJTMKgt48YSShc+X1Xv/QV7u
         I8JCLBcw+pWkACv6xOMTkjuy/3BS2td36jsRVMHoCaO8Zxxtl4wBrLF6i8X/yQUfnSF5
         nazF6oEmwF8tQrn5OynVywS7m1DPCS/KdusLGf/iAtMBH1AeloDPfIU5V6Bx69gJwFVE
         MiKw==
X-Gm-Message-State: AOJu0YyvPUSs+P5BZOw6UWXI9rFKkG0VbhBQOeXQYcFlckh1SftFY9uy
	pH0ZET+/BjlJcseVgFPTYB77MTDKARuBOu7N1l5wA7e1vvxugvp8Y3965CdTSHubea2RBHk7EyT
	1l5YBg9N3FfG/dMh4khX/qVC7BpVpfNgdmmdaMyzK
X-Gm-Gg: ASbGncsqxrKiqWVwY1k0QUFccB/wpHymMAhy87doynpNOTR9crjUfZSao06l5RPoI54
	MYlz7MQfWpxCgFflcxvwt7Sf4/imwwQjn1jsWGLq68GQfqLFSUmI+XtgkrOMUIHYVOTEucQpROb
	KDVhgPOW58ylixAs1yWt0PS1cpAwT7qVoZu2hpoy/b
X-Google-Smtp-Source: AGHT+IHmUKXnDBjPiogiMqZkD45gI4k+hQyJxgaOLbhs8ppAwlFztHNv7SDcMxh8oBKPWtJql2zqg7tTR5aL+hsipUo=
X-Received: by 2002:a17:90b:164a:b0:311:ffe8:20ee with SMTP id
 98e67ed59e1d1-31a90bb0877mr6752782a91.11.1751488844747; Wed, 02 Jul 2025
 13:40:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAJgzZoq0AvK8EDicLk7ZMVbWS8MmoqW0Nv4U9HCFUXnNw+yUGw@mail.gmail.com>
 <7low246gskvwm5sxyepqz6io2qdvpctxsi4pnzmb52na2ynt45@s6gghy7pcq76>
In-Reply-To: <7low246gskvwm5sxyepqz6io2qdvpctxsi4pnzmb52na2ynt45@s6gghy7pcq76>
From: enh <enh@google.com>
Date: Wed, 2 Jul 2025 16:40:31 -0400
X-Gm-Features: Ac12FXw_EBM5zkCnIhoTap7zJaCeLeAhBW1RcWh94Wc5xuCvOqlcBz5WOPe1yJw
Message-ID: <CAJgzZooxTPz0BQh8NoG+osQCG36KJ3rGD0dbMhN493cnTqSWFQ@mail.gmail.com>
Subject: Re: [PATCH] wcpncpy.3: fix incorrect return value.
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 2, 2025 at 4:27=E2=80=AFPM Alejandro Colomar <alx@kernel.org> w=
rote:
>
> Hi Elliott,
>
> On Wed, Jul 02, 2025 at 01:04:15PM -0400, enh wrote:
> > ---
> >  man/man3/wcpncpy.3 | 8 ++++++--
> >  1 file changed, 6 insertions(+), 2 deletions(-)
> >
> > diff --git a/man/man3/wcpncpy.3 b/man/man3/wcpncpy.3
> > index 636c1cdac..b1752ab52 100644
> > --- a/man/man3/wcpncpy.3
> > +++ b/man/man3/wcpncpy.3
> > @@ -79,8 +79,12 @@ .SH DESCRIPTION
> >  .IR dest .
> >  .SH RETURN VALUE
> >  .BR wcpncpy ()
> > -returns a pointer to the last wide character written, that is,
> > -.IR dest + n \-1.
>
> Hmmm, yup, that's quite incorrect.
> We should add this to the commit message:
>
>         Fixes: d91506f8faa4 (1999-08-24, 2022-12-19; "man-pages 1.26")
>
> > +returns a pointer to the end of the wide-character string
> > +.IR dest ,
>
> I don't like this wording.  It gives the impression that this function
> is appropriate to create wide strings, while it's not.

i actually didn't come up with that: i looked to see what wcsncpy()
said and copied that :-)

or is that the distinction you're trying to make: "it's only a
_string_ if it's terminated"? that's a bit subtle to be helpful, i
fear, and not really actionable --- this is a problem with all of the
'n' functions. whether they're wcsn or wcpn just tells you which end
you'll be left with a pointer to.

> How about this:
>
>         returns a pointer to
>         one past the last non-null wide character written,
>         that is,
>         .IR dest\~+\~wcsnlen(src,\~n).

yeah, that's a good way to avoid having to describe both cases
separately (even if the "that is" part is likely to just have folks
reading the wcsnlen() page next --- POSIX's `&dst[n]` is more
grokkable).

> (BTW, a wide-character string is known in the standard as a wide string,
>  which is shorter.)
>
>
> Have a lovely day!
> Alex
>
> > +that is, a pointer to the first terminating null wide character
> > +if any were written, or a pointer to
> > +.IR dest[n]
> > +if no null wide character was written.
> >  .SH ATTRIBUTES
> >  For an explanation of the terms used in this section, see
> >  .BR attributes (7).
> > --
> > 2.50.0.727.gbf7dc18ff4-goog
>
>
>
> --
> <https://www.alejandro-colomar.es/>

