Return-Path: <linux-man+bounces-4415-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CF50CCBE1AC
	for <lists+linux-man@lfdr.de>; Mon, 15 Dec 2025 14:40:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D8C0B300A34E
	for <lists+linux-man@lfdr.de>; Mon, 15 Dec 2025 13:40:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4E8C2F1FFC;
	Mon, 15 Dec 2025 13:31:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="giiuH837"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 834332F1FD9
	for <linux-man@vger.kernel.org>; Mon, 15 Dec 2025 13:31:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765805495; cv=none; b=NdF9ygZ/w+TZZnaJBb7JuxjfKzQ7Po7rXhTkD03XbPl/CbWgxvsYd2fvV1VBYaZi9wkIulXzBXPCCKLzVGaoe5asCfQy8kOqXvPbZw7CkbI+fGfoCFrImYBptSMIihGAr0zIqzAS6FHEaPvnK+ZZBDeIkFYRi3zLN1iq8IT82Oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765805495; c=relaxed/simple;
	bh=2KFWVdjLZmfVB3TxHA41k86oALNr2wVs40xRjS7LAMk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ILv7Rn1iCifUdUe2X3sSaPsrHqJGYYuHC4scjjLs8pPfVT+D6I3CKMJ0+I/sxJZRzvylF7TjaJG9Lj7ig4F3c5he8v77zAn8n9Gf02cFdvkWlZdvYenIgZQeIsaRddtAjceLSoBGpXpo8BrqWV32RAPwbBNPwJ1VvHji4cOqDrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=giiuH837; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 62110C4CEF5;
	Mon, 15 Dec 2025 13:31:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765805495;
	bh=2KFWVdjLZmfVB3TxHA41k86oALNr2wVs40xRjS7LAMk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=giiuH837jAOj8R7ZIf79rBmApZX5aoVssYHftxoVmrKdiZygwiKVmqV4kM0Nmsbhf
	 7lrrELD0mf3s+EF9zA9psHDBlucANCwQ+dFDF+tyhncglOshcEI0DaAsw+l6ZTlloZ
	 QblBfQkxD6TS5KSjTBnC6TzAMZcNdmvqUw22ziciPUvmX9QDqXGCGwqOmPl18kTb6U
	 G1Q+u/ITMziQXkMmQYlisQDjLJDX/NHyB9WuFFCd/S0tl4pA2/aTVp1OgQ42MJaRif
	 y3Hn28lXQ44wx2bNcpkaFFvp6OnqzK8PX7CVU7Vj59JMrf9W92EBL6OOUiHfNAHTmM
	 4t9kmLtuQJ8Cw==
Date: Mon, 15 Dec 2025 14:31:31 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Teika Kazura <teika@gmx.com>
Cc: linux-man@vger.kernel.org
Subject: Re: The new AI policy is flawed, so ineffective
Message-ID: <tnriinuoad7hpae3eexnvavkgeko6ayc5g2fbvtpdtn7eczqhl@5lumc56w3qma>
References: <20251215.210903.1222062990932461160.teika@gmx.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zisbmu7klmagmypp"
Content-Disposition: inline
In-Reply-To: <20251215.210903.1222062990932461160.teika@gmx.com>


--zisbmu7klmagmypp
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Teika Kazura <teika@gmx.com>
Cc: linux-man@vger.kernel.org
Subject: Re: The new AI policy is flawed, so ineffective
Message-ID: <tnriinuoad7hpae3eexnvavkgeko6ayc5g2fbvtpdtn7eczqhl@5lumc56w3qma>
References: <20251215.210903.1222062990932461160.teika@gmx.com>
MIME-Version: 1.0
In-Reply-To: <20251215.210903.1222062990932461160.teika@gmx.com>

Hi Teika,

On Mon, Dec 15, 2025 at 09:09:03PM +0900, Teika Kazura wrote:
> Hi, list.
>=20
> I don't think the new policy about the AI use will stand long.
> The work that led to the original policy of Gentoo was indeed
> respectable, so adopting it is understandable.  I do agree with
> various concerns stated in the policy.
>=20
> That said, there are various problems.  One is this: As of today the
> kernel itself does not forbid the use of AIs, nor even require to
> disclose it.  There is no reason to believe kernel changes have never
> been affected by AIs.  Thus any chanegs of man 2 pages that describe
> recent kernel changes are forbidden, and man2 (perhaps also secs 4
> and 8) has to be frozen indefinitely=E2=80=94as long as kernel doesn't ch=
ange
> the policy.  Rather the man-pages project has to pre-emptively revert
> the entire man2 to the 2022-11-28 HEAD.  I'm not confusing the
> documentation with the kernel code.  But that does not mean at all
> docs are free from (possible) AI works in the kernel.  "A clear cut
> border between an implementation and its documentation" is an
> illusion.
>=20
> Next I mention one specific case: I recently proposed a patch of
> ioctl_vt.2:
> <https://lore.kernel.org/linux-man/20251110.165618.2111633615163528521.te=
ika@gmx.com/T/#u>.
> Much was lacking or wrong in the current manual page.  I used gpt-5 to
> guess what's happening inside kernel, and also had it generate codes
> to verify my claims.  Of course my work was essential too; the
> original codes were buggy (maybe it's because the original manual was
> buggy and gpt-5 was failthful to it.) and I needed my brain work to
> re-interpret them to reach facts.
>=20
> I disclosed that I used an AI (before the new policy was established)
> and my patch was rejected.=20
>=20
> The problem is this: Now my knowledge is affected by an AI, so I will
> never be able to submit a patch about this page.

I wouldn't say never.  You only need to wait until you forget about what
you learned.  The sooner you start, the sooner you will be able to
forget it.

I suggest that you remove your manual page and the test program.  Then,
come back in a couple of months, and read fresh the manual page, and
think about what you don't like from it, and write improvements from
scratch, in minimal patches.

> But I believe what I clarified is useful, so I'll post it and
> advertise somewhere around Linux communities.  Then the readers will
> obtain the correct understanding of ioctl_vt.2, getting indirectly
> affected by an AI.

It's up to you wether you want a short-term small gain, in exchange for
having a bad manual page forever.  I think it would be better if you
don't spread the virus.

> Now you see it.  How can you judge if future contributions to
> ioctl_vt.2 are free from AIs?  It is viral, without leaving its trace.

It's not easy, but I'll try my best.

> Yet another (general) problem is that practically contributors can
> falsely claim that they have not used AIs.

Contributors to any project can already send malicious patches.  This is
not a new problem.  The day it is discovered that one acted in bad
faith, that contributor will lose its reputation.

> Thus the current policy is more like a slogan, and in fact pretending
> or making believe that the project will be AI-free.
>=20
> One more practical aspect is this: When I submitted my patch, the AI
> rule was not there, but I was honest and disclaimed the AI
> contribution part.

Thanks for that.

> I could have omitted it, and in that case no one could have noticed.

I would have still rejected the patch.  In fact, initially it looked
pretty bad, even before learning it had been done with help of AI.

> But I did, and they turned me away.  This suggests that the current AI
> policy discourages open and honest people, while it doesn't those who
> do not hesitate to lie.  It doesn't contribute to keep the project
> health and sound.

If I ever discover anyone dishonest, I'll make sure those don't
contribute ever again.

> I'm not saying the current rule is completely meaningless; open source
> can, and have done much, rely on voluntary works, so it can *reduce*
> AI uses *to some extent*.  But not beyond that.  ("to some extent" but
> how much?)=20

I stand by the current policy.

> One obvious, pragmatic solution is to ask contributors to disclose
> their AI use.  (Like the recent proposal by Sasha Levin about kernel
> development, which was rejected by Linus Torvalds.)  And/or the
> project can ask/force contributors to read about the threats posed by
> AIs.  As I said, they have "some" effect.

Thanks, but no.  We will not accept AI-derived contributions.

>=20
> Regards.
> Teika

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>

--zisbmu7klmagmypp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlADaoACgkQ64mZXMKQ
wqlOmg/8CX30pffwVwX2Tpo4pe+tO6YnmsD90+376XFbA9Yshux6JcytXEVAbfUH
DhqEGl6r+xUwZjUnCN1o3MaPpyPX1P9U03EAU7p5lzSAOkbpNKv6s5bABeT+izH0
1eSTTICof9rqB8evrJcu3oMbWuqK8tEGfNIUNTGwuFeN+uIs8XRJMe07rORkOs0u
ys+SbbJIkv/xDU0cJBVImGnR9LNmKqMG2lly2G8ISwSzf/rK50fPRHB7wXBspa2J
Qw6wfJq8kllp6ky/RsIrGRrj5B+KP6Q4iFy2h/DQRGH5N9XO01Y5f/RDV7qDJIVS
HTx2TkBJcfMGblYoS2Hw9Iby9v7BMUWJ3vnAVnFFrBXXGyCbVqGyxxJl4yJg5+be
IW9Ti+07DgwBpBxqNAguI2B0QoWcdFvYI4o20mIwaYb40MYxK2wmDVVblF5iZjyh
XYgI+zohTcy87EmYE5HUYAuRN7hU/6AyA2tG7gyNJdydtW+2H1Pr5Gnq5zrJmyZX
GORHoxdRXYvBvywX7F+odcn50Uy9XTloVl2vdF0ZYMkfHAjBM/1BdFXCYRHpEWS9
RN7GZBV9DrqMvWpZ7+pm58Em4R5mzMJMzsRH+gwdaIchl3Bk2kViLYRIEk0YqAxo
N4IA/rnUA16/6cp7MWkkpmfS5ixXJ8fQpG6x+9Kfky/8j2CYXOk=
=HyJU
-----END PGP SIGNATURE-----

--zisbmu7klmagmypp--

