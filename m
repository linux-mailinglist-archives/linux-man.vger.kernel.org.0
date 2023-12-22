Return-Path: <linux-man+bounces-283-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D61F81C886
	for <lists+linux-man@lfdr.de>; Fri, 22 Dec 2023 11:47:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3C0A31F215C6
	for <lists+linux-man@lfdr.de>; Fri, 22 Dec 2023 10:47:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBEEB12E6A;
	Fri, 22 Dec 2023 10:47:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fAasD1u+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8ADD17735
	for <linux-man@vger.kernel.org>; Fri, 22 Dec 2023 10:47:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98ED3C433C9;
	Fri, 22 Dec 2023 10:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703242055;
	bh=yGmKcvsoaP6g+QzjcJdCesgGOjQvBP4AQ1uIxvxoDy4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fAasD1u+6J6pxFyMvMsKk7iHyvE0y2eFNmBsR8/CypLMQ8+rS8G6I9sVDMUDV4jdo
	 Dwp5dIJ//7lKxfsT1MLdo3lxiGUAE42cCD7j6ssaGIDNSwgcAnYVoSkKAsZPzmmSzl
	 TPYXaSegS0EhpQ8QD2+kVsWT/baG5ws28Cj+j0nEEChBGXCN42cAy+pGka9ClgWVcT
	 FkVDkHf+SjDPBdju0qM+Nt4lqs3I5tgNUrmGBrrb78nRS15TZ4C6LIgdJWGu3DK722
	 6640ad6G/QcQWQlaIbOkMSwhp9a1UqPsH2LVbMoR67kTAP8FPGOdZsdnK87xPYadfu
	 9/DhmRYjceDiQ==
Date: Fri, 22 Dec 2023 11:47:25 +0100
From: Alejandro Colomar <alx@kernel.org>
To: rajesh <r.pandian@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Contributing to documentation
Message-ID: <ZYVpRMcZk2MSg9Yc@debian>
References: <CAKkEDkWv_wksbcAkUEaFdAQhkhZH1xr+pLidXAvKvV-ka7gE1Q@mail.gmail.com>
 <CAKkEDkU28SRY-dZOVdnGORV2f8ovOak1b=Pr8+bEFDb-B2vx+A@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vqz0P4MYy05uwrgf"
Content-Disposition: inline
In-Reply-To: <CAKkEDkU28SRY-dZOVdnGORV2f8ovOak1b=Pr8+bEFDb-B2vx+A@mail.gmail.com>


--vqz0P4MYy05uwrgf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 22 Dec 2023 11:47:25 +0100
From: Alejandro Colomar <alx@kernel.org>
To: rajesh <r.pandian@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Contributing to documentation

[CC +=3D linux-man@]

Hi rajesh,

On Fri, Dec 22, 2023 at 02:27:21PM +0530, rajesh wrote:
> Hi Alejandor,
>=20
> Thanks for the help so far. So I think I can contribute to two issues now.

Thanks a lot for helping with the bugzilla bugs!

> However going through the kernel patch videos, I am not sure how to
> apply the patches to man pages.

First of all, you should clone the git repository, and cd(1) into it:

	$ git clone https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git
	$ cd man-pages/

I assume you know how to use git, do you?  After cloning that repo,
you'll be able to read the README and CONTRIBUTING files.

Assuming you want to modify mount_namespaces(7), you should edit the
file <./man7/mount_namespaces.7>.

Assuming you know how to use the basics of git(1) to do a commit, then
you can produce a patch with

	$ git format-patch -1 HEAD -o ./patches/ \
	                   --to alx@kernel.org \
	                   --cc linux-man@vger.kernel.org

This will produce a file inside the ./patches/ directory, which you need
to send via email.  You can send it with any mail client to start, and
I can help you refine that.  Most mail clients mess the patch (they
usually mess the whitespace), so it can't be applied with git(1), so you
can configure git-send-email(1) to send it, which will respect the
patch.  mutt(1) or neomutt(1) will by default also respect it, but
git-send-email(1) is probably easier to configure for a start.  Check
this:
<https://git-scm.com/docs/git-send-email#_use_gmail_as_the_smtp_server>


> Attachment is a no no.

What do you mean?  I can accept attachments if you want to send a patch
as an attachment.

> I went through many links but not clear on what's process for patching
> man pages.

Here's the contributing guide we have:
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUT=
ING>

Although you may want to ask for clarification on some things that are
not specified there.

> Can you point me to some link or share some notes please?  I have
> setup git, mutt, and have downloaded the latest stable kernel version.

The Linux man-pages project is different from the Linux kernel project,
and the code is in different repositories.  You don't need the kernel
for contributing to the manual pages.  The guidelines for contributing
are mostly the same, though.

I've CCed the <linux-man@vger.kernel.org> mailing list, to which all
contributions to the project should be sent, as per the contributing
guide I've linked above.

> Kind regards,
> Rajesh

Have a lovely day,
Alex

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--vqz0P4MYy05uwrgf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmWFaT0ACgkQnowa+77/
2zLKKRAAi/biC74pgS39FjEtACco7b6PcqbUgXw/0dF4Juq+bAngpojLEuigOcXy
/9p6L4qs9pFo+Zf7wVnA+OTs1aCWBHtASnDkCGjSqUbf+hneDMt7RrWKaeQcf+DV
a2w2jzp3R3Mdo6PWS3YdaRZHCi8qI1YRW3Ch0O6eX7YvekOAJ7LhFSrUWBL6UpNe
SwoOezYKsbh4+v0SwVfhZ1vpODjbKVasw1eOdOoVekhRm93ELvcfwH6zQtAPIo2Q
38ket6oU3rRUvIBxPwPVVy1v79v/OlXt/QxbPmaHXuPjDhppCxho/7wTwFxpl6WB
tpG9kNtvgrnQRXACnNeU8ooGj/ec6h98SiR2e+Xrap7M+ze4egui4GGe5MGBtYm8
i2RqBR3R0Hl+exZxvDUgX6sMhHgkKjIEC3fFIMTd/4X0nmnfU5A5+ZXmIh5HSvrq
B08BaPd+fbr00kIAIvCxtQG1w0VvlbuTyNZJxSPwu6kpu1NPWWXoLiizDEwx6RN8
akhOH92vfffx+/t4tSfv+atHLdavbzdHjX6lx8JO/1MLGh4eEJ8SSqsTvwPHkTpi
y0PxvXtBJZtNR3/mnqHuvOgx5+KGah1ikDktucRApYiEzCjD4QJJwgG7ax3lxnUa
gBtvnlFskUl4hS2QNV1rr43L1MBaoN0gcp2LCTyjSjv6Hp/+IzI=
=KnKZ
-----END PGP SIGNATURE-----

--vqz0P4MYy05uwrgf--

