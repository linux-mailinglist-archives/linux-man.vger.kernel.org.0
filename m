Return-Path: <linux-man+bounces-2623-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 00B74A6C46C
	for <lists+linux-man@lfdr.de>; Fri, 21 Mar 2025 21:42:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5A1BF484F31
	for <lists+linux-man@lfdr.de>; Fri, 21 Mar 2025 20:42:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA8E9230BDA;
	Fri, 21 Mar 2025 20:41:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ee2Kr9+Q"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A8972309A8
	for <linux-man@vger.kernel.org>; Fri, 21 Mar 2025 20:41:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742589718; cv=none; b=H/tindVN9I8mgUeVXXhLmc/x5WrI/VV273zCI1teypA+1OJI5wLxkNzjVcCLIPXFx4RG99/74QeITeRHSKHDtHwY7vJDA69K7Ix3S5Cumw6+6MLHXvN36Ri0L2AgjLVY4+fT9RlKBJO1PZXwRmDrnXWsOdWetG8gnA3T8hSVzV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742589718; c=relaxed/simple;
	bh=ifGqqYlKECsUy9nvHArsMqd0ETnwfHGDOOe70B41A3I=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=ifsiIn7J36BrhOTG4AlzkliWv+voqSrecZi4RCcXCk4aVMuwQ+TohNvyzUPXB7IBTSsWSqwHPkPHwo2uQgPvMxvIRoasGABPPujJiBowCUhHncJg0+bVasmdk+862cDdY8kZudT1vGtdm6BZDdAduPUq+GA7ro0yLuh49FRL1+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ee2Kr9+Q; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 937EEC4CEE3;
	Fri, 21 Mar 2025 20:41:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742589718;
	bh=ifGqqYlKECsUy9nvHArsMqd0ETnwfHGDOOe70B41A3I=;
	h=Date:From:To:Cc:Subject:From;
	b=ee2Kr9+QvHM9+5BZFiCiTMI4hVRtmc2p/G9uBAUL/sDrOTHxfXEswPFxCid3B+ALO
	 PBWq0qQ6dvvO63Me4ZHcoahJypIZ63AQih1O9Xv85jPiHQO/ebg3i/PqDrMDQ1Z1MZ
	 LmxmC+Pvy4gLDgvixugAIr0efJmmdmAFD1rcL0KTmQDchbQPnLb+z2G4T47vBn8Ss5
	 Jn8tUQ3eq0ucyAqvWele9bL9hRzgIZycyFLZ2a1RJGP7FkRr0CAq3uGCIfEEN9dyMF
	 TClTvfkbrZEEzfYfiONdbIKGkYS+z4aQfCjufyVKbwmQF++rwd/W+xvsM3/S+qYMeg
	 lwvlNwpf4opRA==
Date: Fri, 21 Mar 2025 21:41:55 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, Bruno Haible <bruno@clisp.org>
Cc: Alejandro Colomar <alx@kernel.org>
Subject: [PATCH v1] man/man3/strtoul.3: BUGS: Signed numbers are not rejected
Message-ID: <939641570ee1c36bfd2ef8788789b54357ed5971.1742589662.git.alx@kernel.org>
X-Mailer: git-send-email 2.47.2
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jcwcmewezb2lazsf"
Content-Disposition: inline


--jcwcmewezb2lazsf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, Bruno Haible <bruno@clisp.org>
Cc: Alejandro Colomar <alx@kernel.org>
Subject: [PATCH v1] man/man3/strtoul.3: BUGS: Signed numbers are not rejected
MIME-Version: 1.0

Reported-by: Bruno Haible <bruno@clisp.org>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

Hi Bruno,

This is one of the patches I will apply after your report.  Please
review.  Thanks!


Cheers,
Alex


 man/man3/strtoul.3 | 26 ++++++++++++++++++++++----
 1 file changed, 22 insertions(+), 4 deletions(-)

diff --git a/man/man3/strtoul.3 b/man/man3/strtoul.3
index 9eb260dae..62b9f65f6 100644
--- a/man/man3/strtoul.3
+++ b/man/man3/strtoul.3
@@ -204,11 +204,29 @@ .SH CAVEATS
 and then determine if an error occurred by checking whether
 .I errno
 has a nonzero value after the call.
-.P
-Negative values are considered valid input and are
-silently converted to the equivalent
-.I "unsigned long"
+.SH BUGS
+.SS Signed numbers
+Negative values
+are considered valid input and
+are silently converted to the equivalent
+.I unsigned long
 value.
+.P
+Users should reject signed numbers
+with a wrapper function.
+.IP
+.EX
+unsigned long
+strtoul_u(const char *restrict s, char **restrict endp, int base)
+{
+	while (isspace((unsigned char) *s))
+		s++;
+	if (!isxdigit((unsigned char) *s))
+		return 0;
+\&
+	return strtoul(s, endp, base);
+}
+.EE
 .SH EXAMPLES
 See the example on the
 .BR strtol (3)

Range-diff against v0:
-:  --------- > 1:  939641570 man/man3/strtoul.3: BUGS: Signed numbers are =
not rejected

base-commit: e921861a3d30cfc5f9263747a4e64a68e488288c
--=20
2.47.2


--jcwcmewezb2lazsf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfdzxMACgkQ64mZXMKQ
wqnZCxAAiyLK1dtE1HKKaP9978RuJPQ+izYRwJGsQCsYm7K5XZgczYi+X9Dk2kRe
mvjSdbTIqqCODvWbmTd1LOP21LLEF8XiY+ykn0C70k2icd/QNPnRc7wfUfZ1BWB6
u0XZm/LfuDYiaL1na+HrZ+z5zjlKFjY6uheJnCi51jsYCab3M2SMNYrLP4ohUjEj
MeHMGYLif6HYwF0PCT+oid1YU4Vjd8YeddXMndvv4YeA0zszcPI4QlSrdVY9cS/W
qYXFnvf4rLNy8KpTjjO28WeUXcb1EG1x+B2cHjjRI5IWymvnZ3xuNgVsSmSVzLjC
Ut1dQbBPBNBXMUbYKF7xOpuP22G4nSAQ4X+d23PyeLnwbtvPYc123WDRSaeVQiHi
kuvnmw8ZsfBjV06Jb5MNRWCo/quXVNhFrrX3Eh6OKIX8+SCOhISbEd3ny56AiVX5
I3QnQcbhTxp5/UACy7l5b2OjPthoMn7akAOIF3XkvndQOy1+NdnSTfD4QjXLylOb
I2APHjXLeQyJOn6/G+dYSrzWb1BuBApHe7QZLr2OTSH2rka3pTaaNWb/SLb0G5qK
muce9r2J1CQN6/NpQWhqxksvUKpNPGgEbgiKoXrzmfnIEY7KLvw9ZvbM0UgpQg0Z
lSLILBkS6KxvFoyKCA+g/6Y2nUdU3hKn6KPixuzguzOH17EuzDQ=
=WS3P
-----END PGP SIGNATURE-----

--jcwcmewezb2lazsf--

