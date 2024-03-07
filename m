Return-Path: <linux-man+bounces-553-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E16BD8745E7
	for <lists+linux-man@lfdr.de>; Thu,  7 Mar 2024 03:09:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5E6311C211CF
	for <lists+linux-man@lfdr.de>; Thu,  7 Mar 2024 02:09:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5E505667;
	Thu,  7 Mar 2024 02:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="afeKLT8Y"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A62EB46AF
	for <linux-man@vger.kernel.org>; Thu,  7 Mar 2024 02:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709777363; cv=none; b=FmkbtTCFvKUYukE2D9qkzcCfObsYL0vJV53v8x0J8p4WBU+dtYjeVJhiZah/eMpoO01cAH2kHi0v8DaaKKXoFi2pNDv/E+lKdyTDPmxTqwfM3OMsGHCHfejTwypriZysDi97yuxsymHzXrfL5aeESkiyUbkdMewwTojeYYw0zmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709777363; c=relaxed/simple;
	bh=dlSVnZ6jTp6UcqqDB7I/GS2mdCSAFjUm3RgBhhZHSDw=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W3WSbepqyMDCla9aDRGCnnJIOjkxFMUBxp9VFezjKJfR+NIB0L8C9nsGXHYHsRKiNF/OXzLx/bPO/ms1aT2vuxdGw3K0NoDRGzEwqnk0+FVAZSM2obAmkYa4ucqAy6J4i1XSIKs8rEfxKNo3rKVnpmMUcf40J+UvYS+fJ4ng/3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=afeKLT8Y; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 433B0C433C7;
	Thu,  7 Mar 2024 02:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709777363;
	bh=dlSVnZ6jTp6UcqqDB7I/GS2mdCSAFjUm3RgBhhZHSDw=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=afeKLT8YqDvzNEIZQWNKwEWaliieYugnJVEloYIFy22W5KC/QzFnfA2TfipRBKzRv
	 6do8TWY1cdteSMdnQ2TOuZdk55I51uOSZVQAhEqLSN4JQqNqjW9BMu0pwbSgGNzeX9
	 JkWDGaMHp+sZGAa0j03p3pd6letk0paNrEl+CjUh8TAblJr6SpHuS+EGk/iJUOKg6I
	 YIqIh9znoO79KDVUKAHnM/f6A2l7pkNuS/+Pg2DIvy6czZ69JqlmdnCIYpUDm6pdIv
	 vRXAqRBmrwlOxu7jLnueDJPjIYbBi/+ZeH9vRbn/xqy1ZMAG/gB+kJ2ki8Bv3jpxy8
	 WZ6OV8uHlWfLQ==
Date: Thu, 7 Mar 2024 03:09:19 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Guillem Jover <guillem@hadrons.org>, linux-man@vger.kernel.org,
	Oskari Pirhonen <xxc3ncoredxx@gmail.com>
Subject: Mail-Followup-To header (was: Order priority issues for special
 3type sub-section)
Message-ID: <Zekhz_a9l5ZGwcAb@debian>
References: <Zej60rSb9Ve5rRPy@thunder.hadrons.org>
 <ZekNZuR3nRczAIqX@debian>
 <ZekThJn_-AGkDyRb@dj3ntoo>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="x9a2fVkJkcut/duP"
Content-Disposition: inline
In-Reply-To: <ZekThJn_-AGkDyRb@dj3ntoo>


--x9a2fVkJkcut/duP
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 7 Mar 2024 03:09:19 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Guillem Jover <guillem@hadrons.org>, linux-man@vger.kernel.org,
	Oskari Pirhonen <xxc3ncoredxx@gmail.com>
Subject: Mail-Followup-To header (was: Order priority issues for special
 3type sub-section)

Hi Oskari,

I've found now why my MUAs don't include you in the reply.  I've seen
the following header in your message.  I don't know if this is something
you configured your MUA to send, or if it's an accident.  Please have a
look.

Mail-Followup-To: Alejandro Colomar <alx@kernel.org>,
        Guillem Jover <guillem@hadrons.org>, linux-man@vger.kernel.org

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--x9a2fVkJkcut/duP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXpIc8ACgkQnowa+77/
2zIOWBAApm4bwm/q/eph2aqRWlprhwC0SSZ9l0WpK7LRZk5jS9EDeei2wkRYB8i9
FsA07wXdHUP6rv77V1EB6j0c5cuFEZ00efOv5MJOodM9mFG4LcfZ19l90/UF5a3t
ottrpktyvYqkhheklgLdc29wsJHLyGnoSEpJCcqkAZlCIzn1QrtQ+FA8tWZHGVY+
17hBvloduMz+qNEegHl6V+PfFTQs0f478NXfhJ0cQggBeP8dnnrlErqaQLYbCCyE
zkCmI8+4w5pznK7JPbqdb4ppjM1ZyVH5N1asAxXeeqpkTPcs6jjEvTuuO57Tffhh
rkbHJyWVDhZtfK9xzxTezHdNNJl1gtgyukUpmOfsjUvgrnHlWvJxjylvjjYN82jU
/RD/VR2edlwbb+z5qrCbSgD43/yPfXobk+7KvECU+YuAZN9FJ56hQquw9eEZ6lxH
kCc8CgjPuCahm5mJPBPh+DP60rKq4K8PfEEnrD2ftDavL1VCGn/uV2mpUF+Z6GJ/
gGIG7AaWLWMe/CCi4O281OQ2BgRDcblMOykSo9yKjWwRWWfbM3wN7jKbi0w2zHr9
uKUdf8BWLHkQBTNwiyrmWItcjvf6GgaZRgMQpvqRb3hLyvKPbjPNNEuU/6Ms0rdu
ciWE4JICoHudAcwlywtm9b4yOF9viGKYX6ZVPvtP+pNnrjFaZME=
=ZRzM
-----END PGP SIGNATURE-----

--x9a2fVkJkcut/duP--

