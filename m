Return-Path: <linux-man+bounces-2036-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC1B9D04D0
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 18:26:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 924B928140B
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 17:26:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A33131DA0FE;
	Sun, 17 Nov 2024 17:26:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M6hQWboQ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6124C23AD
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 17:26:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731864379; cv=none; b=nELnGLNGQm2FLxZo4wuWOnUpQ813gvCkgGx6DJ3dEnkj/gfFSYYlwEHTtzVMN3YoKGh44ikR0V3VSkWpOegvB/82kIVtaz5oAHUu7Rr2RMQJgRBF/JveFDkc67IJxS5FNM3R/bbZAS6VpzLudWZdbXd1qHktNKHqxsrAPTMzKko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731864379; c=relaxed/simple;
	bh=Y0xgHAD5ahTbEb0dF/XZXUasbSpNKLy7/LBDxzM8rKQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KNhSCp9lAk7iRmJjhlu1wgzl6CttKrZZU3uVfEtvyV6T46zZkWeGe4sydd+AdjrMmEkPRbgGvVCZMETXqZmvSYUZ+uLyquBHtWg1WQLPJLqhHVcKihOHeYaX83QB8MGJeiPuo6foKLLHlJqqClMhrUgzND83nH3TPZBuPFsa6+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M6hQWboQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E53A3C4CECD;
	Sun, 17 Nov 2024 17:26:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731864378;
	bh=Y0xgHAD5ahTbEb0dF/XZXUasbSpNKLy7/LBDxzM8rKQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=M6hQWboQ+xInthH+SByclWeWSgY3iZ0huLhbi3sUGKBFdAXQUW76voCXBbF/AVGQH
	 8I4JqDGW5zts1dyOfhGy6jtmEJJ0zElXrFz9fHzG99niJQjiBBWRXzcQR1ugHZ9yRt
	 rNEb2B3KJcNECtR+TbyHAUTp6g0MOotSsQEFuOfktnEh8l/Q+iFbLXRDqKCSqZKxlN
	 NC9KvI4jkK7N3cnyEq2GkbyZG1MhkGg0GnzKsy48TBUPz79XVgyMJDH71TRVBSqk7s
	 1mmvBEJzZU1MFDi79VGKH4hHdrSUIpwQbrsN3Lh216F0+baUpH00gpCniovWsa+5pb
	 bI8zMRhIEqnJA==
Date: Sun, 17 Nov 2024 18:26:15 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Helge Kreutzmann <debian@helgefjell.de>, mario.blaettermann@gmail.com, 
	linux-man@vger.kernel.org
Subject: Re: Issue in man page proc_pid_fd.5
Message-ID: <b4zt4qv2d65ukvgfwos54h4p4tmrjcmfbzniiwe57rzqqm6l7p@x4h5hfxearh3>
References: <ZznJftO2LwVxlMV0@meinfjell.helgefjelltest.de>
 <rkahavnoaq6iryfg26isqi7rwncw57ihenyvlzwxzt4b5qmbma@vo6iu4jdvm4d>
 <20241117163547.k6cvvaz5xitbvicn@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dygnpsvrwr6etixh"
Content-Disposition: inline
In-Reply-To: <20241117163547.k6cvvaz5xitbvicn@illithid>


--dygnpsvrwr6etixh
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Helge Kreutzmann <debian@helgefjell.de>, mario.blaettermann@gmail.com, 
	linux-man@vger.kernel.org
Subject: Re: Issue in man page proc_pid_fd.5
References: <ZznJftO2LwVxlMV0@meinfjell.helgefjelltest.de>
 <rkahavnoaq6iryfg26isqi7rwncw57ihenyvlzwxzt4b5qmbma@vo6iu4jdvm4d>
 <20241117163547.k6cvvaz5xitbvicn@illithid>
MIME-Version: 1.0
In-Reply-To: <20241117163547.k6cvvaz5xitbvicn@illithid>

Hi Branden,

On Sun, Nov 17, 2024 at 10:35:47AM GMT, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2024-11-17T12:24:56+0100, Alejandro Colomar wrote:
> > [CC +=3D Branden]
>=20
> What do you need from me here?  I'll take a guess and review your patch.

The guess was good.  :)

> > On Sun, Nov 17, 2024 at 10:46:22AM GMT, Helge Kreutzmann wrote:
> > > Without further ado, the following was found:
> > >=20
> > > Issue:    Inode -> I<inode>?
> > >=20
> > > "type:[inode]\n"
> >=20
> > I've applied the following patch:
> >=20
> > 	commit f3ac823f7501910031855c1f6e640f0dc5e295bb (HEAD -> contrib)
> > 	Author: Alejandro Colomar <alx@kernel.org>
> > 	Date:   Sun Nov 17 12:23:48 2024 +0100
> >=20
> > 	    proc_pid_fd.5: ffix
> > 	   =20
> > 	    Reported-by: Helge Kreutzmann <debian@helgefjell.de>
> > 	    Cc: "G. Branden Robinson" <branden@debian.org>
> > 	    Signed-off-by: Alejandro Colomar <alx@kernel.org>
> >=20
> > 	diff --git a/man/man5/proc_pid_fd.5 b/man/man5/proc_pid_fd.5
> > 	index 2e3341ad8..903063e82 100644
> > 	--- a/man/man5/proc_pid_fd.5
> > 	+++ b/man/man5/proc_pid_fd.5
> > 	@@ -24,7 +24,7 @@ .SH DESCRIPTION
> > 	 .IP
> > 	 .in +4n
> > 	 .EX
> > 	-type:[inode]
> > 	+.IB type :[ inode ]
>=20
> This markup looks okay to me, if "type" and "inode" are parameterized
> and ":[" and "]" are literal.
>=20
> Personally, I would use `IR` instead of `IB` since the example is of
> _output_, not user input.

Hmmm, interesting.  I'll amend the patch, since it's not yet pushed to
the master branch.

>=20
> groff_man_style(7):
>             Use bold for literal portions of syntax synopses, for
>             command=E2=80=90line options in running text, and for literal=
s that
>             are major topics of the subject under discussion; for
>             example, this page uses bold for macro, string, and register
>             names.  In an .EX/.EE example of interactive I/O (such as a
>             shell session), set only user input in bold.
>=20
> But (a) the exhibit here is more an example of file content than I/O per
> se, and (b) I don't recall if you have an overriding style rule for the
> man-pages project.

(b) I don't.

>=20
> As ever, clarity is the first principle.  If the example is clear either
> way, the choice of typeface for the literal parts of it is a matter of
> polish, and not likely a barrier to the reader's comprehension.

Since either way it's clear, I'll take the Roman.

Cheers,
Alex

>=20
> > 	 .EE
> > 	 .in
> > 	 .IP
> > 	@@ -50,7 +50,7 @@ .SH DESCRIPTION
> > 	 .IP
> > 	 .in +4n
> > 	 .EX
> > 	-.RI anon_inode: file-type
> > 	+.BI anon_inode: file-type
> > 	 .EE
> > 	 .in
> > 	 .IP
> >=20
> > If anyone has comments, please let me know.
>=20
> Regards,
> Branden



--=20
<https://www.alejandro-colomar.es/>

--dygnpsvrwr6etixh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc6Jy4ACgkQnowa+77/
2zLvqg/5AcFafXcEITB5G2L0mrNOQhYjwG/Vs4hxpFqy/szMCnTdTWxg3Vq8Ec1o
AhTcGVbPTn5MsgZlo1KXa303sirXqbEW35TCuRtH4UhHx4WY2dMQow0x0aCU4MI9
k90znQ2zWRk5ADXK3WiVqz5tmofnCaBvm/CHlDgvBJ+mYGvA+cQ4s6Sb/usbK786
WFgVipYAcm9EwSnOCxJM7IryRatHY8QwmtKWoSrYELGYpLKlXMbJCDIZQGGK2lKm
1fUKo43ZV8IsVmZKD0Jkuv6ZtWoyfnX0hGmwH6UpD8DT3qSZRxxTS+QS2Sl9qPG7
0lYrWBuFGC/8GZtyvE7O4jjcQ3WuhW+HAx3y/+/Er5u9Dvplee4W5x64dwQgaSPu
FFSI9OkqBwRYjWdq2+IV990u6b4uE8GqLkoYMZiNCtjV12TbFvwO0sIlHxDq2ggG
5LAOKx2o3Uk+rhemXbRJjRMTuJGMhA1t2ZEl49+eBzQchCr6pJuAwTd91kpxNJ+9
6bEHycQCiEKC/VZTiijbhN5KuFQtGs00YXjn17HXqwiXAZJhN/xfFZcSpsoit6RC
epLlXc9QUQBoRjjkBp+cWMfjdjsLr34/TLMmng0iL8qMs2TQRFnUBIzkeiFr/Vy9
PU5ArWR17awjZ9VrbV5F0+s2WxQCYDZ/R/9acdI64puqXN7zkcA=
=R5TV
-----END PGP SIGNATURE-----

--dygnpsvrwr6etixh--

