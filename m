Return-Path: <linux-man+bounces-2787-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 709AAA94795
	for <lists+linux-man@lfdr.de>; Sun, 20 Apr 2025 13:46:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 74D407A8A12
	for <lists+linux-man@lfdr.de>; Sun, 20 Apr 2025 11:45:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 136AD19259E;
	Sun, 20 Apr 2025 11:46:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LSYDEFwH"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5483194A45
	for <linux-man@vger.kernel.org>; Sun, 20 Apr 2025 11:46:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745149596; cv=none; b=tZMsf7HiWD/QJ7Oj+mcI/oe6Soi50DLVpnLZ3lt0Cxj4k4qt31yLBwrpFpf691OUShej85qR3VJMYtucmiI08nZmazStiBW7Vhb8I3Rx55dp50OtpymyMvNy9qjwfzWiE+gNSuCAj+efho1PzUDQqflIyKRiOG0wjAFqAmJCS6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745149596; c=relaxed/simple;
	bh=/spfGJatE+KhfNKWgnehrpvmYryqPCsruKduQkAibJw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EC7pTSEtf3SiZQ1L4n6C+q5O+aImSAB9rrY8f5qtje8qwqkDfHfx+v0LA6gXYbPkrx9ZUGlllnvUNpUiNG3uf8Hnq3gclIKrRQTybn7lc/nq2aDIvyrbNCvztEbJfNGyz0iFn0YyGDZZfWTRPAPh0Hm/y3C+MKuJhumNUlNc64I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LSYDEFwH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21EF2C4CEE2;
	Sun, 20 Apr 2025 11:46:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745149596;
	bh=/spfGJatE+KhfNKWgnehrpvmYryqPCsruKduQkAibJw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LSYDEFwH+q+cjDfYunRRqrQaKFsTJ8Ne9a3yYzXKPHqiTkYSep/IZx/orANY8knVV
	 mcgBzJb9eIeqs6Q83yTox2n3p7cihPPz6jlHnDG4Gt/FHwH+0JmN7vKtuwHMRag4I+
	 YQQ5UbAlpxFk0y+GC/guxywtHFNM/fslC8Hs5pMtGwofmF3WZvZxGuknwzmIeOAZJz
	 yaAuJL94tERgG+c2hng3PPnUR6nUaysh3E4M1yRkrGOZIfCSLKdemxI1LwmsIbBHFR
	 yMbXi4eDv08IbIdI6r9cKIVpeSIo9bc7tbzkyePZcO+/KiQ6bQyp45IWLpreFaFjch
	 DtYpc9JnJm81w==
Date: Sun, 20 Apr 2025 13:46:31 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Solomon Tan <wjsota@icloud.com>
Cc: linux-man@vger.kernel.org
Subject: Re: SLIST_REMOVAL number of arguments
Message-ID: <fahpbnjyzgx3xfkfexnv4lrv7c2smstosxiafenujepzhmgmrg@pibzktpkv2yk>
References: <1E1258C7-25AD-4BA1-B82C-6CDFC9DB9887@icloud.com>
 <tzx7sgns2uopu75s5gipw2yxkpg6drun2esl5feoazulkqjnqd@hoayn3jqoe5p>
 <70A926BE-9E8F-426A-BE5A-4D073FD9C5AF@icloud.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2dfkjcfhapptyozc"
Content-Disposition: inline
In-Reply-To: <70A926BE-9E8F-426A-BE5A-4D073FD9C5AF@icloud.com>


--2dfkjcfhapptyozc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Solomon Tan <wjsota@icloud.com>
Cc: linux-man@vger.kernel.org
Subject: Re: SLIST_REMOVAL number of arguments
References: <1E1258C7-25AD-4BA1-B82C-6CDFC9DB9887@icloud.com>
 <tzx7sgns2uopu75s5gipw2yxkpg6drun2esl5feoazulkqjnqd@hoayn3jqoe5p>
 <70A926BE-9E8F-426A-BE5A-4D073FD9C5AF@icloud.com>
MIME-Version: 1.0
In-Reply-To: <70A926BE-9E8F-426A-BE5A-4D073FD9C5AF@icloud.com>

Hi Solomon,

On Sun, Apr 20, 2025 at 07:37:37PM +0800, Solomon Tan wrote:
> > Do you want to send a patch, or should I do it?
> >=20
>=20
> I would like to send a patch, please. :D I will do it in another email.

Great!  Please send the patch with this header field, so that it's
threaded under this conversation.

	In-Reply-To: <1E1258C7-25AD-4BA1-B82C-6CDFC9DB9887@icloud.com>


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--2dfkjcfhapptyozc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgE3pcACgkQ64mZXMKQ
wqnz7hAAh8EmHgbS8RlfOaDqWeOa9WFf3MqOJIMDN4y4vHpdBZYDMopSzsh5Scv6
ATtr/62jY3+1oP5LkLxnDJjAh3ybVvrqC1hnuJT7HL3rjIPfvLdys/xalQVoaNMX
cULp11iMoCYxzYOc1yg0OMQiyJKn6x2PfdLgPJQMiBbDvzD6x2zUfpnQMILrCwDt
Rw1ySSZa14S60bNB+2NjN0BkRPvRsya7MtSSSStHGSNJxdBkfxITuJRl1pP5qANB
RAzeAfjEcQAXX4jcXVXlE6rI9RC+MQ/Jq+RbmF4ox6Spj34v5zWEsqmayZGsnjO8
nTiS2grq9U5Inlqd0ETqCkGhiFAgyUnQst89+19e2eJbZuj9anRoJyv4v1l4MdRn
FQOLjFSQqnwXwxGd/5O7GVe3eqCRPCxz9BBsHVIM1q+VitgmB1Yj3sg0FNS3Q1yt
IoztJ9vTFr5KIj3dFXhuVloyYeHez8bb84u7fegjEOkHC8B1FWUMwgecDhIZxVDD
Vev/L7zQlCJke+gmVDTH6OcGnN6l3zeS3xicAGiUzV940LzjnC1NbDP44gAgiMid
kv9TBYABxhMLZv9GeQB0z/EUK1tEW9mlk58imWjoepraaXBIe2tszQsG+WVKIMYb
54atAnnfHvy8HfvqJsSv5g57AWZLrMQnzEffzBbXUv3RXmzGuQo=
=O98L
-----END PGP SIGNATURE-----

--2dfkjcfhapptyozc--

