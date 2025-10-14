Return-Path: <linux-man+bounces-4123-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 00925BDB83F
	for <lists+linux-man@lfdr.de>; Tue, 14 Oct 2025 23:59:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CD2CD4E29CB
	for <lists+linux-man@lfdr.de>; Tue, 14 Oct 2025 21:59:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8DD5DDAB;
	Tue, 14 Oct 2025 21:59:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oN/vaIfq"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8C2625A64C
	for <linux-man@vger.kernel.org>; Tue, 14 Oct 2025 21:59:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760479152; cv=none; b=N3Thdud0rhR5PvxXvLWxmX17bgH3+GbcM9LbHUQXSrf29mw3IyIs9BgCWpH4/1M3bjmqP1XMjlAldNCiB681ZVyfFCcGgGzak/tmQHstATHq3t2vDM7R369dwHvxVgeMBF8boqvDjqPX5TLtDB1jnzuSATUw+ivvSsAZ4APTsWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760479152; c=relaxed/simple;
	bh=SdofPFfR6JPMQ6gbd49bVrZhjcPROljFIrV3tz9Xnwo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cE6xGpgExHJWoZ1HOUm1VxDRguMZSPICqSWCG8F9Ylnto2oAlvN+qPwUjh1Y56nfAOYY2NnJKqA8G+gV9ih/sRg6D0vKCtwFiYzFT4S7gvi3lDoXcj1LAfN/oErvDDiuCaGPqqdKDa6cEo7lvboyHiQff/HU3a0xgBLvPhiynGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oN/vaIfq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 845C0C4CEF1;
	Tue, 14 Oct 2025 21:59:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760479152;
	bh=SdofPFfR6JPMQ6gbd49bVrZhjcPROljFIrV3tz9Xnwo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oN/vaIfq4MzeQa9BXGU996ECCXOs2EGHswR+xqzVYqtf+2ws4hAtP4eOHVaYwrVPW
	 mQWL7CwZObp+n7BaJNSWfe9HywGMsxpXefdBvJ8xc6lq8UStd8CwujZ58axKzwAlP9
	 AsDynhTxwCsF2xqaO/f1i18GS59slimz0412B9AawUUNfzg6tB5eHeIcX2XjlXXShO
	 /Nz4Z0VRlJocPXPFDH7YFWNcKd4PglTyPbNWVlgLBY4b4V+GVi0cGFReOLzkt2fOua
	 QxMEbF8EfwxU6zVx94MAKlvyl3aXtfz64d+zDXe7HzxHtrtJ4B/xKXJ+WBHgB2HafG
	 6dscqmJxmyTqg==
Date: Tue, 14 Oct 2025 23:59:08 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <xcupkgdicaihwfxnggznr2wkks6d4axm23is6arlly6zyeftlb@xf2gci2joaeu>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <877bwx6u48.fsf@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yvplsx4pbb7qwjmo"
Content-Disposition: inline
In-Reply-To: <877bwx6u48.fsf@gmail.com>


--yvplsx4pbb7qwjmo
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <xcupkgdicaihwfxnggznr2wkks6d4axm23is6arlly6zyeftlb@xf2gci2joaeu>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <877bwx6u48.fsf@gmail.com>
MIME-Version: 1.0
In-Reply-To: <877bwx6u48.fsf@gmail.com>

Hi Collin,

On Tue, Oct 14, 2025 at 02:39:19PM -0700, Collin Funk wrote:
> > So far, I haven't noticed any contributors using AI.  Probably, the
> > combination of relatively few people contributing documentation,
> > combined with still working on a mailing list, has helped us avoid the
> > wave of AI contributions.
> >
> > However, it's better to take preventive measures.  AI is entirely banned
> > in this project.  The guidelines are clear and concise.
>=20
> It might be good to provide a sentence or two of reasoning, to avoid
> repeated questions on the list.
>=20
> My main concern with accepting AI contributions is the current lack of
> legislation and case law in the United States with respect to the
> copyright-ability of the output. I also don't trust AI answers much, but
> that theoretically could change in the future as technology improves (or
> less people blindly trust the output).

I have many concerns, including copyright, licensing, quality, and also
harm to the environment.  I posted this patch to the mailing list so
that we have a resource to point to for complete discussion, instead of
just including a sentence or two, which would necessarily be incomplete.

I might include a note saying something like

	if you believe your use of AI is necessary for a major reason,
	please disclose it and ask for an exception

for covering some cases where health is involved (such as what Carlos
mentioned).


Have a lovely night!
Alex

>=20
> Collin



--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--yvplsx4pbb7qwjmo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjux6sACgkQ64mZXMKQ
wqmM5BAAhxU1wuyBpmDLHppjv1ytmZPnLY4/AB45v5szEdO/lwepfiVDB1+a4cYd
ZONWxmM0dbDzf9no2yv+66h10SQyeZaP4NhqiVIns7VJB2tOkdg8KlzwKJgijDBU
5fgjK2CaZB4jgtM6p9r7pOanfkFrInHt7RJoKO36uc+enDjIip+VkanY1wbPVWDe
hC9W0OOUSd4pltW5QU2ZVYf3Oe3ZaMMzVoRViNTsnLFcWSIiBHvKcUIyFI+uWtXQ
kC8g2P02mUfrGMmUV8XiDy6Tjalt2B09f+VNXNWtrsogf1WmE1gkFNrPfZ3jG7y4
RKbbx2Ym37EH//4Y3LH+3OH9ltV4zJux7QFLcATS13dKiPN67ZGYh+t6zjoVSkJV
cSdI+INDxX6Yi9cmjrmG2rmDXViToO5CE5tEsKDckT2i/vy8ue01a+3ZioPEoRdu
tnHWKFUnf/rqPnrGtnCmv3TsSTkM7BP3Z0TqVFRQIS+v7oc4/7Hg17eBUwG31mtQ
Q6byEG5IfCStCucFwGWUith2fN3Zcij4aqk5cbHYg3g6OdDrXhP/9hx4mY0GUFe4
eB8t9/edmQXJ1l+B5mbsSNaBXHVRHSEjxEdaIvBsz+uBqk+Mr7PBxKz+UH3c4hT7
O7IZt7tRONL2ZBc/j69LSd8FiiIXTyBdy6bj0dg3Ka+N/RulWgw=
=sAvD
-----END PGP SIGNATURE-----

--yvplsx4pbb7qwjmo--

