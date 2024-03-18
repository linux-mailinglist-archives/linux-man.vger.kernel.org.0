Return-Path: <linux-man+bounces-671-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 07ECC87F31E
	for <lists+linux-man@lfdr.de>; Mon, 18 Mar 2024 23:33:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 135CBB20DE5
	for <lists+linux-man@lfdr.de>; Mon, 18 Mar 2024 22:32:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76AD559143;
	Mon, 18 Mar 2024 22:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="DkZxtvK4"
X-Original-To: linux-man@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51F791F959
	for <linux-man@vger.kernel.org>; Mon, 18 Mar 2024 22:32:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710801174; cv=none; b=f3fN2SooxbNi7fW9abrSdAXRBq6QuJYkvOZzr9lh04/z7y7am4VogmEYBIb19DtxrAPZwKqWjcfuIzu+3y3I6+9jIDtsY1gCzQecHVc9ZDB7mC1znjA+2HZu+d4PeFrHA7+Kik2StCR1UfkiguxU2ZmPVDgMHgFWQ70oLG0r2KM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710801174; c=relaxed/simple;
	bh=VMmoSF/064l06N9l9HxQuPujCQvRMgSMZ7pHSTU1fEY=;
	h=Mime-Version:Content-Type:Date:Message-Id:To:Cc:Subject:From:
	 References:In-Reply-To; b=otqjnhQPE1p839gG4xEC3DXHHEwbn6fcmAon5C5hrEi3MPwDwA9UTWnR4Aah8E2iRpItwpq77CtpR1j+ZZRT2SBaWuwLewgy8VxTZU8sp9wHyTtUWvJtfDqcN9T7U1wq8+9wQsa6ihhws+XxijUMiWoP4kIsmpzk2F9Zgy26XDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=DkZxtvK4; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id C134F4142E;
	Mon, 18 Mar 2024 23:32:50 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
	by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 89inlCMdnEw3; Mon, 18 Mar 2024 23:32:50 +0100 (CET)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1710801170; bh=VMmoSF/064l06N9l9HxQuPujCQvRMgSMZ7pHSTU1fEY=;
	h=Date:To:Cc:Subject:From:References:In-Reply-To;
	b=DkZxtvK4q6Z+eY6Mw7pw78wS+7qOtxhPpc40lpiFC3M2ugQqJovuAFxPuvXYdlrcU
	 P4U5dMnvO4hsD3LDEkW3S0MiUS8U6ZUsUPjkXYNraAmDik4KOAvs7qag4hbaIb4fs7
	 1vOJB0UFiiqj3lIlRW213GsFmo+9HPQLikV4g7Wv4QjxjMOy3u2EmaloUS9+N5FmxU
	 E8XNvMlizwQR+IdUiERDG1QsEAK6lnEyRWCU07qKO0nPw4vCY96AfrNanXYJG/CuDm
	 EwwVNWXt0Ik1ZdcZCEIiGg8Z3Tf8DsVYtzVfZSJX+DThwAsSC6grGlhhWj6diC/l4q
	 T49d3pM+kZykw==
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 19 Mar 2024 11:32:42 +1300
Message-Id: <CZX8ECACKZ2Y.23A1GYTWMJHRM@disroot.org>
To: "Alejandro Colomar" <alx@kernel.org>, "G. Branden Robinson"
 <g.branden.robinson@gmail.com>
Cc: <linux-man@vger.kernel.org>
Subject: Re: [PATCH v2 1/6] intro.1: Revise language
From: "Jeremy Baxter" <jtbx@disroot.org>
References: <20240317080850.28564-3-jtbx@disroot.org>
 <ZfcCl6dcTFX9Zy6p@debian> <CZX4Y18EKIWK.1YLSFJIPJG2YA@disroot.org>
 <20240318195657.bihsax5gk5jx5tyc@illithid> <Zfi6lSKPCBTiuxVg@debian>
In-Reply-To: <Zfi6lSKPCBTiuxVg@debian>

On Tue Mar 19, 2024 at 11:05 AM NZDT, Alejandro Colomar wrote:
> Hi Jeremy, Branden,
>
> On Mon, Mar 18, 2024 at 02:56:57PM -0500, G. Branden Robinson wrote:
> > At 2024-03-19T08:50:21+1300, Jeremy Baxter wrote:
> > > > cat will show
> > > > but
> > > > cp copies
> > > > ?
> > >=20
> > > I think it sounds better to use the "x does this" form rather than th=
e
> > > "x will do this" form, similar to what they have in the utilities' ow=
n
> > > man pages. What do you think? Should I change cat's description to
> > > adhere to the rest or just keep all of them as they were?
> >=20
> > Two rules I've been applying to my man page revisions for a while are:
> >=20
> > * Favor active voice over passive.
> > * Favor present tense over future.
> >=20
> > This is "favor", not "always use", but, other things being equal...
>
> For intro(1), we could make an exception.  A less formal voice might
> seem more friendly to newcomers.  Don't you think?
>
> BTW Jeremy, you could send less changes.  I'm not very happy about such
> huge changes suddenly.  How about fixing what you feel is most obvious
> that should be fixed, say 20 lines or so, and in a month or so we can
> discuss another patch set for this page?

No worries, splitting the patch over time sounds good.
Sorry for the inconvenience.

 ~Jeremy

>
> Have a lovely day!
> Alex
>
> >=20
> > Regards,
> > Branden

