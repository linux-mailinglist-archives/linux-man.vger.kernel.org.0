Return-Path: <linux-man+bounces-758-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F1A8A4511
	for <lists+linux-man@lfdr.de>; Sun, 14 Apr 2024 22:25:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4E81E1F2118F
	for <lists+linux-man@lfdr.de>; Sun, 14 Apr 2024 20:25:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA6D8136980;
	Sun, 14 Apr 2024 20:25:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lBSEQ1FE"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47CCD38F83
	for <linux-man@vger.kernel.org>; Sun, 14 Apr 2024 20:25:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713126332; cv=none; b=e/nmQWOwwVSS74Nh3z1DSlBB7J5sVLpE7MMcqNb91riNjogbdj9myXb4rgSY/1I/VqXPIF2ILsspvYMTQkCJzOwLguVMgdQ6wuhRtLD3kbXPqULY5N211NUnkQdXR148IsUFuLeru9Ll3rYLOXbCiHw28Heht9szdHA21Io2KeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713126332; c=relaxed/simple;
	bh=kSroLhKmEAHSH/lN6DDvAFEeJi7BdZ/hw+LHQmwGuKM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kCpmlEqfNEwjH/DYeVoHFXBrxzy03khAAJNRou4A7sb0wqr+Eo8arskfBJezf65qPzUdWdckQN3BV0EOkoUE9bOgXYJ44Th/jet5G9C8nN7AZ4Fie5RxOw060TbQ5qCg4Y8zdzEDyWe6nleKyZEVGLmhorfmNiFNP1yIWFDfPQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lBSEQ1FE; arc=none smtp.client-ip=209.85.167.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f181.google.com with SMTP id 5614622812f47-3c709e5e4f9so723458b6e.3
        for <linux-man@vger.kernel.org>; Sun, 14 Apr 2024 13:25:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713126330; x=1713731130; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=g2CDuagmTGDBC6NbvTOOXqUAuKVqdmJJEnCg64doDo4=;
        b=lBSEQ1FEizGqrD5Z6I4bfzcSTdo12rhozYCx/6KeTx3a2a2L1sBrgbqzLmFl6wMMzE
         zaeuy2YAIAa9368xCebMopO1RccXl4PJnXFk1G8F9K7Obf+mdYDe7dTReoz6tV5INHRl
         zkNzEUN49y+5jS+ZqYyzavUj7OXQWug7HLez6jLJaGlfzIp1j4yl8Tbe+DhnxWU8GkgU
         Ys9nXyK2HkVXS9eXqzxSDfUsoNHPJBLKr3yorXAgDFoIV8iPtHuNE/Xjuu5eU2Vzl++C
         oay+GNe1qBzcosF4/g4FXZziPM8XkoLAp3JT6ZnzXmB12sI5pueELqbDaP0WPhvwMz7N
         Y1Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713126330; x=1713731130;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g2CDuagmTGDBC6NbvTOOXqUAuKVqdmJJEnCg64doDo4=;
        b=XcdSa2MAUZqO57gofQe9hFqBaiNT7M48SqAgkCrnQo1qhQhAtjSlIqwWOklZn6FEHw
         WV3e+WkE7h6YmkzXL/uCvKnX1vgVAPRvIGLPhBD+O0j9xFDroU9N6CsjMSVFsNYrA56Q
         5N/2jCt2N/+DGja65v3D8b5MU/et4SZhQJQNkB3ZAXcsYL8DVa8oc0k0B67EB+GJoA9G
         IEp0yrg/XHa+y0qdJKg5Qd80l804nVP58qf+zJ6ijgDYMgzqYDiR4tE4DTCvGmfGa8Vm
         bv505aH0kyZXjQSf2RxLQBRorUoIJUqL48HATQjcHPVRCnp/vZARToNbUyZ18NHfXKT1
         bBaQ==
X-Forwarded-Encrypted: i=1; AJvYcCX7tXdnXXvXSlJ1OuKRV3LWYEmsp5yZ9BKr1YphEZUvwawBQVFYXmrMdkBYMHUb3fsCcDISJwmN+yeWDZWfWR1w4dl3rulC+HC4
X-Gm-Message-State: AOJu0YzXwBP/QUtzLqYA7S6sDq5aj5atnE3jyXqGM8m2U8EkVhaRFLgW
	fmJKaOjYEcXwq5xxgnA6ilBDXeDJ3F74rc/Zjxa+KlwnVU6kfroI3sgqUg==
X-Google-Smtp-Source: AGHT+IFrvj+mQti9E8J0sNdsmB/bgagP3u/zBVcBBsWC4hj4hwULC5+RF4hx+u9ek97YzMUt0hcjEg==
X-Received: by 2002:a05:6808:982:b0:3c6:998:e304 with SMTP id a2-20020a056808098200b003c60998e304mr10417594oic.44.1713126330345;
        Sun, 14 Apr 2024 13:25:30 -0700 (PDT)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id a9-20020a05680802c900b003c60e8a9aeasm1360723oid.43.2024.04.14.13.25.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Apr 2024 13:25:29 -0700 (PDT)
Date: Sun, 14 Apr 2024 15:25:28 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Deri James <deri@chuzzlewit.myzen.co.uk>, linux-man@vger.kernel.org
Subject: Re: Linux man-pages PDF book
Message-ID: <20240414202528.xqrt5wqyec5kdehf@illithid>
References: <ZhvLPvqHzpw2Jl3o@debian>
 <ZhvM2Yy6lWGJLhtg@debian>
 <20240414125653.h7y7y66yt7cgtgwm@illithid>
 <Zhv9F9VuAi6qEQ2L@debian>
 <Zhw0lSlm0F2qnqMm@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ud4b2rdxodtjeket"
Content-Disposition: inline
In-Reply-To: <Zhw0lSlm0F2qnqMm@debian>


--ud4b2rdxodtjeket
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alex,

Wow, I'm envious.  For you, lore let those gigantic attachments through.

At 2024-04-14T21:55:00+0200, Alejandro Colomar wrote:
> I forgot to mention that while I can't reproduce the performance
> regression, I see a regression in the navigation panel.  When using
> groff.git HEAD's an.tmac, the navigation panel doesn't allow
> collapsing an entire chapter, while the Linux man-pages fork of it
> does allow.  Both PDF books are attached to this message.

I see what you mean.

One bet is that I messed something up here and Deri's first or second
hypothesis will be correct.

Here's mine.

You might need to set a register I added in this commit.

commit 5fbc22d022c07f517bc83aa9b8c97ea5536efd18
Author: G. Branden Robinson <g.branden.robinson@gmail.com>
Date:   Sun Mar 3 23:57:38 2024 -0600

    [man]: Add `an*bookmark-base-level` register.

    * tmac/an.tmac: Add experimental feature to support increasing the base
      level of PDF bookmarks.  Define register `an*bookmark-base-level`,
      initialized to zero.

      (PT): Add 1 to it when producing document bookmark.

      (SH): Add 2 to it when producing section heading bookmark.

      (SS): Add 3 to it when producing subsection heading bookmark.

I don't know what you're using to produce the chapter headings in the
navigation panel, but that likely needs to be at level 0 (or 1,
depending on the convention the PDF spec uses).

I added the foregoing feature because it was obvious to me that someone
might want to incorporate a man page collection into a larger work.

I admit I didn't think of the chapter organization application.

So you'd likely do something like this when building with groff Git
HEAD.

  '-r an*bookmark-base-level=3D1'

Let me know if that works out.

The foregoing is not documented because it needs field testing.  Now
maybe it will get some.

> > $ time make build-pdf-book 2>/dev/null
> > GROPDF		.tmp/man-pages-6.7-53-g5125d867d.pdf
> >=20
> > real	0m13.307s
> > user	0m16.229s
> > sys	0m0.481s
> >=20
> > $ time make build-pdf-book 2>/dev/null
> > GROPDF		.tmp/man-pages-6.7-53-g5125d867d-dirty.pdf
> >=20
> > real	0m13.564s
> > user	0m17.060s
> > sys	0m0.510s
> >=20
> > (I've built all the dependencies before hand, so that only the PDF
> > is built in these invocations.)
> > (The -dirty one uses -man.)

This is very good news.

Regards,
Branden

--ud4b2rdxodtjeket
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmYcO6sACgkQ0Z6cfXEm
bc67ehAAob7zcJVudtZ5PvbmaFcIVZB5a0DFXfMnjWpSsAZsc66LA0QIK8ntcmCf
/+BaFKHxSDdlkuM4sS9jRfrGb8gjecyNOmIhDjNx9hN4t7qgzgZS76hbFhO5bb5h
ynksYbXFiBpj20yu/gPGRWF0+rbhoikSKjp5c7kN6bmO0OJPIVtxFOOphNMI/rJp
/xJkT1e+K2WL3C8LrDdOCjAWVYhoznw6sEFkzKbYRlnaXNT3hLKFsY43J5fA6Mj2
kyz9VwxZv5To6a18pEXEdfW2sm5SMAQTdarscYF5kSAZP7HJaJv8ZqpF9gzJZ604
TjUnHkCnahB5/Iqzrno461KnkGGH3JSIFFFPPC8MalwGsi3GsulJqFqAIYeslelZ
5Q8XRAATo1HXyPn6SOyqFlgEqrE1/LsA9uC/xs5V8UyK4wsDXtii+6Nkf292qDV4
oSjJCiD9noz9MPSDGmWfN5uSM4GgzfuZ0Nj+AXNade9BUQBWvc4LPj136X8g6/P6
InPx1b5++qT/BPFzUX3hUKiWqNTeyWp3e2APPm1Gsymox5qO2OwqL1pEhniIT/bc
18YXFMjaUMWQCaz6ywEeQTdN3gBbI+1AKgNS60ov0cv8OoKnVvZgpbhxX8lTL7zA
kqo7Y5eYeW2mDGrz6x44M4z5a9zRXKQ+TG/1enmUw5WeNRDz5T4=
=e7xv
-----END PGP SIGNATURE-----

--ud4b2rdxodtjeket--

