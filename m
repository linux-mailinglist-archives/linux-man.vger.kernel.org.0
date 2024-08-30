Return-Path: <linux-man+bounces-1732-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 51ED7966106
	for <lists+linux-man@lfdr.de>; Fri, 30 Aug 2024 13:51:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E5996B21359
	for <lists+linux-man@lfdr.de>; Fri, 30 Aug 2024 11:51:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 380F319409C;
	Fri, 30 Aug 2024 11:51:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J4Hh63Rb"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC0C7190068
	for <linux-man@vger.kernel.org>; Fri, 30 Aug 2024 11:51:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725018692; cv=none; b=vBt4wMKK39agSmQaEbnCYicHCZDpl4IojRXK5srqFh9Xsix0gQwQEFJOYVwTPsfAOa6xdYysF/3zMYQCMEgFh5+4hK9cjz6UXtaqdvi5m/6huof/g79eoiQKg4vhRktMozIxlTWegvSQkFL73GQcWYl8didKEbNLcnXW6mQThr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725018692; c=relaxed/simple;
	bh=cMrO+5Z5yUWz1btF6wOJsI5ipj5TU1DWEyX5cJcGdjs=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=lFTh9r02xMVQxrriG0C+lTqzUZYWPHJunpwGxLzIiXDzRb6NZKq3wSaRLYYX2j1OcDz8DSJMQV71rgFWyUqYr+0IFCI9+HQEel5CHf1d436wa5aQjN0AYaisazdPeqY6QG2n/sStsdJW/dgNa86vNNcWO2v7ykNXqgZSjR4ZPWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J4Hh63Rb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BDFD5C4CEC2;
	Fri, 30 Aug 2024 11:51:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725018690;
	bh=cMrO+5Z5yUWz1btF6wOJsI5ipj5TU1DWEyX5cJcGdjs=;
	h=Date:From:To:Cc:Subject:From;
	b=J4Hh63RbyQFVF5EXS8/CkkWIDQZaqKOwDv69aFsx0gKVQk34YgyP9WTTSt1zZpPJ1
	 BWdepzRHRECkqIRdveTNlY+7wnF9T33hbNQHAJ5sobSCdKWVc0SWw7234K/utIP8NJ
	 jtbhEGlFYv1mfPVBKvCy2lOOCFhxrpQCZieBzjv+u0hkDdzrf9WWOa+KfVuEaor5Mt
	 5YoWxfRkgRgKmzWZgJCr9f8OIw3wtPQoPZckTdlb+GLBTYXHUJSAOz8MVEYEe8/sR7
	 Qv556OWUl7ydS0ahkVGojnlRal2LzRN/wNv57GOXNx11a6RmNPlk67YXla4Yn7eQyr
	 otM790hvR6Lsg==
Date: Fri, 30 Aug 2024 13:51:28 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Paul Eggert <eggert@cs.ucla.edu>
Subject: [PATCH v1] tzset.3: CAVEATS: Document the inability of tzset() to
 report errors
Message-ID: <72da4dab984124809cdc839bdeecba375c7c9633.1725018600.git.alx@kernel.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="43dvme5shpfdyuil"
Content-Disposition: inline


--43dvme5shpfdyuil
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Paul Eggert <eggert@cs.ucla.edu>
Subject: [PATCH v1] tzset.3: CAVEATS: Document the inability of tzset() to
 report errors
MIME-Version: 1.0

NetBSD has tzalloc(3), which returns NULL to report invalid tme zones.

Cc: Paul Eggert <eggert@cs.ucla.edu>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
Range-diff against v0:
-:  --------- > 1:  72da4dab9 tzset.3: CAVEATS: Document the inability of t=
zset() to report errors

 man/man3/tzset.3 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man/man3/tzset.3 b/man/man3/tzset.3
index 701cebee5..91136ff86 100644
--- a/man/man3/tzset.3
+++ b/man/man3/tzset.3
@@ -278,6 +278,9 @@ .SH CAVEATS
 .I tm_zone
 members of the broken-down time structure
 .BR tm (3type).
+.P
+This function does not report errors.
+There's no way to know if the value of TZ represents a valid time zone.
 .SH SEE ALSO
 .BR date (1),
 .BR gettimeofday (2),

base-commit: bd576aaf5fce40100133c1d48c02eacbf25594c8
--=20
2.45.2


--43dvme5shpfdyuil
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbRsj8ACgkQnowa+77/
2zKieRAAgW9Tu6cqJqQY6Yoqhl13wSy+vzN+5qKkoRh+5TXG1hS3RFnzzM0oFLB9
n79/LRSKVKDABh4Lz846UNdH095kVjrUMFtiSlcDEoAzLKbk6YHXST0hvRREBUD9
I5VXKNJSOIjTXGIvgppCOwGNf21y4qu5Evh8fJIn53g80JdCzO49hfx9YQGo69Gp
vrl/XO+Q5wxIcl1Y55rUko00kWW/z7fK7WlDvfRg8JdHcE/cQb+BPm5GWpi3X7Dy
mJEh346s4EQAfHmassTvvTgMYCoOsGabg+a9xD9GFRyGrQTPr6qZB5kI1YzAlL+g
LUv5coxSfcXdWHgiX85iv16aC+URLhYb8KJfwF4w/GFcgNqMvBj9WD233tN8WpOY
Pan4EMhJ3SqoN/r+hDuurq0YSwI7mDCOe7Q/SScA0E8Brpv/pUogOfjC4QyRXzei
JGtSy4R4eSthp1Mlhx3gf4BLuWz5QrWw2yRa/v7kFK/q2rktZhpdFNuQB1F9j9ex
mWOZwl5uRNw1qfnHK/kmzFY3bkFJYlvXtypNlEkj8VzGhAIMMKJFdzW6iZlTmVqi
03zk4MByM32FNsPNt/tcvpwR38v6k1KhzmSRc4E/f8hMiFWrlqRz73E7BS1A4tfw
1G3U2uWtOk+R7yrRJiU/Vj80Dj5kvSmNbngOqygaUluhPfJwO5A=
=C8fa
-----END PGP SIGNATURE-----

--43dvme5shpfdyuil--

