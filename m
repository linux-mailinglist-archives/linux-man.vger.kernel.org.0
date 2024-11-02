Return-Path: <linux-man+bounces-1836-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 00DCC9BA2FC
	for <lists+linux-man@lfdr.de>; Sun,  3 Nov 2024 00:10:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B85CC282C7C
	for <lists+linux-man@lfdr.de>; Sat,  2 Nov 2024 23:10:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D03BF170A30;
	Sat,  2 Nov 2024 23:10:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KAAZBIpS"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D3E4158546
	for <linux-man@vger.kernel.org>; Sat,  2 Nov 2024 23:10:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730589026; cv=none; b=sF2LqYSmh/Y2X0cmqy5yhsZhlG6/4xp8SH9TYJjtMh5nTJJMgnBrsi2+/VzVr5nII7luKbf/h3PF6wPsnNdf6C+YTvC2H8ljNZFe9iko+UyKFaxEN75b2fwzFjOegb8Kv5gG4sITY39pMh8daxgrXwGhwZWvo9+Db6RRXBwRmMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730589026; c=relaxed/simple;
	bh=qWjk5HI4jq05WDJAB5PvEvEffy2qGEw4sPUzcac2urc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=boKZDMJ7x2bDSC0Vb1wp7cacc0zytnHyM7X9HN54fhf56eT/ES/MDkF0LzZNBr5CeGIofEnLXJsRe9aQ13KO4MJm6YzXBnuxFGIjclneuI5+QSujPdTcAZfc52b2X14ZDh/edwKYkCpuzty/DxrbMi4H+Uwbvq/UtY9FlXLVAqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KAAZBIpS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42FF8C4CED0;
	Sat,  2 Nov 2024 23:10:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730589026;
	bh=qWjk5HI4jq05WDJAB5PvEvEffy2qGEw4sPUzcac2urc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KAAZBIpSnE4V0Y+2VovVyNgF4Xc/nzcyelWBevIdXXPIlUsNyb+y9Zs3mDvEWsirq
	 1rwdiuqv65h36URrmQip3tlaeoYaZyUPJ7ucHTmbscycZHCjCgfNJjajgR86VeAd/T
	 AcVd0DMawIMmI2LLYcSsdoj3GBCZmk7sm4RT2Xc+UMpQFTvliIL9/oga6xrmJ880ji
	 fzPjedIzzuWb0W6hLV/aKHSK4KeiZQm0nXpX+P14kag8eAO8X49yhmJVGT4F37l8Ec
	 1lXEGS3uz9Qpd4bBnOqD9tmCMsZ0fzCMP4WU4VkXopc693ieXX07efm3S7ss56Z0GF
	 0nAfMaMznzS2w==
Date: Sun, 3 Nov 2024 00:10:18 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, branden@debian.org, cjwatson@debian.org,
	=?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>,
	Jiri Olsa <jolsa@kernel.org>
Cc: groff@gnu.org, Alejandro Colomar <alx@kernel.org>
Subject: [PATCH] CONTRIBUTING.d/patches: Document new features alongside the
 features
Message-ID: <20241102231018.18979-1-alx@kernel.org>
References: <CAP-5=fXo5XjxUXshm9eRX-hCcC5VWOv0C5LBZ3Z0_wQb+rdnsw@mail.gmail.com>
 <cover.1730588410.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="f5xs1Ni32sMpGkfs"
Content-Disposition: inline
In-Reply-To: <cover.1730588410.git.alx@kernel.org>
X-Mailer: git-send-email 2.39.5


--f5xs1Ni32sMpGkfs
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 3 Nov 2024 00:10:18 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, branden@debian.org, cjwatson@debian.org,
	=?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>,
	Jiri Olsa <jolsa@kernel.org>
Cc: groff@gnu.org, Alejandro Colomar <alx@kernel.org>
Subject: [PATCH] CONTRIBUTING.d/patches: Document new features alongside the
 features

Link: <https://lwn.net/Articles/989380/>
Cc: Jiri Olsa <jolsa@kernel.org>
Cc: G=C3=BCnther Noack <gnoack@google.com>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

[offlist]

Hi G=C3=BCnther, Jiri,

I've prepared a draft of this contributing process that we talked about.
I won't officially post it until the other situation (sponsoring) is
resolved, but we can discuss it in private if you want.


Have a lovely night!
Alex

 CONTRIBUTING.d/patches | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/CONTRIBUTING.d/patches b/CONTRIBUTING.d/patches
index fedb163d3..0562ded66 100644
--- a/CONTRIBUTING.d/patches
+++ b/CONTRIBUTING.d/patches
@@ -131,6 +131,26 @@ Description
        to the list.  See also <CONTRIBUTING.d/git> for instructions for
        configuring git-send-email(1) to use neomutt(1) as a driver.
=20
+   New kernel/libc features
+       If you write a new kernel or libc feature, you should document it
+       in the same patch set that adds the feature, including any
+       patches to the manual pages.  The entire patch set consisting of
+       both the feature and its manual page should be sent to all
+       recipients for a better review process.  That can be done with
+       the following procedure:
+
+       1)  Generate the kernel or libc patch set, with a cover letter,
+           and using --thread in git-format-patch(1) (as specified in
+           our ./CONTRIBUTING.d/git).  This will generate a Message-ID
+           header field in the cover letter.
+
+       2)  Generate the man-pages patch set using
+           --in-reply-to=3D"<message-id>", where <message-id> is the value
+           of the header field of the cover letter.
+
+       3)  Send first the kernel/libc patch set, and then the man-pages
+           one, so that they have a consistent order.
+
 See also
        CONTRIBUTING
        CONTRIBUTING.d/*
--=20
2.39.2


--f5xs1Ni32sMpGkfs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmcmsVoACgkQnowa+77/
2zI4TQ//S8WN6S52Bpv4G2E3SjyO5FR+uto8UfHbkGJ+oAGVI5VeDXGtX+Sk0vbC
f0LwvnSOO4n0PP1Gk96TjilDXF4Fib66VxeyxakX/cTLL1aI1TQprQVJuvYECDx6
lFIZV4qmWZPFm0jUAFOdQ2qYAF0KQT4AQ+P+ecUE9off6AGaueb+FKsWj8syhxx1
fS4W8mC3aXxzRl9pNKrGISOZZQJxBTIKQyUTqrFIyCzrEQIDPU9r3XbXUmMgGww4
Ei76KgG1V4eHqoWEZbqXt5KWQqaZoVAa0mpv5nmiIPn6qOR+4IUyQbJdFRDLVQ+/
lY/HQKMe74FUuMARRLZe0b2FJecK/gjnn8WXOWrDV9KMkkTI9POwngDZ17uhk25p
edbSZ9XiX3LbvoD7DsrxLQNzQ0W/M0ElGjI8BFW/THZPz27+fLD82UmovrSY34tX
y5ReUt1sUO3gR1DMvKJv67d3Nli1DUZBJH5SesgIFnGuy6lVL7k5yexcKpJ8vfzc
wF5ZgNX1eIz8lIaWNWeA8PJPGGUHgDmle0d6TGA5rHuhBD1eWEKHTHtJbeTt2mYr
AIXbMmGjwlj7Wmla6oh0SDCfyHAP1xI7xaZNjSYtD352QOu/sKPztk+vGH2jl5DM
SL35VoH3l/8DEoHMovNALPNdRhuCu1NM4kAOifhB7Io6qTyaxp8=
=ScES
-----END PGP SIGNATURE-----

--f5xs1Ni32sMpGkfs--

