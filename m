Return-Path: <linux-man+bounces-2493-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A9BA3D9ED
	for <lists+linux-man@lfdr.de>; Thu, 20 Feb 2025 13:27:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5612E19C2977
	for <lists+linux-man@lfdr.de>; Thu, 20 Feb 2025 12:25:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77DDD1F55ED;
	Thu, 20 Feb 2025 12:23:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p7Qy7fR4"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373B01F666B
	for <linux-man@vger.kernel.org>; Thu, 20 Feb 2025 12:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740054204; cv=none; b=Qnnm6VBgs92SVq02ON2Nax47e6aCHCt2uRUxIL2HJA0C083pqToZpOs/qomzjTs3O9hJZm/YtcpByS1XTZpRX0TOpN4F12jxje+ucV2133jZ+lE0+ScBeq32T113pj3VAtg8z5jpVIK1h9AZOxf7KBxfbgWOIFkG2B5XUvir0Js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740054204; c=relaxed/simple;
	bh=YrIniXfY0H0VVQHMpK1mstgVZAwWMAPoy0iCaQJCMss=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=um3SInWSsDlCiQw/Gp6Qp1sHF37WJ4fjLuivzffH0hFX9zMouHuyCIzlqXGVP9CvUtnF1QRExrsxxFR+Ntt9xKIWxtFe/WL6nkfMRZmi3v7/Nc2AR+YTH6t5jCthOTVf/NtyG5uJnvIxlinZ+FcTYUNjOnyw0rdEvVYJU3X/QD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p7Qy7fR4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0411C4CEDD;
	Thu, 20 Feb 2025 12:23:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740054203;
	bh=YrIniXfY0H0VVQHMpK1mstgVZAwWMAPoy0iCaQJCMss=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=p7Qy7fR4+WUhW+zUy6rwsDksabXMkx1fGV0SkadHf8FlHxv33bWH+3zgZs+mIhIfk
	 bz7A89F7krNfW+w/hINdFeJ6JuZqHTAsWATYZtNREeuhdS7q6SUYRzoTLDdb1AT1EJ
	 vrOf5D2wT5C+n105fveVZj8+JbFDzyZTGZTAlzALQ4bYhg94cg3rZolLwRo9OiiXyu
	 bed8zBX8DAicLIUc17RNY5Ayj2zUlQF1+bpW9fTh9aRO9SINJwoYBPcI2XJ2kq8fLB
	 sde+GBSuyRfHQ68tCEKp9qytjCI9fAx+0AOwvpQkaLpofWUQLhOhX2Rx2+Vs6eVfDv
	 JKV7ZMh8Hh/XA==
Date: Thu, 20 Feb 2025 13:23:14 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Askar Safin <safinaskar@zohomail.com>
Cc: Carlos O'Donell <carlos@redhat.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v4 1/2] man/man3/getcwd.3: say more clear that syscall
 can return "(unreachable)", but modern glibc wrapper cannot
Message-ID: <64htgz4h5ordhvqzyiokdw5qtizhw62oqkkdqwq6mwoffvhy7k@jfzzfkxxcv37>
References: <20250217165143.1265542-1-safinaskar@zohomail.com>
 <20250220091926.3985504-1-safinaskar@zohomail.com>
 <20250220091926.3985504-2-safinaskar@zohomail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kduxhoeqgl2zspri"
Content-Disposition: inline
In-Reply-To: <20250220091926.3985504-2-safinaskar@zohomail.com>


--kduxhoeqgl2zspri
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Askar Safin <safinaskar@zohomail.com>
Cc: Carlos O'Donell <carlos@redhat.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v4 1/2] man/man3/getcwd.3: say more clear that syscall
 can return "(unreachable)", but modern glibc wrapper cannot
References: <20250217165143.1265542-1-safinaskar@zohomail.com>
 <20250220091926.3985504-1-safinaskar@zohomail.com>
 <20250220091926.3985504-2-safinaskar@zohomail.com>
MIME-Version: 1.0
In-Reply-To: <20250220091926.3985504-2-safinaskar@zohomail.com>

Hi Askar,

On Thu, Feb 20, 2025 at 09:19:25AM +0000, Askar Safin wrote:
> I verified using expirement that modern glibc wrapper getcwd actually nev=
er returns "(unreachable)".
> Also I have read modern glibc sources for all 3 functions documented here.
> All they don't return "(unreachable)".

We have a (soft) 72-col limit on the commit message.  I should document
this, as I think it's not documented anywhere.  I also took the time to
fix some minor wording issues.

(That limit doesn't apply to the subject, which can be of arbitrary
 lenght, as long as it's reasonable.)

> Now let me describe my expirement:
>=20
> 	d-user@comp:/tmp$ cat getcwd.c
> 	#include <unistd.h>
> 	#include <stdio.h>
> 	#include <sys/syscall.h>
>=20
> 	int
> 	main(void)
> 	{
> 		char  buf[1000];
>=20
> 		if (syscall(SYS_getcwd, buf, sizeof(buf)) =3D=3D -1)
> 			perror("SYS_getcwd");
> 		else
> 			printf("SYS_getcwd: %s\n", buf);
>=20
> 		if (getcwd(buf, sizeof(buf)) =3D=3D NULL)
> 			perror("getcwd");
> 		else
> 			printf("getcwd: %s\n", buf);
>=20
> 		return 0;
> 	}
> 	d-user@comp:/tmp$ gcc -Wall -Wextra -o getcwd getcwd.c
> 	d-user@comp:/tmp$ sudo unshare --mount bash
> 	d-root@comp:/tmp# mkdir /tmp/dir
> 	d-root@comp:/tmp# mount -t tmpfs tmpfs /tmp/dir
> 	d-root@comp:/tmp# cd /tmp/dir
> 	d-root@comp:/tmp/dir# umount -l .
> 	d-root@comp:/tmp/dir# /tmp/getcwd
> 	SYS_getcwd: (unreachable)/
> 	getcwd: No such file or directory
> 	d-root@comp:/tmp/dir# exit
> 	exit
>=20
> Reviewed-by: Carlos O'Donell <carlos@redhat.com>
> Link: <https://sourceware.org/bugzilla/show_bug.cgi?id=3D18203>
> Link: <https://sourceware.org/git/gitweb.cgi?p=3Dglibc.git;h=3D52a713fdd0=
a30e1bd79818e2e3c4ab44ddca1a94>

I moved the R-B tag to after the links, since those links are also
reviewed.

> Signed-off-by: Askar Safin <safinaskar@zohomail.com>
> ---
>  man/man3/getcwd.3 | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man3/getcwd.3 b/man/man3/getcwd.3
> index 685585a60..919ffb08f 100644
> --- a/man/man3/getcwd.3
> +++ b/man/man3/getcwd.3
> @@ -246,7 +246,10 @@ without changing its current directory into the new =
root).
>  Such behavior can also be caused by an unprivileged user by changing
>  the current directory into another mount namespace.
>  When dealing with pathname from untrusted sources, callers of the
> -functions described in this page
> +functions described in this page (until glibc 2.27)

I changed this from 'until' to 'before'.  The word until doesn't make it
clear if the version 2.27 has the old or the new behavior.  The word
before makes it clear that the old behavior was not present in 2.27.

As I mentioned as a reply to the cover letter, I've applied this patch,
and amended it editorially with those minor edits.  Thanks!


Cheers,
Alex

> +or the raw
> +.BR getcwd ()
> +system call
>  should consider checking whether the returned pathname starts
>  with '/' or '(' to avoid misinterpreting an unreachable path
>  as a relative pathname.
> --=20
> 2.39.5
>=20

--=20
<https://www.alejandro-colomar.es/>

--kduxhoeqgl2zspri
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAme3HrIACgkQ64mZXMKQ
wqmqUxAAhlK9rJkJBp2XMlMhkBP/VXC3KQAl8Fg6n0Ba8ofmZXBNLvNAKN8RmbKf
MhmKAXoO4Gfv5C8td2KUPwuWeX44XAC+aX3F05bhmeSnBDYWz7CP7ZYfWjMAhncu
VnCVPDxFYBubJ0RY/USfyf2Coj0PcwMr0UdgD7GotIFEmqTHe37UJiIXAIymPe3F
rywS6wbWUl59vJsZcDxTd9ryfVrmUlrWniqrZe5qG8Y4IqPvm3zzUy8qf7a3/ui+
3FoxHbi/LqZt3BtgBSlTZWPp4XmO1D6JhtxT3Bs5N50aJqSjWvdTTjHpnTEcWGtW
8DWsW6UgThrGaoRUi55esM9Sfpa6bQ91sXNAISrse8czR+wsBhLyF47DXLPWXnxo
+w68JUFTiT6Toa7xRE7lUil5MEGkmyWIP6GJxv71g6h728jKFxH+6DaoJidJD3yV
Pdk3ydIIOCSJ4VTn8oVvkUlzMj8rDRvN/ubQhiSP2tE8UCF6lu4d2kIDDYQE2Er3
trQ6vMrCGOilKk8nLNyPtZUsVMGsOQxB1Dp2EGoN5VaRaM0DfXvBkgkw8+BkLTEI
jz8xvHOpZ4W347P1S1nROeIaxHjVXs5tsWCXXN/bYRiapnlmghNxbYq5/MybxnFQ
B7vRpdSOKoh56RXkdaTQsSNsuO9y9uzau56O2ZdjKKsRE3XQBcE=
=9mF3
-----END PGP SIGNATURE-----

--kduxhoeqgl2zspri--

