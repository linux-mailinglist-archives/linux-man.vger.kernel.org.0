Return-Path: <linux-man+bounces-5270-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EOimGgz3uWkMQAIAu9opvQ
	(envelope-from <linux-man+bounces-5270-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 18 Mar 2026 01:51:24 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B85732B4B65
	for <lists+linux-man@lfdr.de>; Wed, 18 Mar 2026 01:51:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 96E7830659E2
	for <lists+linux-man@lfdr.de>; Wed, 18 Mar 2026 00:51:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DD6920B810;
	Wed, 18 Mar 2026 00:51:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hf2PfSzA"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C50C715E8B
	for <linux-man@vger.kernel.org>; Wed, 18 Mar 2026 00:51:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773795063; cv=none; b=WNmgHW6W+o0vDRSWanTxCxFhYFBBLSGXPrgHL3XcQMGYL20MRNProbVD3A8nDVr21yOAbevsTPg0k6dVb/ifVNIkkn7j2oHhC3h/2mnnwyqYfpsesEJPG4qKS1Q9iJW+m0r2+cpLxXRybE81W6iDq1S4ksd6hIT3zcZwQISzvWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773795063; c=relaxed/simple;
	bh=LDOf8mncdUPXHDdyu7hw48qa7ZMKS4r+yA4EGjmxFl0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kiNvczP+x264P0cs02wZRH2iS703U7co9jAnzmyDuAL67ww+a5juOrtLXMmlBma2ylpTATmLK13PsUA6Kz97ytyeR9nTGLNdeDr8dU0mbSB52zvgwz+01RvHioXeSd/akM3wItTPgFrEiqPysXY9O90UrySYXxz7Y3vlrihyRSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hf2PfSzA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 968CDC4CEF7;
	Wed, 18 Mar 2026 00:51:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773795063;
	bh=LDOf8mncdUPXHDdyu7hw48qa7ZMKS4r+yA4EGjmxFl0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Hf2PfSzASX4cvTf/8WWbg5sgBe1nRBxZWb2fCjcHVtQ+u+WpjcXf6nQD5UpBiYMY5
	 YmqDzBwnjwDeY/R8ZnOG6Upz6XWe9UuLkyC3iwr5x4svS8nw8+4MgyzB6xwMV86bWI
	 6QkNwuBWbe605ZgKvjLCWB0wLZvv4N6paMpwuTCdolxnGKS28k2yzFDJb1pURDMWQE
	 xEXH17CS7SgukCxHfkym+t2EJRDZ8YfRRrMwRQ+hvtafghgBeeiZeiShiYX1HK3gpE
	 XmIu3x4sewXKfRwYjw5v1MhbsY7uqOn+WKybqIHE0oyqhaWdKDuUsmjgpmDAfYMmKc
	 n5AGAUDrzzVzg==
Date: Wed, 18 Mar 2026 01:51:00 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Vivian Wang <dramforever@live.com>
Cc: linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH] man/man5/proc_pid.5: Clarify which user namespace
 affects permissions
Message-ID: <abn24oU0gfiSzcq-@devuan>
References: <OSCPR01MB134682A1A80B8C9FB71CBA64DC640A@OSCPR01MB13468.jpnprd01.prod.outlook.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="npybzbkgrvqliyc7"
Content-Disposition: inline
In-Reply-To: <OSCPR01MB134682A1A80B8C9FB71CBA64DC640A@OSCPR01MB13468.jpnprd01.prod.outlook.com>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5270-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[live.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: B85732B4B65
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--npybzbkgrvqliyc7
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Vivian Wang <dramforever@live.com>
Cc: linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH] man/man5/proc_pid.5: Clarify which user namespace
 affects permissions
Message-ID: <abn24oU0gfiSzcq-@devuan>
References: <OSCPR01MB134682A1A80B8C9FB71CBA64DC640A@OSCPR01MB13468.jpnprd01.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <OSCPR01MB134682A1A80B8C9FB71CBA64DC640A@OSCPR01MB13468.jpnprd01.prod.outlook.com>

Hi Vivian,

On 2026-03-16T22:07:52+0800, Vivian Wang wrote:
> A more careful reading of fs/proc/base.c (since v4.11, as of v7.0-rc1)
> reveals that it is not task->cred->user_ns that is checked, but
> task->mm->user_ns, which is set during execve(2) (and copied over in
> fork(2) and so on) [1], and is the correct user namespace to check for
> ptrace-related purposes. Clarify the relevant text.
>=20
> [1]: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/c=
ommit/?id=3Dbfedb589252c01fa505ac9f6f2a3d5d68d707ef4
>=20
> Fixes: ae636827 ("proc.5: Fix description of /proc/PID/* ownership to acc=
ount for user namespaces")
> Signed-off-by: Vivian Wang <dramforever@live.com>

Thanks!  I've applied the patch.


Have a lovely night!
Alex

> ---
>  man/man5/proc_pid.5 | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man5/proc_pid.5 b/man/man5/proc_pid.5
> index eac97fa1d..2fe35bd09 100644
> --- a/man/man5/proc_pid.5
> +++ b/man/man5/proc_pid.5
> @@ -30,7 +30,9 @@ Before Linux 4.11,
>  meant the "global" root user ID and group ID
>  (i.e., UID 0 and GID 0 in the initial user namespace).
>  Since Linux 4.11,
> -if the process is in a noninitial user namespace that has a
> +if when the last time the process called
> +.BR execve (2),
> +it was in a noninitial user namespace that has a
>  valid mapping for user (group) ID 0 inside the namespace, then
>  the user (group) ownership of the files under
>  .IR /proc/ pid
> --=20
> 2.53.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--npybzbkgrvqliyc7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmm59vQACgkQ64mZXMKQ
wqkRXA/+LVnRKQESJh32VWU+WpYQQu568udVaN9rRyrbUdtCaOwrcvqocMdQmtrc
fL9JBxWmPpRmTQuTJv9J5P9/c9/NGdYRAisl8wmnGz91Yg5GjtiCs0oMoQsYE0T/
cor8USRiqidatrSOPVx9xU6XqZtRtPoD+KHEJLkRvzT3lEPKZ+VqeuUQjnMt/0mG
Li/WuzWtoqztv9CQCYJ2Y3X8TQfn4BuU0XTTlZ/htvqX2gRoXaCky2k7kf3WGs68
AA67JBAVVlzS84QSpH0TxKlqXcnXXYWkkgxpUlvLEWEsL0mnwnPYha6tf9G5cfIN
Lz9JSmhsaiY9d31r12bbaqzsyHN3OhmxOWqMeM8ba14TsCIvQK31zIfcppDVhp0c
lhYBU/OiL0ljgQQfsb/qKWssq1ddL6eZUHxu1nhPmaSQIAkP1mx2uA09OGGWTUCG
B1iEif/+20QWzBN3hQWvSijR88/7QV7MggAbG/p+oWsT1Sz21UeM2ynUqwPp7KqI
8Izjn+H9k8AaVYET6WS+oZyEvX2+Ni3jFgVfOwatWVXFzgdWLUw0HJRulEZ57dNw
HbbmFRo1HjT59x5G5EnvSFQZ11SMq9YhFJZs6eUc5Tht3YeSSmcMA8RWqoHCA81o
vPrlBAS2KhMQ9Pheu/XWwRqxAd/wat93wTxNcorToGNdDwn/Tio=
=/kOj
-----END PGP SIGNATURE-----

--npybzbkgrvqliyc7--

