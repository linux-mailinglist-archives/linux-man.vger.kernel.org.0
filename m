Return-Path: <linux-man+bounces-2145-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0664F9F203E
	for <lists+linux-man@lfdr.de>; Sat, 14 Dec 2024 19:04:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8B691188632E
	for <lists+linux-man@lfdr.de>; Sat, 14 Dec 2024 18:04:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46033195B18;
	Sat, 14 Dec 2024 18:04:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G2EpWRq0"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5D59190049
	for <linux-man@vger.kernel.org>; Sat, 14 Dec 2024 18:04:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734199468; cv=none; b=UqSIbeRVSLfzImqRc7wvAJ8ZeupGp2z58bRYnqypc/B6slpAZ4NKWI9ksRZjDECMSboMG5nO2c6J3BqensjNs2VrmYN6OzGk/SyZ6QOrBjMIjCX+snE7BMr6s5T+yJmzmNQRPElmal9My+bJBmRn2lYmalJI+0ahVwaCGP8NmEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734199468; c=relaxed/simple;
	bh=B9qQD3aVWoy4PxZ/+Ywdzzld5CEZNdfImBxPfgSchtU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=M1deWW2WhSj6o+3HzkuHoIeQUMw8Z+7H3vIZ77B2c+IblWSZhcKQ2pBoboEoitFeF72tu0xoQ2Vis3snXsTUjl4cmCya1cX9+3gS+/8Xw7/Jk9LR0JEusgWZWDgO4puPW0TWwtoa/Ilspu8WyTFpHUVNaCQugFeZUMGsPZUFb6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G2EpWRq0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92CCFC4CED1;
	Sat, 14 Dec 2024 18:04:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734199466;
	bh=B9qQD3aVWoy4PxZ/+Ywdzzld5CEZNdfImBxPfgSchtU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=G2EpWRq0NS93NZxFf7pM9mbKweVqiD+UxEHi0Z3FSfOvkOSDmU26+JfKinQLv2zSO
	 sPY008W3iwru8qJnP1vif+XdgEzifB6ArK+QoTdIJi3IKNalFqPPUDy/yWHK6Mn6Ir
	 zpAFc2cq9mHtdT23dHhbe1NgTtxSh6n7bkhhRUrs0NOorapyiCzOA1Zz8C2ptf1M8Z
	 +erymBIFT/iWu3CgKdlvVWMmynTE/q3D8esCYTwqZpJOCNwfeJi/YIBkGkj8dXM3RU
	 dcUgLdcYf7+kV9IVXNY2wtj0x3WRFolsPvXmyQRSSxQ6phAZjtGM+k6uHJziaT9iO+
	 /xo+8YGIZ9r+w==
Date: Sat, 14 Dec 2024 19:04:23 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Cyril Hrubis <chrubis@suse.cz>
Cc: David Howells <dhowells@redhat.com>, linux-man@vger.kernel.org
Subject: Re: ioctl_pipe(2): SYNOPSIS: $1
Message-ID: <20241214180423.2thsuyyfosrlyajb@devuan>
References: <20241214180348.pp4vrlnxqpo6cus6@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qna4miqzz3wwte34"
Content-Disposition: inline
In-Reply-To: <20241214180348.pp4vrlnxqpo6cus6@devuan>


--qna4miqzz3wwte34
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: ioctl_pipe(2): SYNOPSIS: $1
MIME-Version: 1.0

Oops, I forgot to CC the linux-man@ list.  Fixed now.

On Sat, Dec 14, 2024 at 07:03:51PM +0100, Alejandro Colomar wrote:
>=20
> Hi Cyril,
>=20
> The manual page ioctl_pipe(2) has this synopsis:
>=20
>        int ioctl(int pipefd[1], IOC_WATCH_QUEUE_SET_SIZE, int size);
>        int ioctl(int pipefd[1], IOC_WATCH_QUEUE_SET_FILTER,
>                  struct watch_notification_filter *filter);
>=20
> Which says the $1 is an array of int (the type is declared as int[1]).
> However, this is incorrect, since the first argument is of course a
> plain int, a single file descriptor.  Would you mind revising the page?
>=20
> Thanks!
> And have a lovely night!
> Alex
>=20
> --=20
> <https://www.alejandro-colomar.es/>



--=20
<https://www.alejandro-colomar.es/>

--qna4miqzz3wwte34
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmddyKcACgkQnowa+77/
2zKXvg//WfaPReRDNkdVijUD00p2+zvypNrOrutSAR+zh4xyJ9JOd3gS1paF0V7C
YuwoC7R1nHZsk+HY73lbm45izQffmX/071jLlsnBGPTCN1JhssRjyxPLn4FKFj2w
+tgBwM6yKXA5cWU5DD/yJljdOOYGjPAOWG2RjXIAV9zjjOg06g5O6+YgPPPa77a+
FnqJbBIXTqM0uSOTuw6Mryq1Nu45V1MSOGWUFIg33rn3LA/Y/IdjpCCg5jI7475r
EDt0ydlbLV+Izpe2H7ryneAKoLyPw/FXH+StAuj46fxyrSTq2Fraay2uwifFS3bI
F06MSGG5wLRruzdUHp/PEedSQlU10WausJWKq+tom407awJqRSqOBxFnK/EsCmyH
W/JWOR+v4oiLfGfNKbTNX4vKoFJD8WH2i9nlJXu0cKidhMTszpl+2/Y/KrniO2WB
QMlPb3IeK0LtR7EBVoCJh22TfUALTYT01hLGvcMKM8CWSBvtflQ++jl70hUnN0G4
6/1MBONJNufEce2BeS79J0eZlzrOXBoOw6MNJDCKIaDYrqKgWVSSC2qir6ZkNfQz
53XqeIOJJlsFkGNRpwrm88xCXuoQot5akd18/BJKT2XIYt8Jvr2SAOlILBJ9DXWV
uc/nPLF7RnAn/BsaPa7u2WUN0OlpVk9KUlWSpn4vnqyqGGDiUKM=
=+LnB
-----END PGP SIGNATURE-----

--qna4miqzz3wwte34--

