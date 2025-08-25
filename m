Return-Path: <linux-man+bounces-3726-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DE2B2B34B14
	for <lists+linux-man@lfdr.de>; Mon, 25 Aug 2025 21:45:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 992433BE1A7
	for <lists+linux-man@lfdr.de>; Mon, 25 Aug 2025 19:45:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 021D71F4C85;
	Mon, 25 Aug 2025 19:45:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bjGyrQJN"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3001C1F22
	for <linux-man@vger.kernel.org>; Mon, 25 Aug 2025 19:45:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756151139; cv=none; b=Kf9ItPcMhxy1S170mIWeVG2P1MHKklISY+B92RY/yb+o5B7aSkgFjlTHk5puI7GhQHp6DZU508wxbVBB4adncXdfKLxjwzKXvQ6NuIk9E88A37BFE3u1f3RDh7qzlAAcnulD4C8I/yawgAosjyy3Es+pZsI2oNl3VuC17ojbQBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756151139; c=relaxed/simple;
	bh=gvDXQMiUAr+Lp4FmkR5Zpb9ovMf2zAlFC0ltvqAxXvc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Bz8gea+zGo2e6etxgULblf1L9bQC9RwD5Z2INcU6mOjuLa77MXA4Gbf0MC3a/qe9q+yDUg3q79HyxJsX5IqzO4ad79RyDiWY/cc9WSxmhZbLNqEWZittBLGqBqV+eb9Gr2cenc9INoIi3+8SR0BYzlwe2ojGMuWDpQKATs0rZyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bjGyrQJN; arc=none smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-71d5fe46572so45445667b3.1
        for <linux-man@vger.kernel.org>; Mon, 25 Aug 2025 12:45:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756151135; x=1756755935; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=IoK5++T1qtyFOnkxcUX5P1kVTzK4cYco0xbT9Q7r0Rg=;
        b=bjGyrQJNTwPSdf1GItm85bqCPWeMCjsiznZR7E8cf5njkodr3VfF6aCUqbdTEVCpfz
         K+BHhDLTPsprldxRM1zQTQ1ov0egOgSIzwitO9u8jPKvONdSiwZ7lQ6zng40WFQ0kByE
         NVsTrajj+0EWChhdNKlqxO/7OPxz6Bx2D/DTxu3zpU6akJFe+UlMM2hpila+v0aKvs7B
         1XKqta/Q2xnVkNnK6tHV/L8hJrtwrDel1n95i8tgIwjl5LoqVghzIZ/m2cC0EyLo402l
         JMluCh6pHkY7Y6eu4LDL9BifXMHVCKV4a7TB2Qc0PiRGpWMdlm0ZIOYk0EVCzw/kCA7O
         6dLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756151135; x=1756755935;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IoK5++T1qtyFOnkxcUX5P1kVTzK4cYco0xbT9Q7r0Rg=;
        b=OeNfj5zr8VbIHtRIkbxGXzr2oWgShUBnkIOhpycGuYSiMj/dmdX5piO0bQQ+SK4UVV
         0erGfj1OClbYUKTQ+dD0r49gCigJix+TtQT6XnY+66UVV29G32kWLk3MMfmrAQXz5r2x
         TR3WT4A2NYil211Xjg7uujKSM9TTHMZFcZSuWQICzYolMFMF4Bs0IztR5lj0vYp+fGFr
         jngZK6pkSRYmFZLrTX6HBzmkFWoVAkVQYDjCYYny7L0w4QCal2boRzegxeWnA6x+yYhp
         Rdd/h1je8Ut4RseAuCvSFj86Cj/8NcOTSIKTqBPdmtf7LRWibgOM+2ILq2IQ7DkVpdIb
         V2Tg==
X-Gm-Message-State: AOJu0Yz9rwggxnzc3dkpg2cbmBCEkgle3Utf75+gyY4VDca62EQQQzYi
	y7qxWv9Qg/olwn4DkoXdFj51OUW1xif1Fb2JXopjwBFK2ewJ4D7dhG56Je4/Lg==
X-Gm-Gg: ASbGncsCpknkdjWJFBF8UKeP8gwUZHUmzG7lsrfpuN5zruwYuZVcXD46huVHQm17KiU
	z4nOyqkbCh16DSMeaBWaNg9bpFiN6WaZ2hucdWlkj180Zb63NxmYeUNkBZ/lEFfgDeRSsWiU6K7
	vPnzJZolttWCV3IAjlX49Nv9Z+c9y3QF0F/DMkujMYJButYiX2G3wFqs/RPvWWyX3rDVcY8sEEX
	66Uhf+hFJB7e1+KN19IN8H4KNe+6hJWUmU2cE9ctZxYFyU0akmOtr4RPBk3xPp9dGiQVRlzrmdE
	+o5AqjO2dm5iUmyCIjPaJkCuey1YI46as3bLwhLnUgjbBiqCLVrh+uvByZIkW53woLZa+FAzE03
	3ZhF4R4NolP4Q
X-Google-Smtp-Source: AGHT+IEI8AXOfi6VMXjL6GfnInAs+veTeUrESS3FioICYgKkgZ0MrnOp0WMPQhMVVi/LmKNCt1HQKQ==
X-Received: by 2002:a05:690c:6583:b0:71e:7a40:7efb with SMTP id 00721157ae682-72126b0d3b6mr10928977b3.11.1756151135391;
        Mon, 25 Aug 2025 12:45:35 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::41])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-71ff18b3794sm19444547b3.63.2025.08.25.12.45.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Aug 2025 12:45:34 -0700 (PDT)
Date: Mon, 25 Aug 2025 14:45:32 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: linux-man@vger.kernel.org
Cc: Helge Kreutzmann <debian@helgefjell.de>, mario.blaettermann@gmail.com,
	Alejandro Colomar <alx@kernel.org>
Subject: hyphenating English phrases (was: Issue in man page
 pthread_attr_setschedpolicy.3)
Message-ID: <20250825194532.hwoasp4prqzkmd4q@illithid>
References: <aKsmUGE8mAXnM917@meinfjell.helgefjelltest.de>
 <5n2mlo4l7kqloztcuruagrkglh23gkqfqckuqf6pajerx6qkwh@b6qqipttn4xy>
 <aKyI4KbJh6LJC_8r@meinfjell.helgefjelltest.de>
 <7pe2qwvkqpd6drn5ql3xld5s7auq7d36thdu6b3oowpf646ppc@mvteqf4f7245>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="eu4xbyii4ozxbg4i"
Content-Disposition: inline
In-Reply-To: <7pe2qwvkqpd6drn5ql3xld5s7auq7d36thdu6b3oowpf646ppc@mvteqf4f7245>


--eu4xbyii4ozxbg4i
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: hyphenating English phrases (was: Issue in man page
 pthread_attr_setschedpolicy.3)
MIME-Version: 1.0

Hi Alex,

At 2025-08-25T20:53:15+0200, Alejandro Colomar wrote:
> On Mon, Aug 25, 2025 at 04:01:36PM +0000, Helge Kreutzmann wrote:
> > Am Sun, Aug 24, 2025 at 09:15:28PM +0200 schrieb Alejandro Colomar:
> > > On Sun, Aug 24, 2025 at 02:48:48PM +0000, Helge Kreutzmann wrote:
> > > > Without further ado, the following was found:
> > > >=20
> > > > Issue:    inherit-scheduler =E2=86=92 inherit scheduler
> > >=20
> > > I think this is correct.
> > >=20
> > > I think it's this:
> > > <https://www.grammar-monster.com/lessons/hyphens_in_compound_adjectiv=
es.htm>
> >=20
> > Thanks for the pointer. I'm not a native speaker, but "scheduler" is
> > not a adjective, isn't it?
>=20
> Yeah, it's not an adjective, but the rule is similar for this case
> even with a noun.  I'm not sure how they call it; maybe compound noun?
> I don't know.  But since they modify attribute, and the go together,
> they have a hyphen to denote that they go together, I think.
>=20
> Someone native please help with the exact rules, if anyone native is
> reading.  :)

Several years ago when I began revising and updating groff's
documentation, similar questions came up.

One resource that proved valuable was the Chicago Manual of Style.

https://web.archive.org/web/20171118013349/https://www.chicagomanualofstyle=
=2Eorg/16/images/ch07_tab01.pdf

About 9 months after I cited it in a commit message,[1] CMoS took the
resource down, hence the Wayback Machine link.  I don't remember if
that's before or after I immoralized its editor Russell Harper as a
black-hatted villain in groff's Texinfo manual.[2]  ;-)

CMoS is a fine resource; just don't believe its editor's lies about the
history of inter-sentence spacing practices in typography.

Another rule we (mostly I) observe is that adverbs in attributive
phrases _don't_ get hyphenated.[3]

For example, we would say...

"Alejandro Colomar is a Spanish-speaking developer."

=2E..and...

"Alejandro Colomar is a highly competent developer."

=2E..but not...

*"Alejandro Colomar is a highly-competent developer.".

However I must concede immediately that in common usage one often _does_
see adverbs hyphenated in attributive phrases.

"The child of well-heeled parents is born on third base."

At the same time, while the (notoriously permissive, per Charles
Harrington Elster) Merriam-Webster dictionary includes "well-heeled" as
a headword _with_ the hyphen, the Oxford and Cambridge dictionaries
appear not to.

I like consistency, so this case may be one of the few where I prefer
Commonwealth English orthography over my mostly American practices.

(Observe that I did not write "mostly-American", and I suspect most
other experienced writers in the U.S. and Canada also would not.)

Unless, of course, they wanted to come across like some kind of hoser.

Regards,
Branden

[1] https://cgit.git.savannah.gnu.org/cgit/groff.git/commit/?id=3Df81a9e32d=
0b1f80344d8b4dc39ab505b14151e11
[2] https://www.gnu.org/software/groff/manual/groff.html.node/Sentences.html
[3] https://savannah.gnu.org/bugs/?57618

--eu4xbyii4ozxbg4i
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmisvVUACgkQ0Z6cfXEm
bc5h4hAAq9bS5Dvov1TrFlnm2s7fd17Dif99UKp2FkTEJa6V0C3pl3g9pv0gUQb5
+snGHqfMa3Mg34MyWlpHIoN1bCf/GVRtNyDEuaeenuhH1y3dJcuwcm2Fp6QM28EL
W65eUsmT2f9KajKdIVbSsVHjkzBddCw8AR0R3jiTIYlEbYWQfrHJfMHPBGrdGOhP
n4n0hL0H9vzkzrt/ak44AFRnHJWLksC4rUGkpMznVmV5eYLaJt9CH3lPl3jQXl9y
BPpnhv7w0z9LgtL5VTyBWm5gpeKkgCfo4LKjRCFBCUjnmEfeXX4bLYVDHY2l9MGc
nOhw4EwVOveZVTVxCub30AtmYFP2s5hYVOJwVrn0FmG/qotUR5pqLXp5oZj6K5Ro
LAcd3vqNj6mgfIBe9Yn7nu+KoAsGd9o3UVuh+Ikrt7PvCOFVc0sfRXJ3lt9pPlCN
SRINa6XclkRhz2ErR0MlCIfGaQsh2rj+fh+hbfwmZzjX+CHSeixSAHya5e3l3yTy
wNZP9E30A8FyuR3/A+MI1/s/aE/xNa2t2tU2w+HBroDJ7xjWApCRQMWFEkq75cjm
XGGdurtiJ44dSW50mkaO+MGDaecqhhGH39eHK0oWpi0eK+J8E9hjotp6ftljUqmf
zJQIoA9O1XgT7mphH214YXEEr8rt3oh3QAX5B+p+qjUfSfO19lU=
=2DLD
-----END PGP SIGNATURE-----

--eu4xbyii4ozxbg4i--

