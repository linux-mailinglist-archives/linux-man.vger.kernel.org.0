Return-Path: <linux-man+bounces-2853-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AC8DAAA7557
	for <lists+linux-man@lfdr.de>; Fri,  2 May 2025 16:51:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 824AB3AD1BF
	for <lists+linux-man@lfdr.de>; Fri,  2 May 2025 14:51:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A71A2561C7;
	Fri,  2 May 2025 14:51:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HPfZ9Uy1"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 978E8223DFD
	for <linux-man@vger.kernel.org>; Fri,  2 May 2025 14:51:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746197472; cv=none; b=uq4aHc+ZIHez3FUpvWNoZADhM0FgS0M323NCZ8WvwqUV0BNZNdQQDALUacsCrHSRrXn1k8NYPv8XNxvn3+aa9kkdby2hirD3RFE5RQSY1a5xc4Xlm8MmhPClQJcQcMy90IPwTX8DZ6IpvLkZZhHOXYi/UAquFQqlWDB9CbrQHNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746197472; c=relaxed/simple;
	bh=UU0+3YS854tsyTLjyuSDT5OQZZp5iCNX7/QqKWz+W2E=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DBvpOQLhuNmRfdo30jWg/5ZIxnVBaFSEcIpCuOFWtAeVN+hIjZFVGDb/4jA61SWTrq55szyGZtLoBQJ5PV0toAublkuKiUsA0WxWjRT5ggfF76SIpA2I8peGmGOTiugmb+oK6/2VTH0dcJ1L+HFzOc7T6nDD6wMf8CmGLH3xCEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HPfZ9Uy1; arc=none smtp.client-ip=209.85.167.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f171.google.com with SMTP id 5614622812f47-3f7f7b70aebso1539664b6e.2
        for <linux-man@vger.kernel.org>; Fri, 02 May 2025 07:51:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746197468; x=1746802268; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:reply-to
         :message-id:subject:to:from:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SpMPO21dStueuexm57RtnlebuGnncy39n3F3Fsp+5yE=;
        b=HPfZ9Uy13OmqSmKIN1Fx/EMalTMlj1gjWTJRK0ZUJFRJCf4cudCB+rQmpd4Km2Oh7F
         lhuZlJ2sBE9dnWy3iMyXp1kYzqmxBw3NQAO3+GDTUKo2JPc+T9JBiMzcEjDJaSbcdJJJ
         ffAK9V344fAtZe0+sBT0OZzZHVzg4Ok7WJZE806sjawSZRQUG2WJo+S2+XRatVN9Sikr
         ZGfa1vSRvAK2HRWC+LjFZ7IpOwslXOCm+MWPH2BlAx/JKQE4wML7whfm0Vk3/K5eVybG
         x8V/cAEz17mmYrkZwu/Ad2tiB3ivHSRj/JrgSeV8ULqaiew9soR3QV3N220dO15c9ctI
         r7fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746197468; x=1746802268;
        h=in-reply-to:content-disposition:mime-version:references:reply-to
         :message-id:subject:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SpMPO21dStueuexm57RtnlebuGnncy39n3F3Fsp+5yE=;
        b=bt0qD1RiKW0W/sabe6k5HGLad2eiGEGlEjhu4S61Rep9+MfK9mC2hIwkU3/Ta1NKny
         YUH6KHGNIzI+OmScpdJttbk3kh+LNWKx28YlSSqp7gwBu5Kg9ItVIolmo09/IsyPpl5h
         gqa+UGvVvT8g0UEwn/yvjM8/Q5xDu0p3mEnJy8e7K+WUTtXQfIHCtJzRhikjXRhb9SsI
         sgfNgO1Yf96LQXz9RiFUInqPwdEAJmhiQEXR/v26l6UtB18t5PYNGneRJ2+FJvJhVDL2
         jpKT36XkAutJ8w8EGcioLrIdw8CerIlbeao4/k3JCQ4a8WNX4NUZ3PyfO81FiTtHSXr0
         w9Iw==
X-Forwarded-Encrypted: i=1; AJvYcCXcfJ1pffmyCiXst+ohkdOGYEDqEy2W8KBqLZOBJvmDIlkUJqa20aESoLl5Hu0JuxVHP8S0rRjytkU=@vger.kernel.org
X-Gm-Message-State: AOJu0YwiQeLhT7hQILaWvf5zH3couRvt8nIMYSXTt2IUe9eXx0J1T/vB
	ZVj4JgWVm/K+g09NHuZVZNo1firSwyhqEo4rvkzTzZtvPdCozj466tKlNQ==
X-Gm-Gg: ASbGncv/m/7SV2R79xzYtoAQgko+jWy0hpN+inEfJjNWgLpOF/fsZCF0VZ6O5x4/iOt
	bz27lEhJv/gK7XgRXTeHRnwn5s9vAVUelSsWpAK/pKqAcN9fGqd6kVLKS2gcy76UOVu6A+/XQ7r
	4G68trNabiJiICktH4t2AnNpQ7uZfiI67Qpnpp9XDqtBJ82b4r4yheTYOby2aBLqgEHBAoqyN2Y
	li3fB6wt5jPZNhvA/TiNm5TWo4WD2tNJoq0CKGoOtD7R7qtrG6gUw/6NB0cjhhmldbe7HQ3Rze/
	6LnAJoa/tBxjm8btCgQ1Z35PrmmEfWI=
X-Google-Smtp-Source: AGHT+IH0oCNXrPc5hIeE67kswlSobiXHQRk4EKDuy8BhtIaLtW+AhyGLXbUak/I30Mq3t712I9St1g==
X-Received: by 2002:a05:6808:1985:b0:402:10da:f76e with SMTP id 5614622812f47-403413834e7mr1846335b6e.13.1746197468411;
        Fri, 02 May 2025 07:51:08 -0700 (PDT)
Received: from illithid ([2600:1702:7cd0:e980::49])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4033d9c21d9sm603299b6e.14.2025.05.02.07.51.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 07:51:06 -0700 (PDT)
Date: Fri, 2 May 2025 09:51:04 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: groff@gnu.org, linux-man@vger.kernel.org
Subject: Re: Paragraphs formatted differently depending on previous ones
Message-ID: <20250502145104.uouytem5fpxfjc3s@illithid>
Reply-To: groff@gnu.org, linux-man@vger.kernel.org
References: <dbczpry2ukcht3d2pw4b2l7yla63eetfprfpblhvhwj2dpalvv@ba4itgqked3d>
 <20250502120139.yqstcq32hdtagozl@illithid>
 <aBTDZiUVotN_80RM@starship>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7ahtoaytbkvpvase"
Content-Disposition: inline
In-Reply-To: <aBTDZiUVotN_80RM@starship>


--7ahtoaytbkvpvase
Content-Type: text/plain; charset=utf-8; protected-headers=v1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Paragraphs formatted differently depending on previous ones
MIME-Version: 1.0

At 2025-05-02T15:06:46+0200, Martin Lemaire wrote:
> Thank you Branden for those historical insights.=20
> Off-topic to Alejandro's initial question but related to the subject of
> justifying text set in monospace, do we owe this typographic gesture to
> the early *roff formaters or was it already a thing in previous
> publication tool, either software or hardware ?

It dates back at least to "old" roff, which is one of the first Unix
programs ever to exist.  It is older than the C language.

roff(7):

History
     Computer=E2=80=90driven document formatting dates back to the 1960s.  =
The
     roff system is intimately connected with Unix, but its origins lie
     with the earlier operating systems CTSS, GECOS, and Multics.
=2E..
   Unix and roff
     McIlroy=E2=80=99s roff was one of the first Unix programs.  In Ritchie=
=E2=80=99s
     term, it was =E2=80=9Ctransliterated=E2=80=9D from BCPL to DEC PDP=E2=
=80=907 assembly
     language for the fledgling Unix operating system.  Automatic
     hyphenation was managed with .hc and .hy requests, line spacing
     control was generalized with the .ls request, and what later roffs
     would call diversions were available via =E2=80=9Cfootnote=E2=80=9D re=
quests.  This
     roff indirectly funded operating systems research at Murray Hill;
     AT&T prepared patent applications to the U.S. government with it.
     This arrangement enabled the group to acquire a PDP=E2=80=9011; roff
     promptly proved equal to the task of formatting the manual for what
     would become known as =E2=80=9CFirst Edition Unix=E2=80=9D, dated Nove=
mber 1971.

And, sure enough, it performed adjustment.  We can observe its behavior
in Seventh Edition Unix (1979), which while much later chronologically,
also documents roff(1) as "utterly frozen".  Joe Ossanna's nroff(1),
"new roff", appeared in Second Edition Unix (1972) and immediately
sucked up all the oxygen available for document formatting work at the
Bell Labs CSRC.

---snip---
PDP-11 simulator V3.8-1
Disabling XQ
@boot
New Boot, known devices are hp ht rk rl rp tm vt
: rl(0,0)rl2unix
mem =3D 177856
# Restricted rights: Use, duplication, or disclosure
is subject to restrictions stated in your contract with
Western Electric Company, Inc.
Thu Sep 22 23:33:03 EDT 1988

login: dmr
$ cat lemaire
Off-topic to Alejandro's initial question but related to the subject of
justifying text set in monospace, do we owe this typographic gesture to
the early *roff formaters or was it already a thing in previous
publication tool, either software or hardware?
$ roff lemaire | sed '/^$/d'
Off-topic to Alejandro's initial question but related to the sub-
ject of justifying text set in monospace, do we owe this typogra-
phic gesture to the early *roff formaters or  was  it  already  a
thing in previous publication tool, either software or hardware?
---end snip---

> Are you aware of theory or paper on the subject ?

The practice of adjusting lines of text to be all the same length when
typesetting is an old one.  It appears to be the practice in at least
some late-medieval illuminated manuscripts, and images of the pages of
the Gutenberg Bible that I can find online suggest to me that the
practice goes back to the dawn of the printing press.

Since monospaced typefaces are a straightforward application of movable
type, the concept of "adjusting" printed lines thereof could not have
been novel.  It was simply too tedious a practice to expect of
typewriter operators who composed text on the fly while drafting.
Computers, however, are perfect for automation of tedium.

But I'm far from a subject matter expert.  And a bit too young to opine
authoritatively on life at the CSRC.  Fortunately, some groff list
subscribers have first-hand knowledge.  :)

Regards,
Branden

--7ahtoaytbkvpvase
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmgU29IACgkQ0Z6cfXEm
bc6prg//de7hfPhk3tZoPODsRt9hPofnWkmUl91NWpPOJZpt3OJxM4lBJ8QPY/75
vkc1fQ6qOq4oAVaI9kxhd916TvoTEa7IRW61tprNEuxhpHndN+dyXqdMpbrbTbxz
f2kuzbJIMv68eelWn/qAxD693xbV/rkz7MmBt8sianLhn42DPnEVjy0KlOlIXfrF
ZbMsiAP/1L98VqHk+kabZwXkCU868swALHWugf36b0iDaM/ErvsBaFJz0rIyp9ZO
saVO6UT/jxcYufx2MasXCmB5feMW20Wv7y4qe2yTyIFONiGs2X4IlmwfIpb0ESVS
uTMa3HeLY1ZTpKckxbsZA52fbgIhl03s37EzD7OdWr+Jt+gtLJ1oHYOSfDhhpYeC
idH9qJDTpoZzrO4UbTAZ39KMmOetu4L9jDAf/tLIS1LMR98iaj/iChexdXCyYRBO
WJOtkBq+sSJUgwSNUgwRlP/Jn227YiCsHuZl4mRignJltLEBV1Hu8LfwzUbYPQ2D
F5+bfvfOxCjyAcPBAYwQgcLRBn2wAzDMWs/onT4INLyr2Wmy1kHBavplNxnnbrcS
uPaNTTeq4lhRfCWlABGiymlYVikBPu+zWo+bkaoal9bUBbOuXqld3MwMoSelUtV7
lEO2pj/9UEVyvEURjcbA8bYSfR5V5xT5hpa5UQu3nBIkWyK0gfc=
=ZRIU
-----END PGP SIGNATURE-----

--7ahtoaytbkvpvase--

