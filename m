Return-Path: <linux-man+bounces-3002-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 190CAAC209B
	for <lists+linux-man@lfdr.de>; Fri, 23 May 2025 12:07:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0BC2B3B0FE6
	for <lists+linux-man@lfdr.de>; Fri, 23 May 2025 10:07:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D5142253E0;
	Fri, 23 May 2025 10:07:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BPbJkzec"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEFBA222580
	for <linux-man@vger.kernel.org>; Fri, 23 May 2025 10:07:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747994840; cv=none; b=PVE8jiRtRpBVhEwOld5thAy9XGLvrMtr7fbVgSd6TTlBEN6ftpZLp7VeO4SdGfWtr7cdGHBTU6RhShiXgZW8ZKBtM+1rycUVqLiQvQGMeyG+hxwheWXGqi3peHCmRg2j6XD1k+ZfJ2dR/8ABXVyL+xnGDSPS/wldphrZLyrZwd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747994840; c=relaxed/simple;
	bh=DizBu/1BBJ7IuP/WaX5tOH8r6Kqmn8pOSOz87fyDCuI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lfFAWQCuu00R0N1WaOeOgSNfhYjPgX/luhhae7AaCgLMPCpKu9vH8ddnAyFet12xgK1vo/MJNEFhfNkfs/hN7ZsQOshlXTNhJXKCT7EuwjQNHDLn0onL+zNfTGaY3cEqE3BdgQFgOfDaiysbCfRwGP0Cf1EEySGLtSCJmMTBMq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BPbJkzec; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85A05C4CEE9;
	Fri, 23 May 2025 10:07:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747994840;
	bh=DizBu/1BBJ7IuP/WaX5tOH8r6Kqmn8pOSOz87fyDCuI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BPbJkzecUlp5lcv5BXrxhDFWaTEW0sCkox/y/t+ZEZxMpF0UuIaFr1+2YAqeYdfUk
	 EwYFuB4GpW9CO/Jex0KQ+kGJMPczZGjHaibj0fnNuS+4An6Wvc8+uTTnHJeirGbcPl
	 KiTKgvp2kptAZoTbzT0oMimTnZQ8Yh+Gc7VWUKG96rUOp/vpsW4HHnqQ2rMW4+qC7i
	 bek5l09dZzjPdypz7qQSofnhoS/WMeBvpo892DtFy8pmrSDJ2/Yz4pU8DCWSPJda1e
	 VgEm0GC/b4brBAdL++plJC9d69ewFa2BNmHPik3panX8zfkIJNBaQeQ3wJJNmmimdo
	 EOXsH2djVeuqQ==
Date: Fri, 23 May 2025 12:07:17 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 2/3] man/man3/getenv.3: Mention secure_getenv was
 standardized in POSIX-1.2024
Message-ID: <ydg3rotetynkavjxl4tg6piizlwgoohh75b3fghnkv24yrhnfe@s3fjptbq4gs7>
References: <6abbe99f5e8710202650bfee5d41e6fceaff4d1c.1747515178.git.collin.funk1@gmail.com>
 <f1cc4b34bb42b09ae9c0820df8fdece6fcebfcd8.1747515178.git.collin.funk1@gmail.com>
 <ationx4kn5f2d5b76ayyufnjakuy5q3pkgmgq7fagwgakfitar@5l6ty5ftdsrg>
 <87v7pznd4a.fsf@gmail.com>
 <aqq7gag27u7kwnltq4zumzjk2wvlsevbevm5lkgr3m2x5rhowf@hdufz4pmli3q>
 <87msbaop79.fsf@gmail.com>
 <cvljded6h7v7vqpu23hdx2f4wl5smsbqsvbkrxjg6nf5sikwhs@42plwr5rowkx>
 <87v7pskob9.fsf@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="phkj5rrvakxqlaee"
Content-Disposition: inline
In-Reply-To: <87v7pskob9.fsf@gmail.com>


--phkj5rrvakxqlaee
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 2/3] man/man3/getenv.3: Mention secure_getenv was
 standardized in POSIX-1.2024
References: <6abbe99f5e8710202650bfee5d41e6fceaff4d1c.1747515178.git.collin.funk1@gmail.com>
 <f1cc4b34bb42b09ae9c0820df8fdece6fcebfcd8.1747515178.git.collin.funk1@gmail.com>
 <ationx4kn5f2d5b76ayyufnjakuy5q3pkgmgq7fagwgakfitar@5l6ty5ftdsrg>
 <87v7pznd4a.fsf@gmail.com>
 <aqq7gag27u7kwnltq4zumzjk2wvlsevbevm5lkgr3m2x5rhowf@hdufz4pmli3q>
 <87msbaop79.fsf@gmail.com>
 <cvljded6h7v7vqpu23hdx2f4wl5smsbqsvbkrxjg6nf5sikwhs@42plwr5rowkx>
 <87v7pskob9.fsf@gmail.com>
MIME-Version: 1.0
In-Reply-To: <87v7pskob9.fsf@gmail.com>

Hi Collin,

On Thu, May 22, 2025 at 08:18:02PM -0700, Collin Funk wrote:
> Hi Alejandro,
>=20
> Alejandro Colomar <alx@kernel.org> writes:
>=20
> > Do you mean mentioning FreeBSD in VERSIONS?  If so, yes, I think that
> > would be useful.
>=20
> Yes, that is what I meant. I'll write a patch for it then.

Thanks!

>=20
> By the way, I don't see my other patches on the master branch. Is there
> another branch I should be writing my changes for?

Hmmm, I applied some patches while traveling, so they're probably still
sitting on my laptop and I forgot to push.  I'll check this weekend and
push anything I have there.  Thanks for the reminder!


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--phkj5rrvakxqlaee
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgwSNQACgkQ64mZXMKQ
wqmdxw/9ExqVGKFM33kOyngYAJyn6lOz9nu0ihvmk4AoYwyZWlpR2N8sWNLud7KG
IhDKXuJblOI0/WhqYt3gKXdkmXE5p7oQafIBlPiT+3A3oFNkPMuUpb7o1rDnF/ek
kyviZV4Ji5qRXM1ellqMQdkn4Tj3fJd81KJyE7XYE/RrNAuO3n9DEA7g+ki+1Fnv
FVDt0xvnK3XYjRespEcC5o85KtMJcM06fhBsU/BvbUW8BsZiVmGXqhv1XLGTegKn
6kqna0RRPZMhzOLhXF9LpG6NYrd8MUqWzEqIo66oTevwGvd7PwkzfjHZCDVvNeUm
VVfCmao6IaqxpkDckXC7q58orOxxClEhDisLNRmbu8EfT3e3YuBi7wTD11nG8aky
qeh/ILidpc2ntQ3iz4N3/0a5Q3tmPsZseH1uZA4xXbyieg3trdzwXt1SMcKANY01
yth3mXajO8WTrQUsiPoFrDpUUEFxAmGBpr4Qa15heq9oLbqmqCZAZ0T4GWN3ON2K
4iHX9ake7TintGajrUEsnBtIYzeDZHlnUylz4ma8se5c8j9kcVLRWbxgK2HrXbZn
qLvvOoNX+4sM/UaYso7jlaRepqA2xRv84bxM089/cOysneBtsbARx35tFXFqYC0f
sFmgR6OlEkr5gJDi1Mls3JCX7b/TFy5RbT4EglyNSAi4NHk/6Xg=
=lkQ4
-----END PGP SIGNATURE-----

--phkj5rrvakxqlaee--

