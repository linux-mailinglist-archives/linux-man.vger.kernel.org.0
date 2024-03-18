Return-Path: <linux-man+bounces-665-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 000B387F095
	for <lists+linux-man@lfdr.de>; Mon, 18 Mar 2024 20:52:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 748182818CF
	for <lists+linux-man@lfdr.de>; Mon, 18 Mar 2024 19:52:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A40956B65;
	Mon, 18 Mar 2024 19:52:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="gNBw8cPG"
X-Original-To: linux-man@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF0FD11707
	for <linux-man@vger.kernel.org>; Mon, 18 Mar 2024 19:52:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710791543; cv=none; b=QHr5wmuM5D3THAKSSyt+b6F0tetsEvOwsIrdZ4ZllPM/+OgDXItLxlZOh43lO2IvHdMIfRLq8ALRDqpB8yyy0b7Kjef+AgglxmFMMbWf+ifPJoB5RIWfiptEXspsdkp+zoIctjJydB0ugqL7x9TiaJA2G6dosmOObSch1sQQajA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710791543; c=relaxed/simple;
	bh=UFqOxkQHfmtLeGejitYwJkvIBQGoPFSgypXql1SsRK0=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=nDsKYgRB8hbW1hmwLXa1Vt4yM0ker5dOm37KF4CJspAp3I/psOiVCicnsu6iIcplnoFeZKzr962WkubnCPeY3df3ZcbCkpr9p4uiP3R+FSsTsXq5eIFYJb0+9zmNrTJAcbXaMswQS+w+QXHaRzsTSnUFk4fJODv8l5YmknAmSUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=gNBw8cPG; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 2CC8240A80;
	Mon, 18 Mar 2024 20:52:19 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
	by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fy3Cfd3ylhee; Mon, 18 Mar 2024 20:52:17 +0100 (CET)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1710791537; bh=UFqOxkQHfmtLeGejitYwJkvIBQGoPFSgypXql1SsRK0=;
	h=Date:Cc:Subject:From:To:References:In-Reply-To;
	b=gNBw8cPGjPNmjIqavY76O4henoPG1xqmNZ7u6OY+XybcasOftdSKdViLCy/CqYAcq
	 omafZy1VFYrNBQO1BfNdnrzk51ysQIChaQdd6fkahtnokI04zSsEVquUtqN9/juXYx
	 /FLBCG01h81DvyNAYCxtJph/1792vyBL30TW4kU0lA4dSf2az/MsGtBg8NHYEGz5IR
	 sIlIr/6aAZTNj7VddALjqjFYCozhLtJ6lwdH2eYqSOYOwf9/3lJfetAOJxeQLpVmBv
	 XMeNvOcBVeWNzWpn9yJWhJQjCN5QEoXJ2OV/L36EkzbG3RdDQZImfbXvQtsX+m3NFp
	 GaE3j5B7UDUew==
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 19 Mar 2024 08:52:08 +1300
Message-Id: <CZX4ZEGBYQYY.3SWT1DA4SB07N@disroot.org>
Cc: <linux-man@vger.kernel.org>
Subject: Re: [PATCH v2 2/6] intro.1: Document the meaning of the PS1
 variable
From: "Jeremy Baxter" <jtbx@disroot.org>
To: "Alejandro Colomar" <alx@kernel.org>
References: <20240317080850.28564-3-jtbx@disroot.org>
 <20240317080850.28564-5-jtbx@disroot.org> <ZfcFhQIUv6vRGwGd@debian>
In-Reply-To: <ZfcFhQIUv6vRGwGd@debian>

On Mon Mar 18, 2024 at 4:00 AM NZDT, Alejandro Colomar wrote:
> On Sun, Mar 17, 2024 at 09:08:30PM +1300, Jeremy Baxter wrote:
> > It still doesn't explain what a variable is but I think
> > shell variables are out of scope of this manual.
> > ---
> >  man1/intro.1 | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/man1/intro.1 b/man1/intro.1
> > index 96eb3b7fc..090678750 100644
> > --- a/man1/intro.1
> > +++ b/man1/intro.1
> > @@ -109,7 +109,10 @@ that it is ready for the next command.
> >  The prompt can be customized in lots of ways, and one might include
> >  information like the username, machine name, current directory, the ti=
me,
> >  and so on.
> > -An assignment PS1=3D"What next, master? "
> > +It can be changed by setting the value of the "PS1" (prompt string 1)
> > +variable.
>
> I think this is too long, and the existing text is informative enough.

I think you're right, I'll drop this.

 ~Jeremy

> > +An assignment
> > +.B PS1=3D"What next, master?\ "
> >  would change the prompt as indicated.
> >  .P
> >  From this example we can see that there is the command
> > --=20
> > 2.44.0
> >=20
> >=20

