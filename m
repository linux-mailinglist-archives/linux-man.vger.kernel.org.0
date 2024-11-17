Return-Path: <linux-man+bounces-1997-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DA0B69D03CF
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 13:31:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A0E95287864
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 12:31:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B62318C33B;
	Sun, 17 Nov 2024 12:30:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="NggfHbcD"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FBB9148FF9
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 12:30:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731846638; cv=none; b=VoQ5mvjEjAskiCpyN1oR0bQVFlSRFBE2SrZnSWxdu9FZR3hC5mjbF4hSE7NVMKbi2Zp6wvX2jo2Mg3Ut1Ldzy0p/vT9GdBr8hrizFea6hSVxtE9RK/hzTOqSTeeZVqpqgPI7xHlGfC4k/7+s3vP2KYpVn2f80QA5IlagHGB5a58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731846638; c=relaxed/simple;
	bh=dQBn254dh74Czb7jimnAuNfsPlkEaLRSVeVI2QQhGkM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:Mime-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DiBrlnVryN/eVgVn9wG2ToZbbt2jd+xS/+s+56+kvmAblmFE4rPOm4JvIuUfN4yri9pWomnE56ZLrpgccuYPf1JQq0gBbxxumBERWJ+h7dJQ7rV91ZIQVwXmQqqNbKocBe/cfzHJB3fvQdeJXYhIpVqzvhvHgchgAMII40pyIlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=NggfHbcD; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731846634;
	bh=gXGSxVsFyhBUUy+t2IaOoKkq6kMc43oXgVmtOkvcRPw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=NggfHbcDfUGteFfIp6wj7s7n5W9Lgse0sUKN/YlyWW1g3eRFWAL5+pSMHajZSONuH
	 142jWUumbRKSSMT1i0qsP/x+sMyJp4pyDDVi4OeV2kq615HbdomBv+XFSLMXOyIfpS
	 w6yug7sBKdY1EF/9RUoB45WJN/OrTttCPKwcJ6dGyPcwc4KnIoWtobWDuhoXKPnQU0
	 XrUnH6wSscK280LnIVL7KUDMhKzIvWZdAFnkEnpU9fdKCcbNam+fYLdmto0P6DRMEU
	 tWU/r/GKckBwzKaCMkGcNHvZAnOURqi1lYlbfwB1k49GguFf7Yqi0wmTiRKLsq8sDO
	 SrqEIW0fLjq1Q==
Original-Subject: Re: Issue in man page pthread_attr_setschedpolicy.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 00000000000200E3.000000006739E1EA.003FD570; Sun, 17 Nov 2024 12:30:34 +0000
Date: Sun, 17 Nov 2024 12:30:34 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: Alejandro Colomar <alx@kernel.org>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page pthread_attr_setschedpolicy.3
Message-ID: <Zznh6miM2ROCvd5G@meinfjell.helgefjelltest.de>
References: <ZznJfpN_LuCf-ERy@meinfjell.helgefjelltest.de>
 <6teowwb5747ra73s6kt4egc44obtwtmuilcrmxuf4n5p2ruusv@uuuf5gsdf3cw>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256; protocol="application/pgp-signature"; boundary="=_meinfjell-4183408-1731846634-0001-2"
Content-Disposition: inline
In-Reply-To: <6teowwb5747ra73s6kt4egc44obtwtmuilcrmxuf4n5p2ruusv@uuuf5gsdf3cw>
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

This is a MIME-formatted message.  If you see this text it means that your
E-mail software does not support MIME-formatted messages.

--=_meinfjell-4183408-1731846634-0001-2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Alejandro,
Am Sun, Nov 17, 2024 at 12:26:16PM +0100 schrieb Alejandro Colomar:
> On Sun, Nov 17, 2024 at 10:46:22AM GMT, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    inherit-scheduler =E2=86=92 inherit scheduler
> >=20
> > "In order for the policy setting made by B<pthread_attr_setschedpolicy>=
()  to "
> > "have effect when calling B<pthread_create>(3), the caller must use "
> > "B<pthread_attr_setinheritsched>(3)  to set the inherit-scheduler attri=
bute "
> > "of the attributes object I<attr> to B<PTHREAD_EXPLICIT_SCHED>."
>=20
> I think that text is ok.  Can you please clarify why you think the -
> should be replaced by a space?

Is "inherit scheduler" a name? Then it is ok.

I assume the reporting translator read it as intrinsic attribute of
the schedule, then the space would be correct, in my (non native)
humble opintion.

Thanks for clarifying

Greetings

            Helge

--=20
      Dr. Helge Kreutzmann                     debian@helgefjell.de
           Dipl.-Phys.                   http://www.helgefjell.de/debian.php
        64bit GNU powered                     gpg signed mail preferred
           Help keep free software "libre": http://www.ffii.de/

--=_meinfjell-4183408-1731846634-0001-2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEbZZfteMW0gNUynuwQbqlJmgq5nAFAmc54ecACgkQQbqlJmgq
5nCbiBAAgponCYPHDbSXI3jnr7VZcafVWOClzrAejiOd5OlYrE3HgBBKy9LLezh1
fPu+zo5MsbuhHfAGYVn6ejk7Q4CovaCMW7xPR9x6UuPwrBXGDba6bejNt7gL0lr+
pKdtSHm/vCRBIFqauMexwa+s5mo83rywGQ/Dm3pN2IZ+KoHuSBxTwK3cShkvgdXQ
p7zpXSMxFPtSJnVFwiFgfT/NpMz01WgHvEeCuRE4/M7uNRuAaztVqh8BVAC9Etrf
Zaea7eA0pZA/s34Mh8S/zpPnqWgvBkzSwAJVI2Y4SVCTvxOaJhVoJknPvpJv03Bb
puIGNde84XwCF+3rnQSMYOP/sy2voYklaR5SK2Qnjb55acGLnezy070bq8ilurPd
CrkxnROjUC1eodJSHI9Bnb+/eZshCRMC433YAqQY0DTcQNt+m6uuqovJ1MMvgYmI
8s0cqcte2XUHIhy7ZDgkJFefLrfVyyyo3+ONUyIUD/Y6aeWZVP+nUpn32VDVxwOE
cFauNn0W3LD8BfpctM576ZLtoZGzXGKLnop0jOWCW3sABacX/1DAYFE078GuCpIw
jopDH38iWaBa0OJLdkz2VFq3pebkT2W19bqqCR9oc9Ri94iSoez9RBCXehdIHvYJ
eTUNIykpK+mFdL8tF5Ws9HuZoT7ys82v//GxTB5G/hf7luOVcBI=
=nrda
-----END PGP SIGNATURE-----

--=_meinfjell-4183408-1731846634-0001-2--

