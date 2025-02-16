Return-Path: <linux-man+bounces-2457-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 19214A37713
	for <lists+linux-man@lfdr.de>; Sun, 16 Feb 2025 20:09:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 37A483A94E1
	for <lists+linux-man@lfdr.de>; Sun, 16 Feb 2025 19:08:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D412419D88F;
	Sun, 16 Feb 2025 19:08:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=uddeborg.se header.i=@uddeborg.se header.b="EChy4rha"
X-Original-To: linux-man@vger.kernel.org
Received: from mimmi.uddeborg.se (mimmi.uddeborg.se [62.65.125.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A5219ABC2
	for <linux-man@vger.kernel.org>; Sun, 16 Feb 2025 19:08:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=62.65.125.225
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739732939; cv=none; b=q0cN2VnIkoxW7ilBSEzOsValtw2enKT59axTCoZK6xAMPf2Z3uFpWbPQqz36x4G5hePVR5wbBfUfSoVCz+rVUj69MoJY3ivohzzfVkn/lHIRN2h+DM6pECzqsF9HGyK5AVlFbwrQntKnJAGdXqu1KPbVxKDb9JDeRK2UxFhinRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739732939; c=relaxed/simple;
	bh=uJLNYwesG9t0+y6RKlqMT6qJ3S+BPdOTZ4g/Zliat1c=;
	h=Message-ID:Date:From:To:Cc:Subject:MIME-Version:Content-Type; b=ey5SKAHkzqEpiCy8FffJ4/JgnTKiDjFz/SiVpkeVkML/jfUgGbd2dDoD7RJn4gnSud/rCyoQWVMasKz7mTpMa8ASJ+ciecjoRgVUJVxAZBJwWDk3tEIAiLpYMRRjlq2IIc7ICRf6DZ0DSX0jMV54DTD3ftySl0z6+qDDJBG41FI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=uddeborg.se; spf=pass smtp.mailfrom=uddeborg.se; dkim=pass (1024-bit key) header.d=uddeborg.se header.i=@uddeborg.se header.b=EChy4rha; arc=none smtp.client-ip=62.65.125.225
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=uddeborg.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=uddeborg.se
Received: from mimmi.uddeborg (localhost [127.0.0.1])
	by mimmi.uddeborg.se (8.17.1/8.17.1) with ESMTPS id 51GIxoRa3896988
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Sun, 16 Feb 2025 19:59:51 +0100
DKIM-Filter: OpenDKIM Filter v2.11.0 mimmi.uddeborg.se 51GIxoRa3896988
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uddeborg.se;
	s=default; t=1739732391; r=y;
	bh=wmxa8BJvzB4JOXRrPuIPhNBrNlYinR8gGknFtPYySac=;
	h=Date:From:To:Cc:Subject:From;
	b=EChy4rhab8Q/LE0wf0kbQoYd7KcGQV1BbtHFEbx2Dys/vCIlWJh2h49c2C4o1fj89
	 lrQhW6LX+TjZXFE9V1KRAxaY3mNDvPMQM3YUM5+BOnCV28KoWe8+kdfFq29mMwanup
	 trcORuAYoZqSt3Oc9fQIWqaPZQxdYM4cfbGWYzp0=
Received: (from goeran@localhost)
	by mimmi.uddeborg (8.17.1/8.17.1/Submit) id 51GIxoiI3896987;
	Sun, 16 Feb 2025 19:59:50 +0100
Message-ID: <26546.13734.573762.288144@gargle.gargle.HOWL>
Date: Sun, 16 Feb 2025 19:59:50 +0100
From: =?UTF-8?q?G=C3=B6ran=20Uddeborg?= <goeran@uddeborg.se>
To: Alejandro Colomar <alx@kernel.org>
Cc: <linux-man@vger.kernel.org>
Subject: [PATCH] man/man7/mount_namespaces.7: Fix an incorrect path in an
 example
X-Face: Y!dkPRvB0]![*xB\M-!MfkgZ"n-BHD$BA(TZCt2r%n^o6|o1dWGQnY1<Y4}|@3?LNnN])Lp
	SKhC?f4OE*BqS>T)l5dc&vd#fDAE#]Dk;{]D@+o+?X(RqRh{#-D^87?5uml$Phvma*@_~1OS(i`D.v
	&0;f<h{bI;v5]m?&\Qh06/0CP6O$1MkZJR_~XTYm~cAwU($ioR86{'%h
Face: 	iVBORw0KGgoAAAANSUhEUgAAADAAAAAwBAMAAAClLOS0AAAAKlBMVEUkIEVaTSwADXunZTaDcoNz
	SS8bJn4cQcTi2rrjx3JYLCkhM6DXlXwkGQn7wQfSAAACXUlEQVQ4jW3TP2sbMRQA8HRt6CCCFtOC
	yeAh0KGoN7iom0uGdDmElpvcEDIYMucLFHo3O6WnVosIWgS3dPFw49nYIhqaocuBvkufzr6zz/Rh
	L/ohvz9+OjnfxjV8yxCL+22cnLcxup0qvLm6P4LR1JgBYpv0CK5fFs94ghjfPPVhWngfa4aeH5c9
	GL7y3vP4jBfYTg7gFsF5fRYxGumxXO/h5o2vDScVFSJiIu9ghIpacUKtSNO5tptvLXypfY0ZsSJP
	0+zD2H1tATIbzogLkM5fz+XlDiCzagDO0yyu7A6GDcB5A+mKfP4/fEeTdQe1biDkSOdocnkALFQb
	7mTy3WSfvNaEEOqczQE+HQImHOoCzFPxfrno+qhxbGAmUcJcDtA2+NYbhAde0USzygo+aWHojYq9
	/5snpqZUxFfddL0xhS90vlL1gIrIHdwo6sLoXEJ6IuJ2JCFHCL4RFYxYcNJWdQeAYwwQmhekm+5d
	YTCHPvIMIBOVaGFmwt/BHzcAqRCrcQsXcIORRFMh4cfknK5bMFtgdDUGyLqqhsYgHhmjjWNW2ixr
	qxopozhPIJGIqLR51nWuB4Zz+EAS5oTN95A0fcChrJy0PzqYFQYhHRalonZ+szjYdoUG0D5UTO1D
	7xkoFBfeMCukXfbgRcy5pi7AUw9mMeLNMkrXhwuEQDixzv3qwUihMGBo5AggOwoXApQ9gEYwg2WU
	9BiMwvCoHKEP5aIHsFuhLgZQLg6h8ApxFMPcf5+c7gHmAQ8X8kD+n/5P2QIs0ACWTiEGzYuP/rTc
	ATwpFLLjBgRcKf8B/C7q8i6VUCAAAAAASUVORK5CYII=
X-URL: http://www.uddeborg.se/g%C3%B6ran/
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="pgp+signed+R2qDbsn3bAxS5DI";
	micalg=pgp-sha256; protocol="application/pgp-signature"

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--pgp+signed+R2qDbsn3bAxS5DI
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

In the example showing how locked mounts in a less privileged mount
namespace can not be split, first /etc/shadow is bind mounted, then an
attempt is done to unmount /mnt/dir, which gives an error complaining
that /etc/shadow is not mounted. The unmount should also refer to
/etc/shadow.

Signed-off-by: G=F6ran Uddeborg <goeran@uddeborg.se>
---
 man/man7/mount_namespaces.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man7/mount_namespaces.7 b/man/man7/mount_namespaces.7
index a1645e9e2..0e1223f99 100644
--- a/man/man7/mount_namespaces.7
+++ b/man/man7/mount_namespaces.7
@@ -1128,7 +1128,7 @@ .SS Restrictions on mount namespaces
 .EX
 # \fBunshare \-\-user \-\-map\-root\-user \-\-mount \[rs]\fP
                \fBstrace \-o /tmp/log \[rs]\fP
-               \fBumount /mnt/dir\fP
+               \fBumount /etc/shadow\fP
 umount: /etc/shadow: not mounted.
 # \fBgrep \[aq]\[ha]umount\[aq] /tmp/log\fP
 umount2("/etc/shadow", 0)     =3D \-1 EINVAL (Invalid argument)
--=20
2.40.1

--pgp+signed+R2qDbsn3bAxS5DI
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCAAxFiEEJXWOOl7XuTHeSlAwo7264H1HV+sFAmeyNVITHGdvZXJhbkB1
ZGRlYm9yZy5zZQAKCRCjvbrgfUdX6xQ8D/4xSEhtthPqeEVWuMeTb1hi/Eo980dF
TKGQIQtKML8glBvSeHGrOfXwh/0todBYAoNTwfHnIs8EVKJ4oaX4tWT6s2L55/Gn
fTJ/4ROMYjERhQMhYmP8e474Yc1YeIK3GLmSSN3yoJ3nGK+94+iBY8UeyvipkPtE
R1G73B3EQJJMgVpwJdxvbIkNd62A0WLjTWrtInKTC7ToeINzymlJPoCnriw7Y/zI
MWT/IUZu7tVG4ZhS26BpTJ9YaZAFUME8JpzhWfDd+ZPUoB12AGLT9kk370kp8hhk
S3EKEB0DcooQEO4OFtFe16pWNdc2xUYPzfA0zAIxTXJg6EV1UBrS5w8PVJboo5+a
jEnDOyWcXYVTi15njgDxczUpuzpdWWbQRAMysFhmsS0NXd9qm9i4LIG9/n9HSVSS
7BA8ib+JmTr3PlndfnBbzKSChbwLwMYMYwYZ13jUNw/iHFzsw4p3SYsjol/rAlhQ
Kvk+7AZEG3ie1q3IcC52S6CoPobq6NqkCPOjk2jWRA1FkbaR9DpU9bvXl1XYa68d
A3VXSqjGpXeWSnFHOUMhVcvpja+CmLlmctkJcnTvTGprh5YwKwVd/2NgFd0YYKL6
yr/R/ZDQxfdkfhLxVCwxogv1ZxmO/MjMvk9FSwNNH7/GZAQX8/p7RiczlGzH6YHy
AztfEhtwQsGZ0w==
=vQ8z
-----END PGP SIGNATURE-----

--pgp+signed+R2qDbsn3bAxS5DI--

