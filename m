Return-Path: <linux-man+bounces-912-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B52C18C5B73
	for <lists+linux-man@lfdr.de>; Tue, 14 May 2024 21:07:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 41DB61F2239F
	for <lists+linux-man@lfdr.de>; Tue, 14 May 2024 19:07:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F571180A8E;
	Tue, 14 May 2024 19:06:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nvHQ6Ltt"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DBB21E504
	for <linux-man@vger.kernel.org>; Tue, 14 May 2024 19:06:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715713618; cv=none; b=NdN29JEOG5ZHh6QlcAWwIY7y3Tet3c/Mm7Zp/i+4OEMC3om7/KxQlpK0br4pHhZzghsIEItmwoVFDnQUNrrOltqqykTO1mWudL2st3/UOOYPVhF0h2zaDsvnqjDfSQ1Q1/rp7KWj80ZvokU6FJBjWPkNdV/IqBs+pFMz6+JtV0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715713618; c=relaxed/simple;
	bh=1Zx1QHhiegY/ljncmKOVcYj6qgR+yjy6DLvZI1HgYuw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Xy/EkhgRaGcGJveuqQEKxqNik6FpQ/H7wQOIqc9gIsR2VPPzWJcqPjBtj08rYmnhBkH69i7kwsq5HRCTIixzzOTKJzyuhKSZgcKt5YvhD0vmb/U03ugTbuh8GLJ59EvHlFJDQQJ4YkAdEDLDKNkUd49BIqj4z+4a+y6K9UxCHKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nvHQ6Ltt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE1F8C2BD10;
	Tue, 14 May 2024 19:06:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715713617;
	bh=1Zx1QHhiegY/ljncmKOVcYj6qgR+yjy6DLvZI1HgYuw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nvHQ6Ltt4wvJCgo/TMg82CgYvMqHLiznC81jWPB8cyRjyIBm27UtCSKgKqcea9Do/
	 3O4nrZnyYTQ8lvYtzEif1Jz9GfkLSMg5crPdKfuQ992VKcb1SuppGmOjK4KCzlUT8v
	 MzRwG1M6YAq77WzzrejDBhcaQA5s5Jv0VxcTHecgTrWuL410FAIjzf8onpqM9tfaM3
	 r4+t4b9zexSbSkRgZvJaBDHsxPMz466wXTo3bnOvIqYiJ16RvTDNlrtylaWIZTHbLY
	 Z1c98cawq098NZVpLZSbihYBhMWYvNbE8e4WwZHa9WAKFsxIlo2PtBN5UbrBZImtr0
	 ORQ6s3W6ZdkXQ==
Date: Tue, 14 May 2024 21:06:54 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Matteo Croce <technoboy85@gmail.com>
Cc: linux-man@vger.kernel.org, Matteo Croce <teknoraver@meta.com>
Subject: Re: [PATCH] proc.5: document 'subset' mount option.
Message-ID: <pvdvga6qc2dov7uo3r73epgs72hzwv5ioiya3jl6eddqxwsbaq@uk7xau6ljj4h>
References: <20240514175449.68721-1-technoboy85@gmail.com>
 <jp6oa3ge3qs2kl77kg4p5ns6u6yob5qyomhbdbqcoti55cj3je@tieeceztop3b>
 <CAFnufp0rx-OyfpYmTDGCXHDmB6XSYE_hbF-1s9WCd3UtLw0nUw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fvi4gdgu4pxb5w3v"
Content-Disposition: inline
In-Reply-To: <CAFnufp0rx-OyfpYmTDGCXHDmB6XSYE_hbF-1s9WCd3UtLw0nUw@mail.gmail.com>


--fvi4gdgu4pxb5w3v
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Matteo Croce <technoboy85@gmail.com>
Cc: linux-man@vger.kernel.org, Matteo Croce <teknoraver@meta.com>
Subject: Re: [PATCH] proc.5: document 'subset' mount option.
References: <20240514175449.68721-1-technoboy85@gmail.com>
 <jp6oa3ge3qs2kl77kg4p5ns6u6yob5qyomhbdbqcoti55cj3je@tieeceztop3b>
 <CAFnufp0rx-OyfpYmTDGCXHDmB6XSYE_hbF-1s9WCd3UtLw0nUw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAFnufp0rx-OyfpYmTDGCXHDmB6XSYE_hbF-1s9WCd3UtLw0nUw@mail.gmail.com>

Hi Matteo,

On Tue, May 14, 2024 at 08:43:49PM GMT, Matteo Croce wrote:
> Il giorno mar 14 mag 2024 alle ore 20:08 Alejandro Colomar
> <alx@kernel.org> ha scritto:
> >
> >
> > What is the accepted format?  A CSV of pid numbers?
> >
> > Have a lovely day!
> > Alex
> >
>=20
> Hi Alejandro,
> It can only accept the literal "pid" string:

Then 'pid' should be in bold (B), not italics (I).

> # mount -t proc proc_pid pid -o subset=3Dpid
> # mount |grep -w proc_pid
> proc_pid on /tmp/proc/pid type proc (rw,relatime,subset=3Dpid)
>=20
> # ll -d pid/{1,$$,cmdline,version}
> ls: cannot access 'pid/cmdline': No such file or directory
> ls: cannot access 'pid/version': No such file or directory
> dr-xr-xr-x. 9 root root 0 May 14 09:43 pid/1
> dr-xr-xr-x. 9 root root 0 May 14 09:43 pid/25146

Hmmm, makes sense.

So, it contains:

/proc/<pid>
/proc/<tid>
/proc/self
/proc/thread-self

And all others are gone, right?

Is anything else included?  Or is anything within those dirs gone?

Have a lovely day!
Alex

>=20
> Regards,
> --=20
> Matteo Croce
>=20
> perl -e 'for($t=3D0;;$t++){print chr($t*($t>>8|$t>>13)&255)}' |aplay

lol!  It keeps funny for a surprising long time.

--=20
<https://www.alejandro-colomar.es/>
A client is hiring kernel driver, mm, and/or crypto developers;
contact me if interested.

--fvi4gdgu4pxb5w3v
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZDtkgACgkQnowa+77/
2zLekA//frQ2ISM/rjfW86vdBAjfjU+BliccAUj/AxD4uRpmDPhU2P/3LO9SDOSk
h9KBaxOUqVI55/3NCfk4LFi6+jg6bm4wd2ShZwYB4fLmZ2ceMQNl7uBdJv2jAqS8
wF7DXxCGtAfjW5qvnrAJ1577CHDWwvY9lE/T9TgEvHekXCLmSkBmsh0sXJ4Z9vi0
9THSEVDV4U3m4WPz8Re0M8/LvKakqXzMKAsscdYmRiEGLJBEpeoB49kU82zOM4O7
0Xvh+kQUxZLA3ZoeK3DvYMlfC3rgRpDRWIwiJP50sabi4bsmUNtCb1Z1GU7IepOf
oAKVx1gU8Jvl9vv9BV+gLBuI8PMSAxn7E2TTUDkcWh336ivy9GOUtHgHdbQ9bZ2H
00HtDocdyRJNAXJ+h3eecuyNOjCxqTDeW+nYVk1+vhOnCwV9Y8OkHjfu79nyRNe5
IqyflYvuc1TaAY2kJ7bvde4PWUWK0jbM5mpgmLNf1FtHUkG3hnQ4F1XtM+4sBKWA
1+OK0eCPS7rXIzGzAhCcyayDBiufJcCy+xCkiU5RbuZYJuyTy07EamgbHGnIcVJf
z4eI/VAyOtLnX/UZ6Zv2LEspogcBS11/9MqkFWdH0DLzUnYHvJY0LJyh5kJUGexg
ir+4W+X+LX/Y9soSgjZ8K+/vPkOCHVCkqxyzrrilERw8V8WSDnw=
=SFZq
-----END PGP SIGNATURE-----

--fvi4gdgu4pxb5w3v--

