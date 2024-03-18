Return-Path: <linux-man+bounces-670-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 49DB387F319
	for <lists+linux-man@lfdr.de>; Mon, 18 Mar 2024 23:28:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 03D692811E8
	for <lists+linux-man@lfdr.de>; Mon, 18 Mar 2024 22:28:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C03C659B77;
	Mon, 18 Mar 2024 22:28:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="TJfLLx0J"
X-Original-To: linux-man@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87A0C59B6A
	for <linux-man@vger.kernel.org>; Mon, 18 Mar 2024 22:28:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710800902; cv=none; b=i6UX/4p5pk9vyoANTWFqG0CzLmfKu0FBhvPnXpv+wpS2h28hoz58WqCJGdfIVAx4kh7Jy2zBk4CEgSNhjnWvsFHrG2Ft+g98Xbczo9UucvzIMXIrKuEOa/b36H7T+3iPP3avDgG/NTw29j+tzZi3zNVfL7QPMTcCCyBBX3Y5lyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710800902; c=relaxed/simple;
	bh=naiMPopuxtZi37GHqSM4K+szehdFRJQU30wGRoyr5Aw=;
	h=Mime-Version:Content-Type:Date:Message-Id:To:Cc:Subject:From:
	 References:In-Reply-To; b=sHRrBSKNhYKh9MEIXmQTKvQW3geUa5I+E5lZ7AAqc2ahlS6RD2hneu0hDTT0LlHOVMOEHi9a4i2RpYu+FLCOBBwtpNQv3bm3O9LDG5l/5KZOKbuxHjOh46Adka+Ivfa/kTanNXIVfLenk0qQG9/cza9KeJ2KYYwGYa5PD2JJcuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=TJfLLx0J; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 7D79841A63;
	Mon, 18 Mar 2024 23:28:16 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
	by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VmWQVnI8C_zW; Mon, 18 Mar 2024 23:28:14 +0100 (CET)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1710800894; bh=naiMPopuxtZi37GHqSM4K+szehdFRJQU30wGRoyr5Aw=;
	h=Date:To:Cc:Subject:From:References:In-Reply-To;
	b=TJfLLx0JbgWDKrDvRlJNA8VXq+zFpfV/joe0vxAZXF9i+gtj+7kaTVdFJwMoJeDuA
	 +haqmsS4tgEV7J9MhD+kXV6cQfZ/7/z7huYnY3TwaYf/6JM3y/AnkqbRCU41BlubZb
	 RsXAKH0kD73+db8bsjMMS0XjTUfICzJE/iJpNJr+ESK+3UGfpADb1euZfWzfLPvA1K
	 8SpJ6L1QQAe1Q//8O+uPAIrCrqC3vTcsJQgAH4B0lbfLXDmW2Oc6zYSfovyWLR36Ez
	 wNi2iyFcqeGhh49vdH2G3wKsovFuOUoe8z036J86LXudG4UEgiaSVrNt6Q39olUdcY
	 wtdLv1DqvQ1sw==
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 19 Mar 2024 11:28:06 +1300
Message-Id: <CZX8ATF70UDL.2J0Q6LBQUWCKN@disroot.org>
To: "Alejandro Colomar" <alx@kernel.org>
Cc: <linux-man@vger.kernel.org>
Subject: Re: [PATCH v2 3/6] intro.1: Explain the meaning of a directory
From: "Jeremy Baxter" <jtbx@disroot.org>
References: <20240317080850.28564-3-jtbx@disroot.org>
 <20240317080850.28564-6-jtbx@disroot.org> <ZfcGub2EdBC20dCI@debian>
 <CZX537Q8308O.YVDA7PY3E2H2@disroot.org> <Zfi447ghGCfLC_Kk@debian>
In-Reply-To: <Zfi447ghGCfLC_Kk@debian>

Hi Alex,

On Tue Mar 19, 2024 at 10:57 AM NZDT, Alejandro Colomar wrote:
> Hi Jeremy,
>
> On Tue, Mar 19, 2024 at 08:57:07AM +1300, Jeremy Baxter wrote:
> > On Mon Mar 18, 2024 at 4:05 AM NZDT, Alejandro Colomar wrote:
> > > On Sun, Mar 17, 2024 at 09:08:31PM +1300, Jeremy Baxter wrote:
> > > > ---
> > > >  man1/intro.1 | 3 +++
> > > >  1 file changed, 3 insertions(+)
> > > >=20
> > > > diff --git a/man1/intro.1 b/man1/intro.1
> > > > index 090678750..f0a8d98e0 100644
> > > > --- a/man1/intro.1
> > > > +++ b/man1/intro.1
> > > > @@ -180,6 +180,9 @@ The command
> > > >  In this example, we use it to find Maja's telephone number.
> > > >  .SS Pathnames and the current directory
> > > >  Files live in a large tree, called the file hierarchy.
> > > > +In this hierarchy, there are many
> > > > +.IR directories ;
> > > > +a directory is simply a file that can hold other files as opposed =
to text.
> > >
> > > This might confuse more than it helps.  What does "hold" mean?  Does =
the
> > > directory hold the file data?  As in a .tar archive?  No.
> > >
> > > In any case, this subsection doesn't seem to treat how directories ar=
e
> > > represented in the filesystem, but rather how they are presented to t=
he
> > > user in path names.
> >=20
> > What do you think about this?
> >=20
> >   In this hierarchy, there are many
> >   .IR directories ;
> >   a directory is simple a file that contains other files,
> >   rather than text.
> >   For example, if we have a file called
> >   .I tel
> >   in the directory
> >   .IR /home/aeb ,
> >   we can refer to it by the pathname
> >   .IR /home/aeb/tel .
> >=20
> > I think this section is still important because previously there was
> > no explanation for this, and most people are accustomed to using the
> > word "folder".
>
> Hmm, it's good that you mention this.  When explaining directories to
> friends used to Windows (and GUI) terms, I noticed that it's unfamiliar
> to them.
>
> I actually thought about it, and the term "directory" tells you what it
> is quite precisely:
>
> Like a directory of phones, it's just a piece of paper where you note
> down the phones of people.  Directories, similarly, contain lists of
> files.  They don't "hold" nor "contain" the files.

I've never thought of it that way before, good point.
I'll write something along those lines for the next patch, thanks.

 ~Jeremy

>
> Cheers,
> Alex
>
> >=20
> >  ~Jeremy
> >=20
> > > >  Each file has a
> > > >  .I "pathname"
> > > >  describing the location of the file from the root of the tree
> > > > --=20
> > > > 2.44.0
> > > >=20
> > > >=20
> >=20

