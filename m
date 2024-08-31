Return-Path: <linux-man+bounces-1744-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B233C96738E
	for <lists+linux-man@lfdr.de>; Sun,  1 Sep 2024 00:16:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CEC7A1C2103C
	for <lists+linux-man@lfdr.de>; Sat, 31 Aug 2024 22:16:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32A1116F27D;
	Sat, 31 Aug 2024 22:16:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cKpooSwa"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9681F15E81
	for <linux-man@vger.kernel.org>; Sat, 31 Aug 2024 22:16:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725142591; cv=none; b=IAxZ3YhxEVwa9b96i06i0uSb6izoFxozZf7jyuQAXzuEhTWXDL2aag24D51VZ0HmnTZsTnKsQrhkEVu9WreQjX5hW9mmreSUAE3yZ2xmxXXQp89FgJVkeeI182+6V4NMvQgBhqZGwiqQ3v7wtX1DWcfDkPpmQTT46UgAlH8hE4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725142591; c=relaxed/simple;
	bh=6qOe5QToi3I5vZdpGV4jQcoH9p3Tre+C0LQFJu45PoY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=O9h/BtPVlUOFWW7/aaBpyFnRKAjeobBa5bYcHX/G6Er5WyljomgmHM/8RI7elvSxPWBt62MRRC+6JO6EQd26EH6ExL9e6K5HVZYF2SZhcttOfp+APAsauArrqKn4C1UI7V1o6uuRHKcD01nyxQ6PAEfggXoMKvbqhyXlxoJ0IeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cKpooSwa; arc=none smtp.client-ip=209.85.210.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-70f6a7c4dcdso1073092a34.1
        for <linux-man@vger.kernel.org>; Sat, 31 Aug 2024 15:16:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725142588; x=1725747388; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=E09I/aOmzm8dGN4ewDPNrDohPhgehFWvVsRHJnlJmdc=;
        b=cKpooSwa0nanWOxVe0lOKamjeu/4vK3/fzz2yyOPgPHXytxTuJnkuBwZYal0npY54D
         4wGgutnjJUiR94XczhNcziY4X0RrdAKUbBfN6QPBd6wM3WGTMAtf4FWNOBiuUTRpibzV
         Qt5+GhM2mcqqrjGnJW4cTrf01sF13HRUjivUGCOxDrQP4tXIvOlce5lkMFpMh+JC+aGj
         HHYsLOXqsT5QxQFABqHtwhR9P5OxCurub7GtLgZpsUyE3bFYWfptqRw54XH+msvO7EIf
         zKhoX0aGLJryeOVQHd+SHTWAy1Nye7TbLHUwWwFtP/qfPSC+tR6m0SGEnA/YEUJH1U8m
         8S+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725142588; x=1725747388;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E09I/aOmzm8dGN4ewDPNrDohPhgehFWvVsRHJnlJmdc=;
        b=T9Do6AFH2LY/u4aeLANSYyScCnU0f8QrFAjZlNmeBN9bSZsiw8DDBH3GIkiV1/Zons
         G+fe7ha8GXH7Yo+vz05bns3Qn4nRlIXNxrCywk1vpNPWjNUA9dtiFE/d44LnzuWGXUJD
         b3V/LAASwq8Im9U5QnH5VDtJvn/5itvKxbsfYnHk3jdTxsQl+j9omBzWKIe4s8R8xJiI
         qXDTguW3EcSa8WPLOnIXSrCr5FnxkgW2ZSlHe1aSPbTX9RS9RpwyjcJuYo+ECMRVZJEW
         UdnHqeVt3kdgfkxSGQ9vQrsOZs29JLz/CyMbQcG9Bi9QABHFnJWps5/OtASc5YrsxxC2
         Yweg==
X-Gm-Message-State: AOJu0YwIJG+ltWi+6ww8c6BVQIFb+YEswT2c8i5mJr2YsPzfYRm7R2DT
	rJ225H5z0yEd4viHQBwVG14oACoIReovYCeD2rNgB5yBqDP7WvmK
X-Google-Smtp-Source: AGHT+IEHTwosP8Q+EVxHae0tk7BwS/i2tkmPbYf591mjM1u9UGfU2tzl8xY9C0VZx4kZxiGtlDQdHQ==
X-Received: by 2002:a05:6830:4410:b0:70a:9876:b781 with SMTP id 46e09a7af769-70f5c4369bfmr11108359a34.34.1725142588391;
        Sat, 31 Aug 2024 15:16:28 -0700 (PDT)
Received: from illithid ([2600:1700:957d:1d70::49])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-70f67142863sm1204005a34.15.2024.08.31.15.16.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Aug 2024 15:16:27 -0700 (PDT)
Date: Sat, 31 Aug 2024 17:16:26 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 4/5] man/: srcfix
Message-ID: <20240831221626.b2t6knmfdqc54rm2@illithid>
References: <20240831182119.wifbdbligob6h3fg@illithid>
 <uqdvw7tsxj2aemaezurnigbxzuvwwbcmw3isnblvlxxtbrf43v@cyihbxxa6xju>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hevdsj4pd6u3cjyg"
Content-Disposition: inline
In-Reply-To: <uqdvw7tsxj2aemaezurnigbxzuvwwbcmw3isnblvlxxtbrf43v@cyihbxxa6xju>


--hevdsj4pd6u3cjyg
Content-Type: multipart/mixed; protected-headers=v1;
	boundary="nwwowghnr6ztzz4m"
Content-Disposition: inline
Subject: Re: [PATCH 4/5] man/: srcfix
MIME-Version: 1.0


--nwwowghnr6ztzz4m
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Alex,

At 2024-08-31T22:57:57+0200, Alejandro Colomar wrote:
> I'm uncomfortable merging this.  The commit message is hard to read.

Maybe I attempted to explain and reveal too much.

> Could you split this change into some simpler smaller patches?

That's harder.  It's a scripted change.  I don't think breaking it up by
individual sed commands is going to enlighten anyone.  But it would be
easy to break it up by affected file...

> >  man/man2/syscalls.2      | 1714 ++++++++++++++++++++++++++++----------
> >  man/man7/namespaces.7    |   32 +-
> >  man/man7/signal-safety.7 |  532 +++++++-----
> >  man/man7/signal.7        |   66 +-
> >  man/man7/suffixes.7      |   64 +-

...so that these become 5 patches.  Would that be preferable?

Also just as well that you're not merging, as a few stragglers remain
_still_.  However, the size of the problem is getting down to near the
human-remediable scale (fewer than 100).  Most look like they'll be
automatically handleable by my "MR-migrate-stage-2-execute.sh" script.

But I see some exceptions--so far I have spotted wctrans(3) and
wctype(3).  I'll send patches along for those, coverting them to tables.

Regards,
Branden

--nwwowghnr6ztzz4m
Content-Type: application/x-sh
Content-Disposition: attachment; filename="find-MR-migrators.sh"

> ready.MR
> straggling.MR

r1=$(git grep -n \
    '^\.[BI]R \(\\%\)*\([.@_[:alnum:]\\-]\+\) (\([1-9a-z]\+\))')
# 1 false positive: _syscall.2
r2=$(git grep -n \
    '^\.R[BI] [^ ]\+ [A-Za-z0-9_]\+.*(.*[1-9].*)')
s=$(git grep -n \
    '\\f[BI]\(\\%\)*\([.@_[:alnum:]\\-]\+\)\\fP(\([1-9a-z]\+\))')

# Some pages are deliberately not migrating.  Also we want to ignore
# roff comment lines.
printf "%s\n" "$r1" "$r2" \
    | grep -Ev '(tzfile|tzselect|zdump|zic|time2posix|bpf-helpers)' \
    | grep -v ':\.\\"' \
    >> ready.MR

printf "%s\n" "$s" \
    | grep -Ev '(tzfile|tzselect|zdump|zic|time2posix|bpf-helpers)' \
    | grep -v ':\.\\"' \
    >> straggling.MR

# vim:set ai et sw=4 ts=4 tw=72:

--nwwowghnr6ztzz4m--

--hevdsj4pd6u3cjyg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmbTli8ACgkQ0Z6cfXEm
bc48Qg//QW4RMR6QGJml8x2G6J1Yo8oprrCSHT0KUZH0+DMp7WMCh0GEi79gnRgy
ud+uANom2B82L3AI/OGXQBjXV3KmphNJ9Y/Z9ggN1d8jikHjPdZuSV88iTLtjDDO
hE4KQEgK6OGpESnZ9JgcKJNVFKwCyTnoW9t40pbexwrsosKlvx7577WQX3iV51uh
D1c5aPRs8fUFtR3xCAMp/QxRPfsbttbk8Wq+XagC7PKYnUpKnJ0t4k4fzU77W0gm
lwf2pwaLXLAiv+066dmgVH5MqfZn5HOzUQL0bKhrzActOayqrBrn4iIJZS/QG5b5
mcaAOu/tfNtFdUybV9HEivMCRY1Ot6kN8lpSv/1PhwRraDksGs7IWI5hGfWWQWpV
LHoKSgDCK1d1w/x+Kb+21ddmz8EoMilh1HSEdp1r26ZRWIKgIXxIxh4CKRftjubX
2fjtIqG7jclk3eRuZMHLmMisMnIcKxzLAtw4B9CG8P3YqCbA5xab9xQSjoeL7U4P
dBOLq0ftVFGCeYNZvSdPVGwNRseBfnZLSf4d1Ha5Ev5BhCzID/qeJeqjn+8JT0a0
d1e6slWfCBCeXHdL5DsZ0uz2enTWrVYCUv2RMPON7v2T0Gok5cZbg16NvjMUk8L0
EJQPrbX+Sro7HnOzVONC28vbRsEzCnBqonSDCE+tOWBqJHNn7tU=
=5MLw
-----END PGP SIGNATURE-----

--hevdsj4pd6u3cjyg--

