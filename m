Return-Path: <linux-man+bounces-2088-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F199DED00
	for <lists+linux-man@lfdr.de>; Fri, 29 Nov 2024 22:43:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 31044163136
	for <lists+linux-man@lfdr.de>; Fri, 29 Nov 2024 21:43:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D154C1A38C2;
	Fri, 29 Nov 2024 21:43:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="NPpzS5F8"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DBC71A4F01
	for <linux-man@vger.kernel.org>; Fri, 29 Nov 2024 21:43:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732916627; cv=none; b=TLwhNRTix0+33o7F2U8iUuunxkKWhLMOVayFCAHD0Kup3+wZS3nphbJpY7zs2jA2a1yPWxrNNmcio0MFtZU0a7FJ+9fu2t3b8m4z3+CrpGQYhQhurpGau79iugu2SG7Ayevu+MnaGbA1CDQHKZWZFlvhkxCGDuoz0Ii2YlAWDk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732916627; c=relaxed/simple;
	bh=UfElSKd59OzVahhQ6ewKmZbnX+Wi2JazRoS4ScZ0WzE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KrmS9V5qzzw405W2Rr8CgKFEg31rN2XSS7/FwKkW6olMThdpP43XMqEpCL5EM1bMb/zUm3/yN4iHOat6IPkYBXpB7axbukSJWqNweaSxgsDHljJAS9nBgdCI0d+CrgE9a4s2gLjndCKzXCOkt9HDHDSjTS33BGqSxOOIo4lXz1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=NPpzS5F8; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1732916624;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=mZMpyoD+qotZmsHCa+rIVMGTEUEltQv5/dYslarZaQE=;
	b=NPpzS5F889GrEJwj1iNhycHY5ba6d3SwEkMrgbU0Odd7K8JX4tIw6Vu5DwM4aiHdobUlJH
	BPvRorxh+TTdDgPNDNUlpKcjg4TNPCtwpWwpH+kYToMVk5PZQAd4L2LkBD0HwnUfhe6j2l
	Gx3FRU/A02ioZNKMzAKcCBYP7hCsm0g=
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-621-M9yc2IPAP-O6mWrS5wBnMQ-1; Fri,
 29 Nov 2024 16:43:42 -0500
X-MC-Unique: M9yc2IPAP-O6mWrS5wBnMQ-1
X-Mimecast-MFC-AGG-ID: M9yc2IPAP-O6mWrS5wBnMQ
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A49D919560A2;
	Fri, 29 Nov 2024 21:43:41 +0000 (UTC)
Received: from localhost (unknown [10.22.64.104])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id 1CDB51955D45;
	Fri, 29 Nov 2024 21:43:40 +0000 (UTC)
Date: Fri, 29 Nov 2024 18:43:39 -0300
From: "Luis Claudio R. Goncalves" <lgoncalv@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: tyberry@redhat.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v2] madvise: MADV_SOFT_OFFLINE requests can return -EBUSY
Message-ID: <Z0o1izFIKYzSrci-@uudg.org>
References: <Z0XzU9R9Kx0RoeUG@redhat.com>
 <20241128113548.zgq6qizi6ieid6fy@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="F39ehkEAS9bpmvU9"
Content-Disposition: inline
In-Reply-To: <20241128113548.zgq6qizi6ieid6fy@devuan>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12


--F39ehkEAS9bpmvU9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 28, 2024 at 12:35:48PM +0100, Alejandro Colomar wrote:
> Hi Tyonnchie,
>=20
> On Tue, Nov 26, 2024 at 11:12:03AM -0500, tyberry@redhat.com wrote:
> > If the page could not be offlined madvise will return -EBUSY. This migh=
t occur if the page is currently in use or locked.
>=20
> Could you show this in a small example program (if possible)?
> Like 30 lines or so.  If not, it's okay.

Hi Alejandro!

Given the ongoing holidays, let me take the liberty of giving some context
in order to keep the conversation going.

We received reports of failed LTP madvise11[1] tests. The errors looked
like this:

    madvise11.c:409: TINFO: Spawning 4 threads, with a total of 640 memory =
pages
    madvise11.c:132: TFAIL: madvise failed: EBUSY (16)
    madvise11.c:163: TINFO: Thread  [0]  returned 16, failed.
    madvise11.c:191: TFAIL: thread  [0]  - exited with errors
    madvise11.c:163: TINFO: Thread  [2]  returned 0, succeeded.
    madvise11.c:163: TINFO: Thread  [3]  returned 0, succeeded.
    madvise11.c:163: TINFO: Thread  [1]  returned 0, succeeded.
    madvise11.c:361: TINFO: Restore 629 Soft-offlined pages
    madvise11.c:290: TWARN: write(3,0x7ffce114b8a0,8) failed: EBUSY (16)

Clearly the problem had to do with -EBUSY being returned by a madvise()
operation. The bug was initially reported on kernels with PREEMPT_RT
enabled but we soon observed that the problem also happened with the stock
kernel, though requiring more repetitions to trigger issue.

After debug and investigation we observed that the -EBUSY return was a valid
case in the kernel code and was not being handled by the test. A fix was
sent to the LTP project by Li Wang[2], specifically for the madvise11 test.

In this process, we noticed that the man pages did not mention -EBUSY as a
possible result of a failed offlining operation, as described by Tyonnchie.

I hope this helps!

Best regards,
Luis

[1] https://github.com/linux-test-project/ltp/blob/master/testcases/kernel/=
syscalls/madvise/madvise11.c
[2] https://lists.linux.it/pipermail/ltp/2024-May/038310.html


> Have a lovely day!
> Alex
>=20
> >=20
> > Signed-off-by: Tyonnchie Berry <tyberry@redhat.com>
> >=20
> > ---
> >=20
> > diff --git a/man/man2/madvise.2 b/man/man2/madvise.2
> > index 4f2210ee2..c10dcd599 100644
> > --- a/man/man2/madvise.2
> > +++ b/man/man2/madvise.2
> > @@ -702,6 +702,13 @@ The map exists, but the area maps something that i=
sn't a file.
> >  .BR MADV_COLLAPSE )
> >  Could not charge hugepage to cgroup: cgroup limit exceeded.
> >  .TP
> > +.B EBUSY
> > +(for
> > +.B MADV_SOFT_OFFLINE )
> > +If any pages within the add+length range could not be offlined,
> > +madvise will return -EBUSY.
> > +This might occur if the page is currently in use or locked.
> > +.TP
> >  .B EFAULT
> >  .I advice
> >  is
> >=20
>=20
> --=20
> <https://www.alejandro-colomar.es/>


---end quoted text---

--F39ehkEAS9bpmvU9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEk1QGSZlyjTHUZNFA85SkI/jmfCYFAmdKNYsACgkQ85SkI/jm
fCaaSxAAqpzCKZ+jABeuY2YD/hI/de4EbgGadtjyCEvVFgyYZgSKf94ONdJPnW0S
V0hclP2c6KkoOcbyswgLVut3Gl9MAMsAw1eitZZJpiY2xonHdpRHea17Fi6JvZe0
Hc8Cc9lAcrEnu1lZpNlTBXg6ZF65fpPwaVpSznKbCsuuNXuwl0+BdPPLUko4V4wa
ulQitovuj/yEK/JEdRYyoGSPoNwug+MCpY6qP4f8T17BQNDqW6B+q0cPvvYtuMSR
pdfiD01yRVQ1Ydk640uwOc1MWxx0NE+2FntoAKQOEKbQ7VsI8PFfC2jRU3u7vlHn
YC0wHGWkPpNPDWABoGD8CwTQP0z7l/Y92R4ql3ElqSL5nQPwBuUZ6KQ6sCDJeVLw
zwk3S9/7UMDBS257teti/BAbKKM+eF+Zy5YXApLT+unX78vb+N7bC3IdGArxF3+q
rlmws/7bp8+F92ACHBSuEBd4N7EXrxICk6tjiyMAWf6u6Q2SJoSGvB0CpmclNbBi
K7LtO5zjVpC/sGH8/zONbnfqD5I/cPdo7Ygsp21iqKdwytNNkVBSpqzwk5JTMCE/
vWxaHFHZ2LcC2bkfAhNP/DRKvSlTft4RQ3KUw0Q+E42RE4xP4PiQy3zVYGAwLo1Z
ypjPaqmLvuTzJNphFZw5c38JmyH106qwK685O8aup05Cb8kDxec=
=5H7y
-----END PGP SIGNATURE-----

--F39ehkEAS9bpmvU9--


