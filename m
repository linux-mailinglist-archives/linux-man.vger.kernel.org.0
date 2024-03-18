Return-Path: <linux-man+bounces-667-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EF1E587F0A3
	for <lists+linux-man@lfdr.de>; Mon, 18 Mar 2024 20:57:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2B3041C20C73
	for <lists+linux-man@lfdr.de>; Mon, 18 Mar 2024 19:57:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E6D456B77;
	Mon, 18 Mar 2024 19:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="HbjS8e9S"
X-Original-To: linux-man@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63CAD219F6
	for <linux-man@vger.kernel.org>; Mon, 18 Mar 2024 19:57:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710791841; cv=none; b=AJ2u7cEjPtv74m/bwc7v5kXeZOKtN2v9DJ29fFWCBMNNua7WQFJoatoFHunUnaU4Vumox8NwS/HCvMHn/EGc11fMw0FHDHMXK02aN4fteWvCntlyDDj1QN65NZVrPL80t48szI9Ru+xim80so9JwSCx9wAUV/T1VDs35lkRzG28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710791841; c=relaxed/simple;
	bh=SFAD52rxMnb/8qDTV0rmbsrkYjNOXBFREriZJk7N5gA=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:From:To:Cc:
	 References:In-Reply-To; b=bBaKL3OT54Mg7p5uaBfRl4egBnT2IP5ND3m2Nw2zLdyK7VHArNdjVv23KUFaRRV/5VVkT9m9CWdVcUExgWjxVmSlOnnQnTmjRPautXVy6Q8tvntzxE2a0Ee3zzsJ/JRSxiK/XHrw6H591mQGgXVcOH9QciwTnFb4GtkdQCRdQxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=HbjS8e9S; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 0DFE540C58;
	Mon, 18 Mar 2024 20:57:18 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
	by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u_Py-59ZXa9N; Mon, 18 Mar 2024 20:57:17 +0100 (CET)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1710791837; bh=SFAD52rxMnb/8qDTV0rmbsrkYjNOXBFREriZJk7N5gA=;
	h=Date:Subject:From:To:Cc:References:In-Reply-To;
	b=HbjS8e9S47LX8nVUt+FPxXnFCsuuEcX7eUNBtC6JOJol7zA2YMaNIwIcZZmNPH9GP
	 ThOt88iM/6B9JYCR4nhtro4UbDeLlXyvl3gGy1AzV273HPraWfihsqTydlgpePzjFI
	 Q+T3h1uQV8WHp3cj+iHzMVrZSwJvfrANKn6MbtnNrQKYkwmCFgrrTvrIJWhcWBRwSg
	 0YRZ0bsGEA+W+iJwIP/KxwIxEKgRJP62OwT2Jayrn3t79hIl/DT/73Uc7o4d8eV1VS
	 kaeGx2A4fl+Y8ihxAW2yBCIoHwmsIF0tDL1PxxL3+zMGv5ltk1HnFzyqE/1DFzv7ry
	 1YpQAF2b54K6Q==
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 19 Mar 2024 08:57:07 +1300
Message-Id: <CZX537Q8308O.YVDA7PY3E2H2@disroot.org>
Subject: Re: [PATCH v2 3/6] intro.1: Explain the meaning of a directory
From: "Jeremy Baxter" <jtbx@disroot.org>
To: "Alejandro Colomar" <alx@kernel.org>
Cc: <linux-man@vger.kernel.org>
References: <20240317080850.28564-3-jtbx@disroot.org>
 <20240317080850.28564-6-jtbx@disroot.org> <ZfcGub2EdBC20dCI@debian>
In-Reply-To: <ZfcGub2EdBC20dCI@debian>

On Mon Mar 18, 2024 at 4:05 AM NZDT, Alejandro Colomar wrote:
> On Sun, Mar 17, 2024 at 09:08:31PM +1300, Jeremy Baxter wrote:
> > ---
> >  man1/intro.1 | 3 +++
> >  1 file changed, 3 insertions(+)
> >=20
> > diff --git a/man1/intro.1 b/man1/intro.1
> > index 090678750..f0a8d98e0 100644
> > --- a/man1/intro.1
> > +++ b/man1/intro.1
> > @@ -180,6 +180,9 @@ The command
> >  In this example, we use it to find Maja's telephone number.
> >  .SS Pathnames and the current directory
> >  Files live in a large tree, called the file hierarchy.
> > +In this hierarchy, there are many
> > +.IR directories ;
> > +a directory is simply a file that can hold other files as opposed to t=
ext.
>
> This might confuse more than it helps.  What does "hold" mean?  Does the
> directory hold the file data?  As in a .tar archive?  No.
>
> In any case, this subsection doesn't seem to treat how directories are
> represented in the filesystem, but rather how they are presented to the
> user in path names.

What do you think about this?

  In this hierarchy, there are many
  .IR directories ;
  a directory is simple a file that contains other files,
  rather than text.
  For example, if we have a file called
  .I tel
  in the directory
  .IR /home/aeb ,
  we can refer to it by the pathname
  .IR /home/aeb/tel .

I think this section is still important because previously there was
no explanation for this, and most people are accustomed to using the
word "folder".

 ~Jeremy

> >  Each file has a
> >  .I "pathname"
> >  describing the location of the file from the root of the tree
> > --=20
> > 2.44.0
> >=20
> >=20

