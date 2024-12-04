Return-Path: <linux-man+bounces-2104-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 461509E4622
	for <lists+linux-man@lfdr.de>; Wed,  4 Dec 2024 21:53:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 746ECB3007F
	for <lists+linux-man@lfdr.de>; Wed,  4 Dec 2024 20:45:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7049218FC84;
	Wed,  4 Dec 2024 20:45:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="FsE2wPwi"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69CF417335C
	for <linux-man@vger.kernel.org>; Wed,  4 Dec 2024 20:45:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733345129; cv=none; b=YGM8fCmoj+EgweUcfLDdUK3WZGR8TDTtdN/tkogf30iCWo2GoHTjZvK0lOmXwcLnRMZd95NI+Gv2dK1wJ79b6D8wVQt7hl0gSKn7GWdY7CZv5zGFxTmirusCAKsMXV7lt6PddwMZUt5ggfGS5zKsb9tXIoG0nNtFe1JcbFqLD94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733345129; c=relaxed/simple;
	bh=vwBnPXj5fVIz//uQHc1jQiC5pFGB6uqOHjfQ1BLM+18=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eSCGkp1wszfGKjG5/6KqQqKtuakd4TQkidzvdVzg7h2h2+Wd7siLWIDnBj33vaLR+FbDdYvzS6/F1bKZkM8Q3mowNVbjT1C9XTSvfUtnn+GqNLCN4IyRyNb3rhnghmuj8wW/o0ZNmNTsezpTpuKFks4UeVP8sx6hipELxHRovW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=FsE2wPwi; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1733345125;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=U0sHT0PGjaEKVJURorF3v0clFPmfVCiISAIwrFRkk5Y=;
	b=FsE2wPwiioVrP3MBxq9eKhyxgFUOR3GixotlbeJ7JvdWq7sKYxVd1dvs9byOb8HSZCR9Yw
	58roPHu/7Wm17pVguvkOVf/LRIKJ6LjA9JyfawIImXi331LzFKx60QznAWKQ5aQEaX1qrc
	hcyUYBzovsr1PfJjiMAEPcMhZ/jeQDQ=
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-601-W6U22eONPSC0lnH0aorTtQ-1; Wed,
 04 Dec 2024 15:45:23 -0500
X-MC-Unique: W6U22eONPSC0lnH0aorTtQ-1
X-Mimecast-MFC-AGG-ID: W6U22eONPSC0lnH0aorTtQ
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A23DF1956054;
	Wed,  4 Dec 2024 20:45:22 +0000 (UTC)
Received: from localhost (unknown [10.22.65.96])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP id 239171956094;
	Wed,  4 Dec 2024 20:45:21 +0000 (UTC)
Date: Wed, 4 Dec 2024 17:45:20 -0300
From: "Luis Claudio R. Goncalves" <lgoncalv@redhat.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: tyberry@redhat.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v2] madvise: MADV_SOFT_OFFLINE requests can return -EBUSY
Message-ID: <Z1C_YFaKjO9_mp-N@uudg.org>
References: <Z0XzU9R9Kx0RoeUG@redhat.com>
 <20241128113548.zgq6qizi6ieid6fy@devuan>
 <Z0o1izFIKYzSrci-@uudg.org>
 <20241204203520.iu4mayydvyagjehg@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="pwJ7cH8a5rH3AeRp"
Content-Disposition: inline
In-Reply-To: <20241204203520.iu4mayydvyagjehg@devuan>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15


--pwJ7cH8a5rH3AeRp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 04, 2024 at 09:35:20PM +0100, Alejandro Colomar wrote:
> Hi Luis, Tyonnchie,
>=20
> On Fri, Nov 29, 2024 at 06:43:39PM -0300, Luis Claudio R. Goncalves wrote:
> > On Thu, Nov 28, 2024 at 12:35:48PM +0100, Alejandro Colomar wrote:
> > > Hi Tyonnchie,
> > >=20
> > > On Tue, Nov 26, 2024 at 11:12:03AM -0500, tyberry@redhat.com wrote:
> > > > If the page could not be offlined madvise will return -EBUSY. This =
might occur if the page is currently in use or locked.
> > >=20
> > > Could you show this in a small example program (if possible)?
> > > Like 30 lines or so.  If not, it's okay.
> >=20
> > Hi Alejandro!
> >=20
> > Given the ongoing holidays, let me take the liberty of giving some cont=
ext
> > in order to keep the conversation going.
> >=20
> > We received reports of failed LTP madvise11[1] tests. The errors looked
> > like this:
> >=20
> >     madvise11.c:409: TINFO: Spawning 4 threads, with a total of 640 mem=
ory pages
> >     madvise11.c:132: TFAIL: madvise failed: EBUSY (16)
> >     madvise11.c:163: TINFO: Thread  [0]  returned 16, failed.
> >     madvise11.c:191: TFAIL: thread  [0]  - exited with errors
> >     madvise11.c:163: TINFO: Thread  [2]  returned 0, succeeded.
> >     madvise11.c:163: TINFO: Thread  [3]  returned 0, succeeded.
> >     madvise11.c:163: TINFO: Thread  [1]  returned 0, succeeded.
> >     madvise11.c:361: TINFO: Restore 629 Soft-offlined pages
> >     madvise11.c:290: TWARN: write(3,0x7ffce114b8a0,8) failed: EBUSY (16)
> >=20
> > Clearly the problem had to do with -EBUSY being returned by a madvise()
> > operation. The bug was initially reported on kernels with PREEMPT_RT
> > enabled but we soon observed that the problem also happened with the st=
ock
> > kernel, though requiring more repetitions to trigger issue.
> >=20
> > After debug and investigation we observed that the -EBUSY return was a =
valid
> > case in the kernel code and was not being handled by the test. A fix was
> > sent to the LTP project by Li Wang[2], specifically for the madvise11 t=
est.
> >=20
> > In this process, we noticed that the man pages did not mention -EBUSY a=
s a
> > possible result of a failed offlining operation, as described by Tyonnc=
hie.
> >=20
> > I hope this helps!
>=20
> Thanks!  I've applied the patch, with some tweaks:
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/c=
ommit/?h=3Dcontrib&id=3D3205359a3a7079d9d40a50388e851874729a827a>
>=20
> I added an Acked-by on your behalf, Luis.

Thank you!

You have all my respect for the great work you and many others do
with the man pages!

Luis

> Have a lovely night!
> Alex
>=20
> >=20
> > Best regards,
> > Luis
> >=20
> > [1] https://github.com/linux-test-project/ltp/blob/master/testcases/ker=
nel/syscalls/madvise/madvise11.c
> > [2] https://lists.linux.it/pipermail/ltp/2024-May/038310.html
> >=20
> >=20
> > > Have a lovely day!
> > > Alex
> > >=20
> > > >=20
> > > > Signed-off-by: Tyonnchie Berry <tyberry@redhat.com>
> > > >=20
> > > > ---
> > > >=20
> > > > diff --git a/man/man2/madvise.2 b/man/man2/madvise.2
> > > > index 4f2210ee2..c10dcd599 100644
> > > > --- a/man/man2/madvise.2
> > > > +++ b/man/man2/madvise.2
> > > > @@ -702,6 +702,13 @@ The map exists, but the area maps something th=
at isn't a file.
> > > >  .BR MADV_COLLAPSE )
> > > >  Could not charge hugepage to cgroup: cgroup limit exceeded.
> > > >  .TP
> > > > +.B EBUSY
> > > > +(for
> > > > +.B MADV_SOFT_OFFLINE )
> > > > +If any pages within the add+length range could not be offlined,
> > > > +madvise will return -EBUSY.
> > > > +This might occur if the page is currently in use or locked.
> > > > +.TP
> > > >  .B EFAULT
> > > >  .I advice
> > > >  is
> > > >=20
> > >=20
> > > --=20
> > > <https://www.alejandro-colomar.es/>
> >=20
> >=20
> > ---end quoted text---
>=20
>=20
>=20
> --=20
> <https://www.alejandro-colomar.es/>


---end quoted text---

--pwJ7cH8a5rH3AeRp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEk1QGSZlyjTHUZNFA85SkI/jmfCYFAmdQv2AACgkQ85SkI/jm
fCZ9gg/+LfHH55hZNKNDbfK2h9UY81baOXCLEnbslOT2QiSR4ncLYHhhWRe2CvmZ
VO6f2+SNA6EJJOEcStEIS4bGsITbL+w7MsPpQXwTjGPT629/J4histqNhYZ9IT2x
PF6o+XmqYwFIIJwqyF8vRmnBerTa0X8vQ40EnT/xcWCRnLu/a3YjGXbV2P6k/CCw
L+Nb5xOnXP5I3Tua4FkWwnlQ145e8oLr+noamePmymVKc4SVqhLBKDOT6BswpMEh
o72RoW9RtmZsp7HxnXoRJ68kc+3+Aqu/xOW0s41lqBFryGMwe1b0X1j+4lxndpNL
oWsimPdaMFT3vqZy4sWkTayP8avcrE5sqTcPDQPkj3p2KxFi9D94Fek7O73mnz4r
IwG4DbdtJEQZWSqQDoaPlqYJoDXbQkCQdUq82dvxvNqKiB4L+TVMFD7jZC3WehHr
ipmiIAhEEYRBhB3yIWg4Flo8vBAhPwrxbg0wtT5qCqOQcBFNAYNRgAcLQKqNvH6+
iWNZFRRGXYrmF+KFHeAwBpvMYgMbIhr5WAAYogqknKt3vJQx9SA0rpebxiIzpCzd
y8FjsIRJ6ASt1SFl2yu70x63hyF0vJ7t5MYhJD+r/ICL/LfufFZZu1Lz5jFo0kMB
iIgqudpe6YzKNe04jiI0wwC5fmTE6DwnYrshv+VE4qM3eWedrhI=
=ureD
-----END PGP SIGNATURE-----

--pwJ7cH8a5rH3AeRp--


