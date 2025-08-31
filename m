Return-Path: <linux-man+bounces-3762-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE52B3D180
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 10:54:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EFD961890BC9
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 08:55:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C848922FDE6;
	Sun, 31 Aug 2025 08:54:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tqH8YzeE"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 853B7168BD
	for <linux-man@vger.kernel.org>; Sun, 31 Aug 2025 08:54:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756630486; cv=none; b=BVInlL0TR1izmf5ZXH6BcA3bDJCbuvz3dJQY9pkPNrp8fY70UJ0RihoDOjQiTlz9XT0NzMubMWfnAikXbckdrqSOqSuYUE0aiOKWZw9OyORHRh8BNzs6ZDA32oPQuG9KI3d1B9PBdhO/2GDYN3zM6X+khB93yXOizC2AkbfZJfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756630486; c=relaxed/simple;
	bh=iihIoIaFZIyU2lLEEVhLRgXIkTFaKhnQKI6y/WkntNM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=j6GPiueL2iDNqaqfR7JkUfLrKtWbHMH8zuP1aQMdSFVTjK1OFQ9kl5Fed8TRfhrKRUU+z/CVzJVjEf4Mq3pdAtfK7COVIAjsY8UveFld42m82arJo1frpQxPmho8PwU2G473HT5XX+9VmXtQdbNdIxe73udSwvR+qP3NbIu+79s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tqH8YzeE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D6606C4CEED;
	Sun, 31 Aug 2025 08:54:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756630486;
	bh=iihIoIaFZIyU2lLEEVhLRgXIkTFaKhnQKI6y/WkntNM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tqH8YzeE1mI6JX4zjhu8vlupreZeiYRwjc/lpDMFr4GCLu7Mo8BtuaSjK+5h3h0NP
	 rvh7bODrgVGE7HVwIAGOWvB+n1cCfdObuPH07tTRqFitgegh1ZQ6dVHFirf0Sxg/f7
	 LYRY4IanrzFX5YUWXkigNkKugsMWQu7WhnHNVkb470eiDIlkMAQ4tyEfEPZvOHujhK
	 zY6DlkcH9AD+9JvJhJNQiddH7TJmFK0TfaEUi//AVz+J4/KwiMuMCquWpY4mJm2Bg/
	 0aE+DK98tbsk2nxslai0ZwvWF8BVFz33mGOgb3gbt6fTRfgrWI+s4sZcBT3U+a+jMy
	 XH2AAZZ3hwcTg==
Date: Sun, 31 Aug 2025 10:54:41 +0200
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] random(7): trivial grammar fix.
Message-ID: <pgwpefyyfg3ovnks3rblqt3xfmvgayvhqu7bkacg4hwbd7atzt@feoibsgpjbei>
References: <CAJgzZooU580iDpcp+gAWFEmzzrYhUFrMgFGY9keUG_Y_x61OyA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3omcngydnidvglhp"
Content-Disposition: inline
In-Reply-To: <CAJgzZooU580iDpcp+gAWFEmzzrYhUFrMgFGY9keUG_Y_x61OyA@mail.gmail.com>


--3omcngydnidvglhp
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] random(7): trivial grammar fix.
References: <CAJgzZooU580iDpcp+gAWFEmzzrYhUFrMgFGY9keUG_Y_x61OyA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJgzZooU580iDpcp+gAWFEmzzrYhUFrMgFGY9keUG_Y_x61OyA@mail.gmail.com>

Hi Elliott,

On Wed, Aug 27, 2025 at 02:07:38PM -0400, enh wrote:
> ---
>  man/man7/random.7 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Thanks!  I've applied the patch.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Db19a5f49ff24b7cc84f70e824ae3a8b1d9755141>
(use port 80.)


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--3omcngydnidvglhp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmi0DdAACgkQ64mZXMKQ
wql/DQ/9GRiKj6pMDnkSpku11JJjnnd9siAQ8IimO0Xi8SQsieGa1tdTOAEwdNb/
0cGIL6f7B1M3f/C1J+8W+BN2TUHjDo1kIjU7hkjoHbhIiEzgmV1dgZ52Ftep675M
wW4MpRJwpVLUPuF51/ejT1WQTP9QwlGQN62P9u1N6/HRfEJ8Fs7BohG0tmibH2d1
eqeeRs4vBp8HwHxOtCrKHA4us8vGfXpFTWxsIldYRUSjg7pghBHRBjo4AYeGnLvo
3+yk4k1PhJctWtbC2Dj606qAmD1WvYzer83+Nk3VxsJg28GFtvu3rChqng7Sa8Bc
X5sW9iuUlgEY21Uql9yJwZeEBjNj56dGt60is30YmFTQlspR0DxoSPdDcbQwdSYS
Y3biRB8UvZS7NfTIncedCO310dDgSgWrWe608sMMNVTVvTM/M/WHr+IzYY10c2By
9RJXQtv1fGhdv9CHxXKjHd7Dn+W/2rEEvddFuWksMdDNbw+pPkMsBR3JWwibZbDn
R3Z7Aq9B+FP58Ba7GYlFSMjt5bd/wRlu1YPEHz3P57HOo9YenO6lUnp7r32iWQsQ
kexGdTwcf7dvm4pPoTZdHC56XqrLACx1U2bL+9cBekzdXBqDy0B59TjBRAhKST9/
sFxhkHtymuOpGhJkg7SPZj/rhuSq/baZcVcijX1DkUs1URFJ6HU=
=5Ahq
-----END PGP SIGNATURE-----

--3omcngydnidvglhp--

