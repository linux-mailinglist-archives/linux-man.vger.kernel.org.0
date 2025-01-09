Return-Path: <linux-man+bounces-2206-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D91A069FC
	for <lists+linux-man@lfdr.de>; Thu,  9 Jan 2025 01:41:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 723E13A6086
	for <lists+linux-man@lfdr.de>; Thu,  9 Jan 2025 00:41:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CAFD4C76;
	Thu,  9 Jan 2025 00:41:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cUu53ssI"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189CE290F
	for <linux-man@vger.kernel.org>; Thu,  9 Jan 2025 00:41:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736383305; cv=none; b=X1ddxm+RtDjTGmh9yAm55yiEvfQfcTQkynrQI6zoclcCOYj2AjUX+Kl+X4Fd25gW5R4hHqJTn+huSYkTjHnaOYpLIEBGj0bBzpRjNZbNsWO+Xh5Aab5aN9DxxmGuAhXVSBIIhz6Ucck3rXZFcxR9dtfdML5v6HBVZwCw3h+BuHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736383305; c=relaxed/simple;
	bh=OVB2+luJoN3DGClCsZ/GQQ/bAjhYMKKxqh5oUEWQI3Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XqcusNUNmVxhhazQo9ANk85TaeBUpUnqsFbLi7lLcenljtWIweaZ+ZKqjQdp0nRIL911xtQyi9fHh3+1lHu8b+RbmAw8eBZoSUqHrlOynWrc+8NHM3CbAe4ksUrMTwS9rgXk5JYTVGYnF7W++l+877zeJbGWpcWx0zKJO5AYTRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cUu53ssI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91823C4CED3;
	Thu,  9 Jan 2025 00:41:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736383304;
	bh=OVB2+luJoN3DGClCsZ/GQQ/bAjhYMKKxqh5oUEWQI3Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cUu53ssIPjF9CnKvZvDi/Lq1l3mdDI53Mou4z2JoJNAE8xhOocwlrMe9UKtMEgwIo
	 cgAHJXzWSYfMWmS9mJNTx4+tf0JRvM+QsXKVbSgc/FvhURTYRkf0jjl1HQwEZrLoas
	 Em7sowE2pu9uaVU11ebRqJa2+OhRQnvcb5dvfR1rzFClzP+YGtpwjGtfutemjqJxbE
	 4jQ3L74lWKQE6x+FSG/jj1k9LIdc8rK8qRJwoKII5y4j6uJYrdowNEBwYKgujr7OUX
	 H9Wo75+w9f5PfAuJaqZ/9xYQXvHCKvdupuMSGBauNmtcTCG8Iw9Tr9TYQuAbjXxV4N
	 RI+dbhFpMohBQ==
Date: Thu, 9 Jan 2025 01:41:46 +0100
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>, 
	"Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>, Dan Albert <danalbert@google.com>
Subject: Re: [PATCH] man/man2/stat.2: Add missing 6.11 AT_EMPTY_PATH quirk.
Message-ID: <nwauygp7cdhazyz76wuel6vrkukvd447ijquxxswipfpucrhqh@oheowzbs2sqb>
References: <CAJgzZoqAOpJajmAnr-i9h3sPC8F_Uu0A+3eg4nkP+xTAV5fPGg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hjuh4cf2jd6dahpc"
Content-Disposition: inline
In-Reply-To: <CAJgzZoqAOpJajmAnr-i9h3sPC8F_Uu0A+3eg4nkP+xTAV5fPGg@mail.gmail.com>


--hjuh4cf2jd6dahpc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>, 
	"Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>, Dan Albert <danalbert@google.com>
Subject: Re: [PATCH] man/man2/stat.2: Add missing 6.11 AT_EMPTY_PATH quirk.
References: <CAJgzZoqAOpJajmAnr-i9h3sPC8F_Uu0A+3eg4nkP+xTAV5fPGg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJgzZoqAOpJajmAnr-i9h3sPC8F_Uu0A+3eg4nkP+xTAV5fPGg@mail.gmail.com>

Hi Elliott,

> Subject: Re: [PATCH] man/man2/stat.2: Add missing 6.11 AT_EMPTY_PATH quir=
k.

Thanks for using the full path!  :)

Regarding "Add missing", I decided to transform that a little bit.
Since most stuff we document was previously undocumented/missing, it
doesn't help much (unless it was undocumented for decades).  I changed
it for "Linux 6.11 allows using NULL with AT_EMPTY_PATH".

On Wed, Jan 08, 2025 at 06:53:17PM -0500, enh wrote:
> Signed-off-by: Elliott Hughes <enh@google.com>

I prefer if you write the CCd people in the commit message too.
I'll paste it anyway (when I remember).  :)

> diff --git a/man/man2/stat.2 b/man/man2/stat.2
> index 099c56b15..cfbfb654b 100644
> --- a/man/man2/stat.2
> +++ b/man/man2/stat.2
> @@ -175,7 +175,9 @@ can either be 0, or include one or more of the
> following flags ORed:

The patch is corrupted.  The line above seems to have been broken by the
mailer.  :|

Luckily, it was easy enough to apply with the following pipeline:

	sed '/175/N;s/\n/ /' | git am -s


BTW, you should have a look at this:
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUT=
ING.d/git#n11>
That will produce more useful hunk contexts.

	$ sed -n 11,19p CONTRIBUTING.d/git=20
	   git-diff(1), gitattributes(5)
	       To produce useful hunk contexts in manual pages, we need to hack
	       git(1)'s idea of a function name, and also to tell git what is a
	       manual page.

		   $ git config --global diff.man.xfuncname '^\.S[SHsh] .*$';
		   $ mkdir -p ~/.config/git/;
		   $ echo '*.[0-9]* diff=3Dman' >>~/.config/git/attributes;


Thanks for the patch!  I've applied it.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D996ca597328f0c93eb6d5eea3e86b6ac277db5f0>


Have a lovely night!
Alex

>  .\" commit 65cfc6722361570bfe255698d9cd4dccaf47570d
>  If
>  .I pathname
> -is an empty string, operate on the file referred to by
> +is an empty string
> +(or NULL, since Linux 6.11)
> +operate on the file referred to by
>  .I dirfd
>  (which may have been obtained using the
>  .BR open (2)
> --=20
> 2.47.1.613.gc27f4b7a9f-goog

--=20
<https://www.alejandro-colomar.es/>

--hjuh4cf2jd6dahpc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmd/G0oACgkQnowa+77/
2zICshAAkeU/aGUSY3B/lkQA8GF8RjLjWCeJ9m16l+S+gRJ47yc9gvtAORYsY7uo
ePXTJzdAITGypikk3KZW8BHLTic2QwTVlHKsLLBtgJIMlZo63Ffr5+If1/c0T4Qv
7lT/vq/RKjVvnKUg2IBRRvQbiQ8ceFo6Ln0gkP13IsabVLfeL4ygYM31ou2UisqD
YhdL9+JbvCpOd/nilTsv68bDE9WgtsRRG8ohAbAvHZg8//ylJFqnDhk8NSOhboD4
ButV6qKOvuAZB32JdR6UC/XdZ6ni+Cy7N1l/FmCKdzcmdar1jWm/Ck2nEQskXmv5
s6DTYCVPUgHPMzezpB/cuAbedgU84FLBkpT4qJNKM0RPQQdS+q2/R1xaHGj6JLe3
w5wZyc2m9MBrtPK0SCjhNBVXNOwClLDsrMdAjq+C3C3/tZbieobvQZrxTwbpXAZs
mWSS3wVHwcz5gOFOahNM1ifQjJ3SJmLfCDxe932p1whTq0qO03rK+ZXkLZiclxOa
MrsHYgk8RpdC3Ciak/3I7+yHT2cX4lxcDVGafqHiBGF4SYif+PIc0gJsOULcqArV
iLLG4in8lmBn1lachuMhc31WNNT4LnG7h//DXVken1JymkYWsmv0eUnGlqA8NcmU
Ca/jlNRjPcz0K6/zc83vkdFTwAsfqDjJkwZVE27hu98TeJkwW0M=
=T6OO
-----END PGP SIGNATURE-----

--hjuh4cf2jd6dahpc--

