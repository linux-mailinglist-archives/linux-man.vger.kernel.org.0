Return-Path: <linux-man+bounces-1896-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AC6C19C5048
	for <lists+linux-man@lfdr.de>; Tue, 12 Nov 2024 09:07:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DC6D2B29ECC
	for <lists+linux-man@lfdr.de>; Tue, 12 Nov 2024 07:59:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A7E020A5FB;
	Tue, 12 Nov 2024 07:58:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kAQNghde"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FDB20A5F7;
	Tue, 12 Nov 2024 07:58:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731398336; cv=none; b=YBA+PYtC18aJpOmwGCvulapKDFoiIEsoVxxWyx28xIyUhnzUvEJkdfEEx0hHGZindPcFloAxc1UoKZZiTBt8CHu6RfLRXuJomRDa/PTl39kv/q1pbecm28hLuAecj/q5McOrCcOTBd5MeDvvwmmIW7oMi+S19tuksJ6bV23HP/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731398336; c=relaxed/simple;
	bh=RoTRhrvmdCITBhc49mGXmvaw0oxEwJ/ffEXkezefAKY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GWjoWxzLYxDMw0Wfx2N2WYT/wpjX7h3meam1fowJ3IIQVXCJ6XneFdj09Z2EJOPkPMIrb3RqvWAbELZaQ8u1zBUzUJGdTL5KUKWBlHtvT4/7gNGWgcNtHd+eQ4OrdLzzASKsCFl1GAsWO8JfV+WFaS8DTqvntHhXuhCni1vwVVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kAQNghde; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 70AFEC4CED6;
	Tue, 12 Nov 2024 07:58:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731398335;
	bh=RoTRhrvmdCITBhc49mGXmvaw0oxEwJ/ffEXkezefAKY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kAQNghdeegsGhor1Ktg3raYM+rE3qcBiVjVsAZKCVg0q/KQcLPAt0Fe5fOdyqnfeb
	 x6CnhBFgjJTY2LWLUBgQ9FHS6dN872uMPdv34B9Y1NBUZwkYUvnsrWE3HIv3PisYZN
	 uUcI/erGMXX16bg6XRMuKZQuGM3AGTqLZOHp58CeWiP1oKtQMGYK3SPCfUM9WemehO
	 gfuIbcWKFfBCLv8THlmkv6UEJtWup4yiTqkgKgiJmCD7YSoSQxa+AyPuibOtsB144l
	 iE3y7s71Wivzf3rvlFomuIzDnTNMms0+u2jSZV4NSfnIjA6GabBwbIs/XV+ukCdmB0
	 ZM+qFjnrq3MCQ==
Date: Tue, 12 Nov 2024 08:58:52 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Kuniyuki Iwashima <kuniyu@amazon.com>
Cc: alexhenrie24@gmail.com, branden@debian.org, linux-man@vger.kernel.org, 
	mtk.manpages@gmail.com, netdev@vger.kernel.org
Subject: Re: [PATCH man-pages v2] rtnetlink.7: Document struct ifa_cacheinfo
Message-ID: <z7nfnfeck4dh2bfdixuysgd3nkd2dyyur5z4yiuls23jupuzqq@zstux7xbo62u>
References: <20241111062205.207027-1-alexhenrie24@gmail.com>
 <20241112011145.65139-1-kuniyu@amazon.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ov7ptd5z6nbwgukb"
Content-Disposition: inline
In-Reply-To: <20241112011145.65139-1-kuniyu@amazon.com>


--ov7ptd5z6nbwgukb
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Kuniyuki Iwashima <kuniyu@amazon.com>
Cc: alexhenrie24@gmail.com, branden@debian.org, linux-man@vger.kernel.org, 
	mtk.manpages@gmail.com, netdev@vger.kernel.org
Subject: Re: [PATCH man-pages v2] rtnetlink.7: Document struct ifa_cacheinfo
References: <20241111062205.207027-1-alexhenrie24@gmail.com>
 <20241112011145.65139-1-kuniyu@amazon.com>
MIME-Version: 1.0
In-Reply-To: <20241112011145.65139-1-kuniyu@amazon.com>

On Mon, Nov 11, 2024 at 05:11:45PM GMT, Kuniyuki Iwashima wrote:
> From: Alex Henrie <alexhenrie24@gmail.com>
> Date: Sun, 10 Nov 2024 23:20:06 -0700
> > struct ifa_cacheinfo contains the address's creation time, update time,
> > preferred lifetime remaining, and valid lifetime remaining.
> >=20
> > Link: <https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.g=
it/tree/include/uapi/linux/if_addr.h?h=3Dv6.11#n60>
>=20
> Link does not need <> around URL.

I prefer to have <> always.  It doesn't hurt.  :)

> > Signed-off-by: Alex Henrie <alexhenrie24@gmail.com>
>=20
> otherwise looks good to me:
>=20
> Reviewed-by: Kuniyuki Iwashima <kuniyu@amazon.com>

Thanks!

--=20
<https://www.alejandro-colomar.es/>

--ov7ptd5z6nbwgukb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmczCrUACgkQnowa+77/
2zKfSRAAlQnok3MaCRgkbNm7PaOBws4yp1GFP/+1TiX2frX972UhwbrOD6oNMsGO
l4cqD43w5SEE6rikkcpU50yGFAhrchHpgcf3XflU9lfLa+jN0v/lexNOEGQa0kAT
FZFjXNuBhqaVFiNT5idIykHbN406RpI/6hzNO19pQXW0jSkc5Y+AQSr9iPqWAxqk
ZNdQcxvyuVKwTX+aTjxkAbZGmshGgiV3DHah2A0CiPYKwDcK9beKW4NDLDrIAlxQ
SZSR4YDr5YQ3ATUGSZNn3ethL5zb63mV8KW23VGVcdcB7SnZnZ5HkfJ4mkdPWVKT
77exltE4feQw4qrgErPchVVlIZasVkA0RM5T/7N/itzMT/KEEubzVDT5SCUoPEKa
F3hyl4iRfxxhgDUKmvG1Vfg9BjJsIG+n6WBngHtisG60/Q68vIkwSprrfJk+Z8Gr
2Z9KStKJadV5QHDP9o4cgcxEk4AB++TnTSTohdTr7M5NZ7poXTu1zOl0g/tcuOCM
CPM8SoYpQECrJWCpjWIf1BK9HTNg1IXlYTxijpdkgX6+0aklCz861GFrPKA9/3Na
snwlu9hX573w7jgUR6gHfia30i6u6RRkUHXM1iSqI3WRM9ZwyZ+bJITkSGaCqoIj
/+XzJfiiZPxFK5M16pY8dArLb+LMMmZHKqIcfM0c9l8clfmGywk=
=5FtM
-----END PGP SIGNATURE-----

--ov7ptd5z6nbwgukb--

