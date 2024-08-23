Return-Path: <linux-man+bounces-1685-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC0D95D7A2
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 22:21:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EA1471C20CCE
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 20:21:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00798193408;
	Fri, 23 Aug 2024 20:11:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=telia.com header.i=@telia.com header.b="laUASboL"
X-Original-To: linux-man@vger.kernel.org
Received: from ts201-smtpout75.ddc.teliasonera.net (ts201-smtpout75.ddc.teliasonera.net [81.236.60.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D58F18CC0F
	for <linux-man@vger.kernel.org>; Fri, 23 Aug 2024 20:11:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=81.236.60.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724443909; cv=none; b=B7dA9uNDTlbQXelfHA6wzEZzRI733QOKJHwJTrVWDH2+i0gqsvOVUxkQ8wDtRig2uDwTzBgbgAQvreg+8wqInFf4ursZ+OwdMALJIsjxWHmrxteIbOZvFG5rSbIM7N/KqoVTjyKG1sp/T5z2vy43pmrNm+PXPC2DpEGyGXW0daY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724443909; c=relaxed/simple;
	bh=GMyKzr2WYhNJATXCD8GA/7+nUECkiMeEn6PvJBsMkyA=;
	h=Content-Type:Mime-Version:Subject:From:In-Reply-To:Date:Cc:
	 Message-Id:References:To; b=uSd61HIJk6KX5k1daKz2dQnlmOnG/F1wj1ZWuvFlkx+DCivNy9+kUl+FBbwlZNyw/Bln6PSkbzdJ+tOC2wEmmoX75m8DxUUPbarTsFA+0TAZZN5W4RU9x8efi4IEbxynzFcNa6Lr156SmSk7MQAWxuU971LzAgHA4yroJ7PwohU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=telia.com; spf=pass smtp.mailfrom=telia.com; dkim=pass (2048-bit key) header.d=telia.com header.i=@telia.com header.b=laUASboL; arc=none smtp.client-ip=81.236.60.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=telia.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=telia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=telia.com; s=tssemail-202204; t=1724443907; 
        bh=GMyKzr2WYhNJATXCD8GA/7+nUECkiMeEn6PvJBsMkyA=;
        h=Mime-Version:Subject:From:In-Reply-To:Date:Message-Id:References:To;
        b=laUASboLsAzaKJJRiE1HWl4mJPgaPC8IGwykKITg77W39oLVV8wiUhVrtN1JWuw4vy5Law7sdORIFGW910VKftu/kOwbDI+ILxnhaXvp30fVD7OV8KSUZxR0YqBsW9m/hT00aqIOrLUL7jf8QG82yA+88SQBgJrQ+Lalv0yousuX5F43qq3+RQB0Pwt2Z9mnH8jhzJBGLikyUQHKsiErrUKv/21jP8yViOWSxxtzPKOh+P4gf6Osf0LkSz9JVQEtF22TkBlJeIDayEK/me5KSy/AT8l79QpJjoD09yFjj4gVxFChSwde3wqyHAJxLkPNvYKmynTqQC7sQY5j8G7pag==
X-RG-Rigid: 662AB9E90367F221
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgeeftddruddvvddgudeggecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfvgffnkfetufghpdggtfgfnhhsuhgsshgtrhhisggvpdfqfgfvnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpegtggfuhfgjffevgffkfhfvofesthhqmhdthhdtvdenucfhrhhomhepjfgrnhhsucmpsggvrhhguceohhgrsggvrhhgqddusehtvghlihgrrdgtohhmqeenucggtffrrghtthgvrhhnpeeiieeijeehfeettdelkefgvdelgfevudetgeffkeefheeuvefgtddtveevtedvleenucffohhmrghinhepfihikhhiphgvughirgdrohhrghenucfkphepkedurddvfedurdejgedrkeejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghlohepshhmthhptghlihgvnhhtrdgrphhplhgvpdhinhgvthepkedurddvfedurdejgedrkeejpdhmrghilhhfrhhomhepuhdvieeiudeludelieesphhnvgdrthgvlhhirgdrtghomhdpnhgspghrtghpthhtohepudegpdhrtghpthhtoheprghjohhsvgihsehophgvnhhgrhhouhhprdhorhhgpdhrtghpthhtoheprghlgieskhgvrhhnvghlrdhorhhgpdhrtghpthhtoheprghushhtihhnqdhgrhhouhhpqdhlsehophgvnhhgrhhouhhprdhorhhgpdhrtghpthhtoheptggrrhhlohhssehrvgguhhgrthdrtghomhdprhgtphhtthhopegujhesrhgvughhrght
	rdgtohhmpdhrtghpthhtohepvghgghgvrhhtsegtshdruhgtlhgrrdgvughupdhrtghpthhtohepghiftgesohhpvghnghhrohhuphdrohhrghdprhgtphhtthhopehjvghnshdrghhushhtvgguthesihhnrhhirgdrfhhr
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from smtpclient.apple (81.231.74.87) by ts201-smtpout75.ddc.teliasonera.net (authenticated as u26619196)
        id 662AB9E90367F221; Fri, 23 Aug 2024 22:09:40 +0200
Content-Type: text/plain;
	charset=us-ascii
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3776.700.51\))
Subject: Re: [PATCH v3] ctime.3: EXAMPLES: Add example program
From: =?utf-8?Q?Hans_=C3=85berg?= <haberg-1@telia.com>
In-Reply-To: <8a48b03e-2873-4ec1-8896-98a28da9e824@cs.ucla.edu>
Date: Fri, 23 Aug 2024 22:09:28 +0200
Cc: Alejandro Colomar <alx@kernel.org>,
 Robert Elz <kre@munnari.oz.au>,
 Andrew Josey <ajosey@opengroup.org>,
 Geoff Clare <gwc@opengroup.org>,
 Vincent Lefevre <vincent@vinc17.net>,
 Xi Ruoyao <xry111@xry111.site>,
 libc-alpha@sourceware.org,
 DJ Delorie <dj@redhat.com>,
 linux-man@vger.kernel.org,
 carlos@redhat.com,
 "Robert C. Seacord" <rcseacord@gmail.com>,
 Jens Gustedt <jens.gustedt@inria.fr>,
 austin-group-l@opengroup.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <30C0049B-BDCE-4957-AC04-D75878E3A1B3@telia.com>
References: <e9e31a505f59c75ae5f9549b67102a433b39b42c.1724370362.git.alx@kernel.org>
 <53dc1a78-980f-49cf-a6cc-ab5a42cde3dd@cs.ucla.edu>
 <kibbmshdcm3jfmpdyrspdnodqfehwd4bredtojemojvngdnzno@cfommtte6drm>
 <7be010d1eb77d72caef1ff7018213f94e0074714.camel@xry111.site>
 <jexdbqmvupx3q546nipasrhunylrjazpbe2d3inmbqa4llowjo@6gu4orqoerbo>
 <20240823125313.GB2713@cventin.lip.ens-lyon.fr>
 <daswt7u6tvj7mq4x5ntjzel5cspkyfmkphrtvsdsywoaalhrgh@7s2eedsskylp>
 <20240823135449.GF2713@cventin.lip.ens-lyon.fr>
 <4n6fqru43irlzw7qcqkj6za4hxtn5g3icvtmyuneap4fs2aryk@ctcmkvw2xxl5>
 <20240823152617.GI2713@cventin.lip.ens-lyon.fr>
 <cb65drmcb6cotrz6rzkfuwg5aod2jta4ma6f6cds4pouk5tjdj@6wl6iwby2isi>
 <8a48b03e-2873-4ec1-8896-98a28da9e824@cs.ucla.edu>
To: Paul Eggert <eggert@cs.ucla.edu>
X-Mailer: Apple Mail (2.3776.700.51)


> On 23 Aug 2024, at 21:08, Paul Eggert via austin-group-l at The Open =
Group <austin-group-l@opengroup.org> wrote:
>=20
> On 2024-08-23 10:48, Alejandro Colomar wrote:
>> Robert, Geoff, Andrew, can you please clarify where is the discussion
>> that led to the following change?:
>=20
> Why does it matter? The tm_wday idea has worked everywhere for decades =
and is now standardized.
>=20
> For what it's worth, GNU Emacs has been using the tm_wday idea since =
2018, when I made the following change:

I am a bit curious about the original discussion, which I cannot see:

I have recently brushed up a C++ program I wrote that uses the Julian =
Day Number (JDN) and Julian date, which is used in astronomy. So, for =
example, 0 JDN, the Julian calendar date -4712-01-01, is a Monday, =
making it easy to find the day of the week, computing modulo 7. The =
Julian date 0.0 is noon UT on 0 JDN.

https://en.wikipedia.org/wiki/Julian_day



