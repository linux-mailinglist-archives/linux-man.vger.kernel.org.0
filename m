Return-Path: <linux-man+bounces-4929-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IBhoBf+ac2nNxQAAu9opvQ
	(envelope-from <linux-man+bounces-4929-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 23 Jan 2026 16:59:59 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A86781C9
	for <lists+linux-man@lfdr.de>; Fri, 23 Jan 2026 16:59:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 94E253006004
	for <lists+linux-man@lfdr.de>; Fri, 23 Jan 2026 15:59:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6021B2F547F;
	Fri, 23 Jan 2026 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q2VnQogL"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A33274B26
	for <linux-man@vger.kernel.org>; Fri, 23 Jan 2026 15:59:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769183993; cv=none; b=OXZXItXG+e0ZT8zRUB/RnxZvdF3O39ZDLl0z9cVCbtZklwinUHGmH9R7LRL/XKj3gU96HwNABmm0E+PAAXlg3WrQKFWFq7cOg1j2lzUDI6WajZBlddsqiBYQD9oAM61vH7Dbt8I+675/cNCGY9LHxsm/kexZLi5o+j6koHURvTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769183993; c=relaxed/simple;
	bh=HaiKukry3e5tJEahS0qlwe08aF0TQexE396WWj30aLM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mZONGAtQ8GaNMKMVPWlDs8LkfC7OmQ/tq7BCUa4p04pdq/KyRm4WpgwtZed+Bw46Gx6dC5u315DCbjTL1GBZOwyWnME6CpZ37tFKqYaRa9SYf5JJQmR5ak0JwVxOxuiOnAsFyP6Cy4RueAnxWUcXSdT2vNIY55Uv/dxtyh0EcYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q2VnQogL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E50B0C4CEF1;
	Fri, 23 Jan 2026 15:59:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769183992;
	bh=HaiKukry3e5tJEahS0qlwe08aF0TQexE396WWj30aLM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=q2VnQogLo3OQOGcU5vMVfa4HRy29kF+9NdYIvAsnZe2waa/1bE5N6VVG356tFtCmq
	 Ow1Bw7et+s9sS0HnZh0oj13n2MHx6kkm54kp1OhgX6LiO9i9OmRYTwRCV26EYGpN2A
	 vyVWdAIVerHMEeQTgFOWN50yDjqunO8KnkPao/Fpn+sPDNO5RUnXRmrAKsw+yequas
	 Y+iRqOydspS129CTP3A0q/WCrhcPI2ZZa3fulHuITUPLxyEApT9c+YFox11Vez5VBK
	 N9+GHAAs+3tg0CiU10VVC/xscb2cFRV5rnbDPpcotOlG5e6cuWbi7zdGgyAjFqpsIp
	 WqNWaGaS+mfsw==
Date: Fri, 23 Jan 2026 16:59:49 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 19/23] man/man2/getresuid.2: HISTORY: Update first
 POSIX appearance of getres[gu]id(2)
Message-ID: <aXOaywMvjKGG4D8X@devuan>
References: <cover.1768995315.git.sethmcmail@pm.me>
 <cover.1769047228.git.sethmcmail@pm.me>
 <0afcc4b4083b450adfaf63958f85e99926d7fa6c.1769047228.git.sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kskkgxljg54eag2s"
Content-Disposition: inline
In-Reply-To: <0afcc4b4083b450adfaf63958f85e99926d7fa6c.1769047228.git.sethmcmail@pm.me>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-4929-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[opengroup.org:url,pm.me:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: 22A86781C9
X-Rspamd-Action: no action


--kskkgxljg54eag2s
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 19/23] man/man2/getresuid.2: HISTORY: Update first
 POSIX appearance of getres[gu]id(2)
Message-ID: <aXOaywMvjKGG4D8X@devuan>
References: <cover.1768995315.git.sethmcmail@pm.me>
 <cover.1769047228.git.sethmcmail@pm.me>
 <0afcc4b4083b450adfaf63958f85e99926d7fa6c.1769047228.git.sethmcmail@pm.me>
MIME-Version: 1.0
In-Reply-To: <0afcc4b4083b450adfaf63958f85e99926d7fa6c.1769047228.git.sethmcmail@pm.me>

Hi Seth,

On Thu, Jan 22, 2026 at 02:25:48AM +0000, Seth McDonald wrote:
> getresgid(2) and getresuid(2) first appeared in POSIX.1-2024 as an XSI
> extension.[1][2]
>=20
> [1] IEEE Std 1003.1-2024, Volume 2, Chapter 3 "System Interfaces", p.
> 1174.
> <https://pubs.opengroup.org/onlinepubs/9799919799/functions/getresgid.htm=
l>
> [2] IEEE Std 1003.1-2024, Volume 2, Chapter 3 "System Interfaces", p.
> 1175.
> <https://pubs.opengroup.org/onlinepubs/9799919799/functions/getresuid.htm=
l>
>=20
> Signed-off-by: Seth McDonald <sethmcmail@pm.me>
> ---
>  man/man2/getresuid.2 | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man2/getresuid.2 b/man/man2/getresuid.2
> index 8286f36fb402..10a21dbcb5a2 100644
> --- a/man/man2/getresuid.2
> +++ b/man/man2/getresuid.2
> @@ -42,7 +42,8 @@ .SH STANDARDS
>  These calls also appear on HP-UX and some of the BSDs.
>  .SH HISTORY
>  Linux 2.1.44,
> -glibc 2.3.2.
> +glibc 2.3.2,
> +POSIX.1-2024 XSI.

I've applied the patch, and amended to also document POSIX.1-2024 XSI in
the STANDARDS section.


Have a lovely day!
Alex

>  .P
>  The original Linux
>  .BR getresuid ()
> --=20
> 2.47.3
>=20



--=20
<https://www.alejandro-colomar.es>

--kskkgxljg54eag2s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlzmvUACgkQ64mZXMKQ
wqmymg/+KR2+ja58DXnlMCK/BA/CmI1oYgMLIgOE/yfI9pLtIZ9qY6P5Kt7gTek9
kpEZofezB4H17tU3h3hz4OMw6WpYIAAdwD8n4B9oqUz5HpYkuvQPyWfF2xu/fSaH
a4Nts2uymndoTVa08lXyVPs5qaix9c67qD/BS091eqzC46WPQTIL8J0Z0a2aCLUi
TZCxchGaSIxgoEAxLo6QOGqWPkN28M6qzewrgLtwXYgVp/Op56ZhFNOPEjlqS8Hx
m3T2MJlSe1m11CgG+y7zetwEHfPM2TBVRfiwRtyE6TgtSG/tLotOSp3/MXZEts9/
MkxpzR4ZZWWg3H94dO4vhXU552NMr9iGofqiLroXswsgLQvnJLdo8rLGVMSVMELh
QVYSjgBQVyx9pWUaiG3r8Wq+fa2ci5EFAeOJz6JnDvUXVSv6sXFA+NYJQfstXDXi
YG8DOZ3XHNv15H+hujtrcL4dR5AcqYKrXiCDh/+8AyNG6Vh8VzIzdDjOvywOK3m7
9YAmz5Xel4SKKA2NcufdBR3sWvtBg7mylFM1P1+NFHpTQaSUmmY2YkQbIlwEw5kA
bW151vNvnJvpAhprOpHwc94jHuTdeJnCWpp1lpwuqw+nvOEtAamydkOgjlKBYj4H
Oyb3P2GOBa3h5Wu4rp+ARiQalN1O+t3Fh3PTdyC+fEibEdi/LbA=
=gejO
-----END PGP SIGNATURE-----

--kskkgxljg54eag2s--

