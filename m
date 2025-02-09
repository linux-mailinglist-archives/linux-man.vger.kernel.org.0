Return-Path: <linux-man+bounces-2372-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 72BE6A2DA63
	for <lists+linux-man@lfdr.de>; Sun,  9 Feb 2025 03:20:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 154F87A2DE8
	for <lists+linux-man@lfdr.de>; Sun,  9 Feb 2025 02:19:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 490BE20EB;
	Sun,  9 Feb 2025 02:20:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="TgLTsEH3"
X-Original-To: linux-man@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84A7F1392
	for <linux-man@vger.kernel.org>; Sun,  9 Feb 2025 02:20:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739067617; cv=none; b=hNv5mQBBFA8g9RGjTMfygPUBaxJci/ObMlmh74oqeLLbIWgF0N1LvNHjLxGHvZVR+54cY4jjfeZl29pGgdLS0JHfoCy02M1o0WAv1tUBtGu2LD1t5nvzHLnXvn1KueQhBX6IL8S0sLYSLckJ6iDAZn8YCn4Op4pHBmYblSeuWQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739067617; c=relaxed/simple;
	bh=PbSYRVbbPmAkVRvQoZWfTc/fppB/zBGuLiTXHc17YXs=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=OZl6OhyHIZJuuD7QR89BbguwD5BNJyXjF0seSOgk+sIKf3QccXKKJOYesBMfR7+JEIPCm2fTzZj4tYsa3F4ftg1LfO9HJjk9hOvJWjzwGHz2TV+F0Hywr9M4+2T8K1hljPZRsUwOT+3+EqvGbrqDzbLRDujjMI1dX4iI8p4n57g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=TgLTsEH3; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id A44B325D9D;
	Sun,  9 Feb 2025 03:20:12 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qzbQMsh6dCFl; Sun,  9 Feb 2025 03:20:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1739067608; bh=PbSYRVbbPmAkVRvQoZWfTc/fppB/zBGuLiTXHc17YXs=;
	h=Date:Cc:Subject:From:To:References:In-Reply-To;
	b=TgLTsEH3XzwaIKUXhBJku/8K1rWRmDZpdR1WWEZplzO9+0HBUv1ei7eVOx0s+rngS
	 dAoyuPNcDP0kSA8VAQZDyQINzINUSVpgeqZekm2F+rbXF1Y/x6vB4XiWVwOVZ2fjr+
	 rsT4evAbWKTHXg/+3awOUUSBe//7d+Tc+dx5MxGEOsLmNHwerWUpeqOyDEr/soNse+
	 gH36UW3FKvpVFwQslZiWze5OKL4BQXH6fVRSjWTpsqQjNk+RflYx/Nw3+WphLrNFco
	 GUY87yZPRyJM+2Tw+9BU0f9mo+eeJALkxDAs8D0tjvB4oXV/2dYptFTW4mmLe0wXYe
	 wUJeM8Kxnxzkg==
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Sun, 09 Feb 2025 03:20:06 +0100
Message-Id: <D7NK0L9YCTEA.GUG1NL6I5YZP@disroot.org>
Cc: <linux-man@vger.kernel.org>, "Jason Yundt" <jason@jasonyundt.email>,
 <groff@gnu.org>
Subject: Re: [PATCH v1] CONTRIBUTING.d/style/c: Add coding style for the
 example programs
From: "onf" <onf@disroot.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>, "Alejandro
 Colomar" <alx@kernel.org>
References: <63bd996581c9ceedf9752852831e984c9ff00306.1739054584.git.alx@kernel.org> <qdcjd7falwasz4fakmt6mraw6omkt3gdhfi5o4teigxwobtoqq@ga5bgz26yoas> <20250208234619.a3zfan43cawwhae2@illithid>
In-Reply-To: <20250208234619.a3zfan43cawwhae2@illithid>

Hi Branden & Alex,

On Sun Feb 9, 2025 at 12:46 AM CET, G. Branden Robinson wrote:
> [...]
> At 2025-02-08T23:57:07+0100, Alejandro Colomar wrote:
> > On Sat, Feb 08, 2025 at 11:44:43PM +0100, Alejandro Colomar wrote:
> > > Personally, I prefer tabs for actual programming.  But for manual
> > > pages, we can live with 4 spaces for $reasons.
> > >=20
> >=20
> > [...]
> >=20
> > > +Description
> > > +    Indentation
> > > +	Use 4 spaces.  Ideally, tabs would be preferred; however, they
> > > +	cause 5 spaces in manual pages, which is weird, so we use 4
> > > +	spaces.
> >=20
> > On a side note, Branden, I've considered changing the manual pages'
> > EXAMPLES' source code to use tabs, and let the formatter do whatever
> > it wants.  Do you have any opinion on that?
>
> The behavior of input tab characters is well-defined in *roff, but
> defined _weirdly_ to most people's sensibilities when filling is
> enabled.  I won't quote the documentation here, merely point to it.
>
> https://www.gnu.org/software/groff/manual/groff.html.node/Tabs-and-Leader=
s.html
> [...]

TL;DR:
With the default settings, a tab essentially translates into a
horizontal motion. What this means is that when filling is on
and you have text like this:
  int main(int argc, char **argv) {
  \tif (argc !=3D 2 || strcmp(argv[1], "-h") =3D=3D 0) {
  \t\tfprintf(stderr, usage, argv[0]);
  \t\treturn argc !=3D 2;
  \t}
  \treturn 0;
  }

it ends up like this:
  int  main(int  argc, char **argv) {         if (argc !=3D 2 || str=E2=80=
=90
  cmp(argv[1], "=E2=80=90h") =3D=3D 0) {                 fprintf(stderr, us=
age,
  argv[0]);                 return argc !=3D 2;         }         re=E2=80=
=90
  turn 0; }

This is because tab stops are related to the beginning of a paragraph
rather than the beginning of an output line as one would expect.

The desired behavior can be enabled with the request .linetabs,
but this is groff-specific and not supported by other troffs.

~ onf

