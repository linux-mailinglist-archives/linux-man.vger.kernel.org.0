Return-Path: <linux-man+bounces-2860-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 53FB7AA7DCA
	for <lists+linux-man@lfdr.de>; Sat,  3 May 2025 02:49:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9F075461059
	for <lists+linux-man@lfdr.de>; Sat,  3 May 2025 00:49:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC57DD528;
	Sat,  3 May 2025 00:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="krpTDvWU"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D6C632
	for <linux-man@vger.kernel.org>; Sat,  3 May 2025 00:49:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746233363; cv=none; b=AxBB6K2ici8xdMzQBXz3PJWsBvf5+1QxdIr2Vsktp2NrvVJ76s8gntY2SrHo0wAGOa0RSEvxEISgz1tqdfvY7Oe5NlTRTCoAr0WEIBfOSQS/TiSVX3WwVppSrJ9J8XIwHaJaRBQWkJeyNxR94UEZTe6E5PE6AqSB9OzWhUtvrjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746233363; c=relaxed/simple;
	bh=nd9EjPdjimVBoTBRAx3kxgh1ql/dqPIh18LpKDNPlO8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QxCqxsCy+DpTxWRy8Z/4EY4UWsyAhOJLJNCjC/8QxbrbVT9AE6lw1PfjFRTz0et2/xvIcZT/Z+0EeCO2HAWakqfkqoslPj4FzoTP9GT6f2lx1eCX99H+Ki0+NtxXiUgqNT7kDoyoyvvVvWVH77VWJ4oBtNFpLGN9HGdP48heuNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=krpTDvWU; arc=none smtp.client-ip=209.85.160.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-2c2504fa876so926249fac.0
        for <linux-man@vger.kernel.org>; Fri, 02 May 2025 17:49:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746233361; x=1746838161; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/Kcv1cls1b2SXf1oi2LGI9LaTBMRv+wt/Fjo8PPXO4M=;
        b=krpTDvWUuRbriWLjxRF8tDvpEiHbAIqi4mSNiTTV+mSDUEP0eIiGuJMV+TZuU3R3cW
         Owzu7zh4rOEWGTo84eIO76E2S9Llg1BtjEdMmOXXpJZ1vx6oIyM3ctV+nx07JqRy7g9J
         6IPdiG0/8ee0bmsbCeUBf8fUs+7NWX20jb5iAcqt2kbZGtPT69NpWmkVRMipnZGKlZ1/
         oHRbT5P5ea579Un4wNWkEbPX2GK2mii4791lSCJs1MgYutqum8kE2UkgmI25DqCkDDZn
         zL0jglkzGjJcXt9Nv21w4EcAWk/jT3oqhY4ozR11NA9T68o5BLZ3WHqPoheWXdBTwRez
         uf6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746233361; x=1746838161;
        h=in-reply-to:content-disposition:mime-version:references:reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/Kcv1cls1b2SXf1oi2LGI9LaTBMRv+wt/Fjo8PPXO4M=;
        b=OEVqcs4On7/cf/b6n8wqNEY/NaTohb8ocjzjUlEJvQBzY8BeJjFwC443vXbJJJq5a2
         XPtJKilkfmvZd2/SRQCDyDkwXMYOSr2YC3WWT4wpIuiLHZhad9vKEJSwVqxQSfJX2cGl
         hniDUTiNtF48S72tGkE0eVb1to+xaM9Z43VAZPLzLncbJ1b705uuk4Dy3V1BpiHrD5uP
         d6xBc1+RjWSumeC4YRMgrUtbkFTBnACUjVF/DUYjz716+edtpepynJU559mNWMehaj/P
         kPi8vWwsUj8PVHJ4vcrwcNFGgB/Q2XHp8EzIjAqN6mAE3Bo7ulobJ7E95yMxUtXBtoA8
         J58A==
X-Forwarded-Encrypted: i=1; AJvYcCXXxp22acIB7LJ8Lm7nUSTa1tu5CAZTqwGPX3BcSrw7v996DgrHfoiu8QHKczN4dZ3JJ0TogskKQZc=@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9bFTQlW+GdM2Y6IHPU/XoQxPfpiFDtvCJSRnVqxhFdmf7AjJO
	bXCR870VAsFK8mQBSeJR6MmRINb0736mKW1OfZ3ZJ3azDGT1UhbV
X-Gm-Gg: ASbGncttZxagS0L1EcVYfw099oGMAN72eEUF5bN+aBFD96tOG+Robuc2xaLQFF9K0Nb
	AdxXbP2jARP2/Xab7a3vZ5+hLYlqGGtsA8Jop6XTvhyekaI54S8M5FPafgATNVwQNHPrVtUNeq7
	2piLV0VUlfkasTzY/8AninKUPhAMAPFcceslts2ZfIMqrk8fTNgZEfkUgaD+OWhlXF+SXSLdSE8
	iTLjz5H6xjAWW9O4JznV5Js8JRvaQhfd7z/ftn0AXZd28DztTuy94UWw0SjSiX8+UsexJgrpklY
	9buXFbss4/X6aIxl+qG9MvYDE5MgLPw=
X-Google-Smtp-Source: AGHT+IFKJ190iCdK4vYAEfwOgNfI9Qk4wigfXVZWpMLqYlZ8sOPO7BcqLcn4Qmievl4ExEp5ViMgBA==
X-Received: by 2002:a05:6871:2b1a:b0:29f:a0b8:6f7f with SMTP id 586e51a60fabf-2dab2fe0be5mr2323511fac.12.1746233360918;
        Fri, 02 May 2025 17:49:20 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::49])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2daa0f8bf86sm867857fac.26.2025.05.02.17.49.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 17:49:19 -0700 (PDT)
Date: Fri, 2 May 2025 19:49:17 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: groff@gnu.org, linux-man@vger.kernel.org
Subject: Re: grof --run
Message-ID: <20250503004917.6hg6ymsdfnnn4o7v@illithid>
Reply-To: groff@gnu.org, linux-man@vger.kernel.org
References: <dbczpry2ukcht3d2pw4b2l7yla63eetfprfpblhvhwj2dpalvv@ba4itgqked3d>
 <20250502120139.yqstcq32hdtagozl@illithid>
 <fg6yru6cwn4itrn55mmnpt2eerjeph3z3ow3asowf2dhkq5iwv@qewmi2xgqgf6>
 <20250502141948.bszoef7vvhnuworm@illithid>
 <ina3kzpisr62v4dcrzrneae6mo5vlaoosgmlhaewpeqhusv6u6@xy33kozxiknz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3zzrf5l3b44rgsp3"
Content-Disposition: inline
In-Reply-To: <ina3kzpisr62v4dcrzrneae6mo5vlaoosgmlhaewpeqhusv6u6@xy33kozxiknz>


--3zzrf5l3b44rgsp3
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: grof --run
MIME-Version: 1.0

Hi Alex,

At 2025-05-02T16:59:58+0200, Alejandro Colomar wrote:
> On Fri, May 02, 2025 at 09:19:48AM -0500, G. Branden Robinson wrote:
> > Your grog executable may be out of sync with the man page you're
> > reading.
> >=20
> > Compare `type grog` with `man -w grog`.
>=20
> Hmmmm.
>=20
> alx@devuan:~$ which grog
> /usr/local/bin/grog
> alx@devuan:~$ grog --version
> GNU grog (groff) 1.23.0.2695-49927
> alx@devuan:~$ man grog | tail -n1
> groff 1.23.0                    26 December 2024                        g=
rog(1)
[...]
> Okay, this complicates things a bit.  :)

I'm betting `man -w grog` reports "/usr/share/man/man1/grog.1", possibly
with a ".gz" extension--in which case, mystery solved.

In my shell startup files, I make sure to update $MANPATH any time I
update $PATH.

This is not a common piece of cargo that Unix newcomers acquire;
historically, I suppose a lot of man(1) implementations didn't support
$MANPATH, but man-db has for decades, and I see mandoc(1) does too.

Setting it won't, as I understand it, help FreeBSD or macOS users; but
the former have already memorized everything worth knowing about their
systems, and the latter use only "intuitive" software that requires no
documentation.

Regards,
Branden

--3zzrf5l3b44rgsp3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmgVaAUACgkQ0Z6cfXEm
bc6CMQ//WL7J4a6bWhLHpuKd+E7z2zP0/rWlN3fwHxpkyE/QmP+Y0PGEndD//wHL
XUjBg9xmzMyYQmYnTACCPshbxYqYn0wCxOcV7evUWz9yFN8TGtQUENqUSm9gRb8B
btj/QfwDqXWx6YLD6fUYwH6DfA2zNlFjNTXwV+kWdqOWFdJRLO7tetTSvdRr1mtw
sbvHaGQEfvLQNWsSxcnAIm3XXGRl/SfEpoWMAaDEII262HGmrPRQ/fSRxzsE135Y
SWfhxKU0h4Lizxd9vxUQrhI5SRUshfpHucqTuvnaP0s4Hz7HnkrwNg9Cq5mwVt3q
FmK2wtwevZphor7ebd1J7nIp+f2yh/W0gPL6Fwq3jy/DN+vMb7a+uYYQdDkkRSDy
eeAs/10m2+wOs1oZIM9yd6bJP+qPY5OdgjLhiO+ikN1UVhdmwlajWjo90TGEZMgh
0n5CynUL5P4Hw57lQU8nnMQ8F3qUwMPnPzi+TmsVZxVvl3/nwjEOJKmzq2Sl2x8T
xZ3BkLUuJS1EBcyAPQegVLR4fVmqI1CjxoS8V/h2ovPyQRhc7A/rxFcYzXqvQZLP
WmvPuu7ipxusjiraDOVsnOc5UVb+Q6V4qXKosC/EKPnFM8nXBtpkmUpMJG6dewTK
PJ3TuZVjJLxZ4ngNJar7Q4K5/HSXdkfubXcBHovUEOM4vnL0HmM=
=IAEz
-----END PGP SIGNATURE-----

--3zzrf5l3b44rgsp3--

