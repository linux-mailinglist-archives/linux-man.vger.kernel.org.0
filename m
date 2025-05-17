Return-Path: <linux-man+bounces-2956-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 32D9AABACD2
	for <lists+linux-man@lfdr.de>; Sun, 18 May 2025 00:45:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CDE5A9E0BB2
	for <lists+linux-man@lfdr.de>; Sat, 17 May 2025 22:45:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74CB11C5F14;
	Sat, 17 May 2025 22:45:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EHpr/ekm"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C31B0137923
	for <linux-man@vger.kernel.org>; Sat, 17 May 2025 22:45:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747521943; cv=none; b=Kj7wb66EL07rbLZq3zFMtb61mvrpHpC2ekk6JbL5OwIqtGDgb74b72Nvx9eoUlbYUkn08bVpM+oImRvD5awnR+lM/KspuJE3TMhaZ/2namgaWqn8yIN4iNcgjk9E8nPh2Nl3u/cak1HfpkPNru4300bkxhc4gokEkduZ3262eLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747521943; c=relaxed/simple;
	bh=P6oi7M68FO23GyJTs4cX9e227difdmNqChl/Q+Tm4UQ=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VgSEwNOmcZyUlRO8v3EVuixCwnV9+cwzgtkhrDzhudzBSXIs2FMHC2lKnYpNDKJUm3uamw3yGnzWscOFlMhrOir8qxnfPTkW0ahbc/lqnyjb+wy4bhcek6FwAD0JK4YaQ4w0bmxFP4ylGb8NF/n0spV19WK3g7IUqGYdsUG1JhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EHpr/ekm; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-7302a769534so2530266a34.1
        for <linux-man@vger.kernel.org>; Sat, 17 May 2025 15:45:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747521940; x=1748126740; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JC7UvpArS/IzRTK1M1jgw+efGX2KnJFXZB6awA072p0=;
        b=EHpr/ekmtfnEnRYiS+wXrHm0mw264qSfQgEGuq9Y5sWsfHYVeY0TZsSsk0w2PCCnv+
         camA9OVoqFIhK6ycGoFYd9XinJqLoyzwt6IREQz9yE7f4Bs5+Ll73/SQCbr/d7ULrvSI
         Utu8znB6RIU8ybUHkStQC0ZozgmlcGCB3K2MdiATtAJIIZMVxFZNLNWnny4362nZyLqT
         zk/J4hUAjEMTR3rmnSRa4xHVC0ufpHgOwnh/9a5Uw76eLyXpQVM7b93bnut6Q37s2DXL
         eplwTqi8jWHl9NeV516urOWWz9qhAPC8V368EZvTBNzxV6kTi1obmeJs9T+5TcEVYbmj
         kcmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747521940; x=1748126740;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JC7UvpArS/IzRTK1M1jgw+efGX2KnJFXZB6awA072p0=;
        b=iaMdldv/O1PdbEMD+6PEljbS8d9LbNsqYtj0+uUX4w4baZPzEhGbBBqookxrqQEVHQ
         0pqpXDpoxt34UyAfU+Una0uEQcz9PyhAmvTblHpGMdi4bwkQTIh7kUk49h1sSGR5qD3g
         Om7cL2jsMUG7hk0qarXTtovFl5hNhw1qG/pmIiq2BjQ/fPIJC9l4R16DNbCuetv/zlro
         +8n8CJN3L2YKr0Rdi76K5E2pkWepOQtQrgY70AV7VBrpNgxLDOuzeYiVx6K0g9v6FnwO
         6raOxE72182OEmgOH/itK6s6TlO9uX7TKcVoVoZFLLHdsxSJMovx9Lxz7d+0qBjdzfwC
         WOkg==
X-Gm-Message-State: AOJu0YxCymlV0BsJPfUdEUlAEEerlHDVcQBdw4TZ55zpwJcDesuwPwn/
	sjvP3oiaOfuMBR2m2y0muO50C8itWJjlmjJLFS59k1shIFYK24YaBTBT5VpTFw==
X-Gm-Gg: ASbGncv1gjOsVnSaefi66DKrcii0OVUdLFFM6dZLgAFZ8gyHRlmduEO7/NXBx5BfvSz
	GyLc2qcUu4+Y3WY9DVgA79FMmIaUh+xLw55T4vhd2GQT59BKDaZ/bitSxUrGuIJoJpPvEFdR5cR
	ZAa1NBkNkfKlZPPPOmln2a4DsHCu/AZKhvX9Al2wJWt31LAmYUVbv7sCPv1i9+hg67mXr3agcPf
	b8ufrMvtoeDa1CvxzNL2NFXey7pwfw9E9DFGDrj5gJwL48HfqrZoBLhGt+7jxOTvAjw9MryZAWf
	UQoNyPXGylt14zMtxM5CyuVKFEiJidYUhapzwpKvhgAdb9/bZaMI
X-Google-Smtp-Source: AGHT+IHS5HR/bY86t41FvWKa20lk3GmTwCk4J8Oi32ZTD6E1OINQmzVIlIuc0WPm04SPEpr3ZogBYg==
X-Received: by 2002:a05:6830:7198:b0:72b:9d2d:804 with SMTP id 46e09a7af769-734f6b78498mr4750734a34.26.1747521940213;
        Sat, 17 May 2025 15:45:40 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::49])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-734f6a82109sm875124a34.28.2025.05.17.15.45.37
        for <linux-man@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 May 2025 15:45:38 -0700 (PDT)
Date: Sat, 17 May 2025 17:45:36 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: linux-man@vger.kernel.org
Subject: Re: the correct way to say "POSIX 2024"
Message-ID: <20250517224536.rx2yoelm3wle3ouy@illithid>
References: <6abbe99f5e8710202650bfee5d41e6fceaff4d1c.1747515178.git.collin.funk1@gmail.com>
 <dfcy75vkqhlitfddrvbtaufcir3mour2g6cczxstpp32fhkedn@wj7k34u2rk6l>
 <20250517214356.cpueutlfgi6t2enl@illithid>
 <CAMdZqKH0ak6Vb5cfsJDQJmJc65C5BC6TJV6t049om6tv2ZEBrA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5mztsplkojuynemt"
Content-Disposition: inline
In-Reply-To: <CAMdZqKH0ak6Vb5cfsJDQJmJc65C5BC6TJV6t049om6tv2ZEBrA@mail.gmail.com>


--5mztsplkojuynemt
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: the correct way to say "POSIX 2024"
MIME-Version: 1.0

Hi Mark,

At 2025-05-17T15:40:59-0700, Mark Harris wrote:
> On Sat, May 17, 2025 at 2:44=E2=80=AFPM G. Branden Robinson
> > At 2025-05-17T23:16:20+0200, Alejandro Colomar wrote:
> > > This should be "POSIX.1-2024", not "POSIX 2024".
> >
> > Do you have a supporting reference for this?
>=20
> It is POSIX.1-2024 (POSIX is shorthand for IEEE Std 1003).  For
> example the Introduction uses POSIX.1-2024:
> https://pubs.opengroup.org/onlinepubs/9799919799/basedefs/V1_chap01.html

Thanks!  That would do it.  This prompts me to check the documents I
maintain to ensure the correct nomenclature.

Regards,
Branden

--5mztsplkojuynemt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmgpEYgACgkQ0Z6cfXEm
bc7lDA/+LJmlAMvRa3kn8aHGJwjqPXSF9072t4X1xuDVQkDEGOgv3y+8kG6JokEp
ymEEpCtzytXAlsB7GIHhBgq304STSctCA8wejiVqOX/7Fk+dkKH1W6+W4Qyfd2PE
LCYBroTZmNfEic9LmEr7oKYrHbSo+iMufBDMmepUyYVGuB/C+7XLZq+4T6Eu8idS
8xu7QgJ2kwmMTweAGjsivQuSUdZasKOuQqY362w6qqPicWet3et3YsnH5VubQsre
OhVOyG1MHTvjIHFdFONi0R4OGQfPT0ZZR3GPJzeba/pJC8FRRdhn8zk+teJElK8z
phFjJpLq/XXd8DqrHfK0YUUq+PzD2SxE1M0QlLdTaTG6IPRid7+3JW2Cy8L29Wyt
rYbvrX3n/MARuA20LfQnTCiiI16G3QLF5nYVn97Zsie8LMvl1xa2MRW6YT9C1GXr
LmFo2HLOXe6Z39N/6ZDL8cVoFl9F+zpeEft3FtkB1eaQQjK72Hzo0O1lECJXvTJh
5a8xir7bCO6vYIdqdjDPJK+1GaZ4f4hu/i9TDHl3r2BxxqwN8VYGsfyYS6A6dBqG
pJzlHkvyg12vtIrQUcIAPNrnyB6C3zkPMggQ4WigiziyJFD2Tbtzxk1F/xvYcfep
80RgNI3LVH6ugiy6e31wByO7KPQQ9iHFG70YcXrpQo6ZShIzGmw=
=5Fk5
-----END PGP SIGNATURE-----

--5mztsplkojuynemt--

