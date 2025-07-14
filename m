Return-Path: <linux-man+bounces-3263-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EC9F6B04A89
	for <lists+linux-man@lfdr.de>; Tue, 15 Jul 2025 00:24:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 34CF53AD76F
	for <lists+linux-man@lfdr.de>; Mon, 14 Jul 2025 22:24:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9865A269CE8;
	Mon, 14 Jul 2025 22:24:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alejandro-colomar.es header.i=@alejandro-colomar.es header.b="H3M3Y7Tf"
X-Original-To: linux-man@vger.kernel.org
Received: from out-186.mta0.migadu.com (out-186.mta0.migadu.com [91.218.175.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5CE2246787
	for <linux-man@vger.kernel.org>; Mon, 14 Jul 2025 22:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.186
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752531876; cv=none; b=LAX1BUF2iKxSXPf5ELgdcC27gRmpO0nWZNUc7iu90xVA2jekPHZZ3RSkBNnPIXiYFgxw41y82nPDbGr8O5k171qnQB1JG8XlHirrfFqyj+u9UbbMpFLzixuHfXj7u6OeYuL1vV+adyJuYalVXv3D5yQ8h/Q4c28bVGSyx9mQROY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752531876; c=relaxed/simple;
	bh=+jvfVPsTnV913+k0Xx/eiV0behM0Yf9WPzA/A/XTCb0=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=aT1C0WOjnRaggZ4WYM/gCSwGhAXNxD5JHE3d8btCim6w7xyE2jxAluorvQWHVN+GwZvzpHlRcF0b/hcVrWQm/szu9a2/iuZtDFnKnbOmIieLJcLfnhBgyfbsYLZU1uZ9nRl4+pXdOMvgcK9MWfLeydAPcXEEGVX+G6rD5KDS3Q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alejandro-colomar.es; spf=pass smtp.mailfrom=alejandro-colomar.es; dkim=pass (2048-bit key) header.d=alejandro-colomar.es header.i=@alejandro-colomar.es header.b=H3M3Y7Tf; arc=none smtp.client-ip=91.218.175.186
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alejandro-colomar.es
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alejandro-colomar.es
Date: Tue, 15 Jul 2025 00:24:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alejandro-colomar.es;
	s=key1; t=1752531871;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=j5p0A5dKMW1rxMx54eyxTV9pj8v7lFW1/qWbPLuUfz8=;
	b=H3M3Y7TfSN6QDDUJloOgY3yTaN3VbitllH13ICa2G1kHBGgPRhQEuiNPi8ooBI2ys86pYO
	JAFfK6egiWJZeUMbX5xWS9ToPazkL0/W3kF6X7nOXYOL/D3VuKiufxcsH1fgfhYL/cfa38
	EiqSqZjWaRxII55uhNXTptqfjLN/57yQ+pKZNHj08VTYUk4wto0uipr3WnEsK4nPL1E6KW
	PQOkoiex2qJg8Owxt2xY+KGJz8lPbu+Vu7ydQDQpTomEUSFcNNr4ijm40y80HnsYPW/kyb
	2OnMNe2MUcilwKDqeycg15vc9Bc0F8uinexJlwWanb63N18oVbPst+ymtnHh9g==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Alejandro Colomar <une+c@alejandro-colomar.es>
To: C Committee <sc22wg14@open-std.org>
Cc: Vincent Lefevre <vincent@vinc17.net>, linux-man@vger.kernel.org, 
	alx@kernel.org
Subject: alx-0051r0 - don't misuse reserved identifier 'exp'
Message-ID: <4hofrlprs42ltvnmekqoblxmzghnumv7tbda4rqefdnl2dz5bo@x4vevwcp4tgt>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ftef7spdte2ejysy"
Content-Disposition: inline
X-Migadu-Flow: FLOW_OUT


--ftef7spdte2ejysy
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <une+c@alejandro-colomar.es>
To: C Committee <sc22wg14@open-std.org>
Cc: Vincent Lefevre <vincent@vinc17.net>, linux-man@vger.kernel.org, 
	alx@kernel.org
Subject: alx-0051r0 - don't misuse reserved identifier 'exp'
MIME-Version: 1.0

Hi!

Vincent reported this issue to me in the Linux man-pages mailing list
(as the manual pages also had the same issue, so he reported the issue
in both the manual pages and the ISO C standard).  I think this can be
fixed editorially without going through an official N-document.  Please
find the proposal below.


Have a lovely night!
Alex

---
Name
	alx-0051r0 - don't misuse reserved identifier 'exp'

Category
	Editorial.

Author
	Reported-by: Vincent Lefevre <vincent@vinc17.net>
	Signed-off-by: Alejandro Colomar <alx@kernel.org>

History
	<https://www.alejandro-colomar.es/src/alx/alx/wg14/alx-0051.git/>

	r0 (2025-07-15):
	-  Initial draft.

Rationale
	Since 'exp' is a library function, it is a reserved identifier,
	which should not be used as a variable / parameter name.

	7.1.3p1 says

		All potentially reserved identifiers (...) that are
		provided by an implementation with an external
		definition are reserved for any use.

Proposed wording
	Based on N3550.

    7.17.7.5  The atomic_compare_exchange generic functions
	@@ Description, p7 EXAMPLE
	-	exp =3D atomic_load(&cur);
	+	e =3D atomic_load(&cur);
		do {
	-		des =3D function(exp);
	+		des =3D function(e);
	-	} while (!atomic_compare_exchange_weak(&cur, &exp, des));
	+	} while (!atomic_compare_exchange_weak(&cur, &e, des));

    B.11  Mathematics <math.h>
	@@
	...
	-_FloatN frexpfN(_FloatN value, int *exp);
	-_FloatNx frexpfNx(_FloatNx value, int *exp);
	-_DecimalN frexpdN(_DecimalN value, int *exp);
	-_DecimalNx frexpdNx(_DecimalNx value, int *exp);
	+_FloatN frexpfN(_FloatN value, int *e);
	+_FloatNx frexpfNx(_FloatNx value, int *e);
	+_DecimalN frexpdN(_DecimalN value, int *e);
	+_DecimalNx frexpdNx(_DecimalNx value, int *e);
	...

	@@
	...
	-_FloatN ldexpfN(_FloatN value, int *exp);
	-_FloatNx ldexpfNx(_FloatNx value, int *exp);
	-_DecimalN ldexpdN(_DecimalN value, int *exp);
	-_DecimalNx ldexpdNx(_DecimalNx value, int *exp);
	+_FloatN ldexpfN(_FloatN value, int *e);
	+_FloatNx ldexpfNx(_FloatNx value, int *e);
	+_DecimalN ldexpdN(_DecimalN value, int *e);
	+_DecimalNx ldexpdNx(_DecimalNx value, int *e);
	...

	@@
	...
	-_FloatN scalbnfN(_FloatN value, int *exp);
	-_FloatNx scalbnfNx(_FloatNx value, int *exp);
	-_DecimalN scalbndN(_DecimalN value, int *exp);
	-_DecimalNx scalbndNx(_DecimalNx value, int *exp);
	+_FloatN scalbnfN(_FloatN value, int *e);
	+_FloatNx scalbnfNx(_FloatNx value, int *e);
	+_DecimalN scalbndN(_DecimalN value, int *e);
	+_DecimalNx scalbndNx(_DecimalNx value, int *e);
	-_FloatN scalblnfN(_FloatN value, int *exp);
	-_FloatNx scalblnfNx(_FloatNx value, int *exp);
	-_DecimalN scalblndN(_DecimalN value, int *exp);
	-_DecimalNx scalblndNx(_DecimalNx value, int *exp);
	+_FloatN scalblnfN(_FloatN value, int *e);
	+_FloatNx scalblnfNx(_FloatNx value, int *e);
	+_DecimalN scalblndN(_DecimalN value, int *e);
	+_DecimalNx scalblndNx(_DecimalNx value, int *e);
	...

    F.10.4.9  The ldexp functions
	@@ p1
	 On a binary system,
	-ldexp(x, exp)
	+ldexp(x, e)
	 is equivalent to
	-scalbn(x, exp).
	+scalbn(x, e).

	## And remove bold from 'exp' in the paragraph above.  This is
	## probably present due to exp being considered as a reserved
	## identifier by some script, which is part of the consequences
	## of undefined behavior: UB might format your standard!  :)

    H.11.3  Functions
	@@ 7.12.7  Exponential and logarithmic functions
	## Apply same changes as in B.11 (see above).

	@@ F.10.14  Payload functions, p2
	...
	 the exponent is an integral power of 2 and,
	 when applicable,
	-value equals x =C3=97 2*exp.
	+value equals x =C3=97 2*e.

--=20
<https://www.alejandro-colomar.es/>

--ftef7spdte2ejysy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmh1g50ACgkQ64mZXMKQ
wqlNjQ//cdZ7bLHIpcR5nAAxmBjcBftaycFJA9FTmadcj02/Cv4sJTQkBMWYONAa
57EtXpL/ANJ85iF1hffTwZ6cNG+BSBXuyJJzdJ0T36JAtWJRp34p6cR69LjpI11o
SXasjM0H8KUs0bi2EU+Pq616iAfgb5Rb1fYwTL2S/CALjPZfxMCLcCIME8eS/vVl
ihksdV+1n9HVIb7aqB8DUmDiqgh/6nCZpsNz6NcmH6UTmX7x+zOmQa5muK/1/Wil
B8Nll+p00wuRbkyUa+z5oqgQfKoTMioinaNxrbLC+uQ5+JT3s455fzrJ0XL2rCvY
VDz5N00IiMbNAhrCvAY2hgSU53UUdhLJsbnGtrU3fi3EF0Ew9+YLBHYlW030x/uj
+U3eU/5SsvYBQs/GXCYvN5MrkwpPf11oMGGSG8NxsSGbutskFyrIH05MYs3NpTCX
jsW4hKuvALiCiMfCXMXX7/CaDl8/n3GxDI/PFqsthr+sOt3XI8/wcgOnqstulldS
Mkd5YtWI4BT4Fm5rO7onENcNzlp6NF27FA1sHsghVy3Zx7gDIEzFP0reZ47hjOzE
r7KcbRAvmwkYFUskodpf1qXfu12wdHqoHXVasS2LRkjV+L2djCEA+7SUV9DtzWSv
naI0EXZIENlnVlOSK9YkPw7B32Czxan0ZHHwJdUPceEPun5rgmk=
=Nhw0
-----END PGP SIGNATURE-----

--ftef7spdte2ejysy--

