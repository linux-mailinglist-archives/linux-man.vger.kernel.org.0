Return-Path: <linux-man+bounces-1748-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E532996743E
	for <lists+linux-man@lfdr.de>; Sun,  1 Sep 2024 04:56:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4E6B0B21D13
	for <lists+linux-man@lfdr.de>; Sun,  1 Sep 2024 02:56:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D327A2746F;
	Sun,  1 Sep 2024 02:56:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ar4txFS0"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 449222901
	for <linux-man@vger.kernel.org>; Sun,  1 Sep 2024 02:56:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725159372; cv=none; b=A7f2DyY4tewQXC9pLLCDDZGmPMhZ7Kl6IfWv73vaXNrEY9aT7Mm9ABCUx9KUz8w0PBnVqXdPxxsGApVxDviK7o2iZKYnXqLULVLH76DPhcdrPYiLtdVyR0rYV5FhrwCqmupXksz0pWcXD4QQrTil2FKkbzgnKoKVC3GVtUT3vMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725159372; c=relaxed/simple;
	bh=6WhsuhAacaOtkFnsTWZjESFe4nPhG9FNyGqe5Mc2LSk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mBkeLZWcoqJHNCAea62cwxQqjbB6T9NebJ9Ou0+egKGtGbiWZput1BadXajMkfczafidCqq3TK+GdAnney2i9S2S7VouM1V7YFZxPcLSPiASOn8DsoNzqFsLqO65q2buiLHN9+c+WomG1B+Gz4/uoJX9/UHdwT7ZTFFPRC27GGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ar4txFS0; arc=none smtp.client-ip=209.85.160.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-277e6002b7dso100296fac.1
        for <linux-man@vger.kernel.org>; Sat, 31 Aug 2024 19:56:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725159370; x=1725764170; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tXqxhMEfkeliWzXSQO8miRObOS7dNWufChZZucH7/8E=;
        b=ar4txFS00/yYjbxfheJUo4yzYeweBdR1bDCq72VJrlGylUp8WQW5uaCpYNralHi+Mq
         vxL0YqP5OoZgre83iKxNLLasqxCGLKBzKILBR75OZzl126GtgdG6kZUsg2ylVAXVSNBw
         xZlG16uWbhaSYvPX8BMWZ/9ntgVQP/xgBb02YxMk0OmL7IYfJVFZXTe+K2m5h8ExAHDp
         BsIp6o02CWi253xdUsV7eZoqTnm/Jd2nNj7K6zdPOg3+5x14xEJzkqPrafJboDs8bAsW
         2GBx8jdNODHet7Pe/GL9o+JXjZk0hljxztsK/PB942xrl0JmHN7j87cI6wcOA/8wtoib
         ZJLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725159370; x=1725764170;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tXqxhMEfkeliWzXSQO8miRObOS7dNWufChZZucH7/8E=;
        b=FXjWzWKS2wGf5gJFSdSznhLd3iIbECsQEoAyviOzFN9Rbhj2GUmGxXjm9F91prpd4e
         xHqtAp4FOsga5gOl6w/BKuJuRWhiD83/cUQuHct+V1I0qQ0pVWwgXuKFNZFqXRwsXlJ8
         Am0x8K5/wIq6f1sCLaRxDtYVa6uw2DZ4+1fw1pbEbP5OO6nXYYZsQbqRUfmqX8GoX5FJ
         VkguGwGrcO571TyCHtTRcIgS3IZsOqzVrvSmI6LHrNXaUOWP4BUjtd0WZ5HF+LtXZcwK
         fBC267wJ3z895Z8Dnz3KA2J5bVvKF1flWCzKfY4f9eh7r+6S9wgtblNJhhl/ECqEH1vv
         VScA==
X-Gm-Message-State: AOJu0YykmWZHJggxfax4WaNN7+K8o32krVymRfw2d0SFtV9/VxmHfmLI
	knLK38+ILdEUKjiINUN/VTsOenZ4OHoKMzeUbAZg63uCL3HPdJklbs1d9g==
X-Google-Smtp-Source: AGHT+IGdKaJaafGTWQcOILEoQaUaSkX8ACEnS27KhYzvb7yBdbBwwqId18GJJWM05D64UkaVonZ2mQ==
X-Received: by 2002:a05:6870:5cc7:b0:270:64ed:c125 with SMTP id 586e51a60fabf-277c804bc6bmr4337956fac.16.1725159370309;
        Sat, 31 Aug 2024 19:56:10 -0700 (PDT)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-277cfd10121sm816140fac.50.2024.08.31.19.56.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Aug 2024 19:56:09 -0700 (PDT)
Date: Sat, 31 Aug 2024 21:56:08 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 1/5] stdio.3, signal-safety.7: srcfix
Message-ID: <20240901025608.xdapdc2xcsrsps4w@illithid>
References: <m74zkuysq5s2jgqm3usgr3eoj3qanyewqu2nqwrwxghhm2rqgm@pezvgfvx5o7u>
 <ncv4wczkcxldrdy3doqzae44vsouevafkwwszx5uh4pulwwlnr@v4keelsw2v7o>
 <dg74uszi4ni5mtr2cxznqgdj57hgdh7pmzktiog6vyzvyttpep@r3qenmyr3cop>
 <20240831212321.qhuqc4g3iqdhuzqr@illithid>
 <tfgnb73vim5h5eb7jo7hzfqdc3vilxwdg3zenovywjikzlthom@jilf525zjzow>
 <20240831221759.l7jkn56nm2fzmbiw@illithid>
 <zza4c2qlbpbpn62lg5mbcutcjnbeaiwrosvpe2s3hlvbyjjdzc@3xb6pb2wa5v5>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="nml3hls7uwcpsb2u"
Content-Disposition: inline
In-Reply-To: <zza4c2qlbpbpn62lg5mbcutcjnbeaiwrosvpe2s3hlvbyjjdzc@3xb6pb2wa5v5>


--nml3hls7uwcpsb2u
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 1/5] stdio.3, signal-safety.7: srcfix
MIME-Version: 1.0

Hi Alex,

At 2024-09-01T00:27:38+0200, Alejandro Colomar wrote:
> On Sat, Aug 31, 2024 at 05:17:59PM GMT, G. Branden Robinson wrote:
> > At 2024-08-31T23:43:01+0200, Alejandro Colomar wrote:
> > > Any advances with git-send-email(1)?
> >=20
> > No--I'm still stuck on neomutt 20201127.
>=20
> I think that if you use --thread with git-format-patch(1),
[...]
> you'll be able to use neomutt(1) as you're doing now.  The generated
> patches should contain pre-set In-Reply-To headers which refer to the
> first patch, which will have a pre-set Message-ID.  Please check.

I will try this with my next set.  With a handful of manual edits to
some oddball cases, I've gotten to this point:

$ wc -l ready.MR straggling.MR
 17136 ready.MR
     0 straggling.MR
 17136 total

That means no more of \fBthese\fP(1).

Regards,
Branden

--nml3hls7uwcpsb2u
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmbT178ACgkQ0Z6cfXEm
bc5hXw//fjmgZUa9BHZURmTSK4x0//5ood256o12avzKOaTDZ0FFHkyYs6dr57V8
k3Euu8BZM93aQ7dAPZ18BoQVOsl+A4UmUA1U5/FEiIeI0KRT8RUv7S0BqFhiec3b
8VMvrEAq+zejaGVuPYtqAbSE77Ar90Qc+/AIxGLiWUBEbtAKbOE6sE7OzschQuNq
I1SUcndHdYHJZd66vNsTBWhhh3WlE1yJVsiXDq4c4cKkD6gCxXmyGwcCpJfXNren
Htl1Rpqe2YLZ1/8k8tfuD1cNloRy7+E5xHHxKBbPxJ81F8HBiEAu6+4wgULcHLzB
byu0jDKX3cUlwesv1ovMdnJCyBX1IX4Ecuofc4stlfgPEnj66iruxsxwDK4qvieW
dNalkXIOVTVa/rwgg9L9NUVaIcmFOLN+GyZgO8v/DWxUQ0IhMxJG87eEInpIbQVQ
1oyEWIeTo+LMwGxpQlvPcECErb1qxHB7HCdlSlfLBklBky131PQTPDUG9Cgu+fj1
bLgCjyKIIneb5kjll8u4eZl3r5YfW6wjUhH3iPZ2+soqLMesDrEsC8vAM7wST9Jy
HaiLRsv6UH6RNy9FDfUBGJ+LXOAiPeFUtEfQKhnnyomV455a7eICjIGxHyWyUsBX
Iu9dS8ynJP1Ku+iM8OCBpDXjPmWuB9JtXMN1OZxtgbMhDi2I2vY=
=wfmW
-----END PGP SIGNATURE-----

--nml3hls7uwcpsb2u--

