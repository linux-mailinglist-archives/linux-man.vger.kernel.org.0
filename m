Return-Path: <linux-man+bounces-1548-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C8F7593E108
	for <lists+linux-man@lfdr.de>; Sat, 27 Jul 2024 23:09:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 57D2B1F218B4
	for <lists+linux-man@lfdr.de>; Sat, 27 Jul 2024 21:09:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36D2B2C69B;
	Sat, 27 Jul 2024 21:09:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Yss8cIqH"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FA30125DB
	for <linux-man@vger.kernel.org>; Sat, 27 Jul 2024 21:09:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722114572; cv=none; b=ITxvA3KTqtG4MYOkAYB0nKFI2VgK2LBokuTvFnAaAhg2/1GNzoDOrrVdYQy4+2gwzF8yEa7MwTMgdWL/+T0WvI9PcDsskobechqPzRMc1OgqU+mux1LTxSvA1FgeSkFlcEeZ2j6on91dPfgapW3NA2/UpqoqtJR0wBcAom9xmGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722114572; c=relaxed/simple;
	bh=seKKR91wchAoWFFkjTCnyy5bBbZhnqMaKanRoBGxEBw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SIQSu4XtNRPucOuA5R/uX/2iADb8+VBDMR9eIoE52qeVrTZrykJOfmpAYDYmvVfs9gS95htpQUit0jw6yM6kboqUoDywfcEeBEHMpZl4iwDh81DNQxQ93Rm3vaindLyjUNCkB1mgWDgsmhQD1v1Ii/CUllkZEVSETSyjT0Kd0PE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Yss8cIqH; arc=none smtp.client-ip=209.85.167.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-3db16a98d16so1399515b6e.0
        for <linux-man@vger.kernel.org>; Sat, 27 Jul 2024 14:09:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722114569; x=1722719369; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NjNs9ZXMz5433npm4DeiYlbiUqR78+/C3weRxeDFwDU=;
        b=Yss8cIqHa+Lw3cxN+5Mb8se+2Cgef2OMtFGhk8T+HQTY18O9KPWthFTZjSrw4L9aXf
         14QQmrq/P/Wv+FcGwKSeAYynQUfOww4AFqRwb6LR2kZ+c851n+KkFlh/8iPFvThqki8z
         A/tIHFmPWv77m1/YxPk2cgVGrMumKtanwh2nZlFZDinbXsn+ulm5jQCENY4Mrx69CZJG
         X8bHmV9YXS3lgtHL8uV0Scdiok1l7dLpbimvlJZjhTVr3k7s0yLHm8ppv4JCPLswXjay
         KBvDgJ2JRhyYFiBZcRrznhwR93TKfG005YUqLI8NpPKM09msaFnpnJD0prDds0nsm2hx
         V4tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722114569; x=1722719369;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NjNs9ZXMz5433npm4DeiYlbiUqR78+/C3weRxeDFwDU=;
        b=aCFdJXEHAIgy+WhSvXBsxcYceGhHMAlmFWAPgtCjRuTw6KVryVKpZCMS4iwsiHdQ2o
         goRKrQHBixO8SRs8mKFtAcG1WLvb58SYemquany4uyqSvspbR1mLu3/92M5YfFNHeSUQ
         QTcYvmLH+VnAxLHZpML3v9k2a1p+KEJ+Qh8Bb+svAig/nw1tJTUyXtyBlVyGA/KNhL8v
         FP4WxdqzAuq8TZItDuXIoa7dsxtPgzjqV/OUQzKCDvYrpEHRv+kDMGJMjWXjRpE2xPNR
         gIRyjy8rAh22G8+H+pwZD3hGCrGSN8QmQu3IoWgab3qakAkoZ/+XyzE3R9apGPwX8Nkh
         Dpog==
X-Gm-Message-State: AOJu0YxU29McEFW8MNFCqJDcXinGX8DkDaR+btkYZpx76Q8GYOCv8LmM
	3upCzKvih4+LVwxILvfs0yktqtKWc2rp8nK6/PkoBVfB94GqZYby85++gg==
X-Google-Smtp-Source: AGHT+IFvz3wsjYe9Bx9rMNjmevteVYazeFMkzImKVWg5sAAUa/gkTpB83w3GHhR7a8JfyD4jdtQ48g==
X-Received: by 2002:a05:6808:120e:b0:3d9:350b:4159 with SMTP id 5614622812f47-3db23a7dd63mr4422062b6e.31.1722114569445;
        Sat, 27 Jul 2024 14:09:29 -0700 (PDT)
Received: from illithid ([2600:1700:957d:1d70::48])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3db1351d84bsm1311192b6e.44.2024.07.27.14.09.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jul 2024 14:09:28 -0700 (PDT)
Date: Sat, 27 Jul 2024 16:09:27 -0500
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 0/3] man/man2/syscalls.2: srcfix (0/3)
Message-ID: <20240727210927.d3iiwpbvkvtp2mzs@illithid>
References: <20240727192727.ldyru77nzhq56r6r@illithid>
 <c4qi75zodfn6dxffy5nvqpqj6uagjeuzq6vsnis5q2lam4eyfj@45vgiyz3wlrn>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="e335ry2i6gka3cee"
Content-Disposition: inline
In-Reply-To: <c4qi75zodfn6dxffy5nvqpqj6uagjeuzq6vsnis5q2lam4eyfj@45vgiyz3wlrn>


--e335ry2i6gka3cee
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH 0/3] man/man2/syscalls.2: srcfix (0/3)
MIME-Version: 1.0

Hi Alex,

At 2024-07-27T22:30:54+0200, Alejandro Colomar wrote:
> Do these changes only apply to syscalls(2)?

Yes.

> No other page has anything like that?

Yes, there are other pages with something like that.

man/man3/stdio.3
man/man7/namespaces.7
man/man7/signal-safety.7
man/man7/signal.7
man/man7/suffixes.7

I have a script that pattern-matches macro-style man page cross
references and font-style cross references.[1]

Here are the counts for man-pages master:

$ wc -l macro.MR stragglers.MR
 16193 macro.MR
   892 stragglers.MR
 17085 total

After this patch set:

 16696 macro.MR
   389 stragglers.MR
 17085 total

This series is not a total solution, but it takes a bite out of the
problem.  Further, I think I've finally got a reliable stack of sed
scripts and a procedure that shows my work and is easy to use, so other
tables with font-based cross references in them should migrate with
greater ease.

> BTW, I prefer if the patches from a set are replies to the cover
> letter.  :)

That's difficult for me because I generate the series _first_.[2]  At
that time I do not know what the MUA will construct for a Message-ID for
item 0 in the series.  Do you have a suggestion?

Regards,
Branden

[1] $ cat find-MR-migrators.sh
> macro.MR
> stragglers.MR
# Deliberately non-migrating: tzfile.5, zdump.8, zic.8
git grep -n '^\.[BI]R \(\\%\)*\([.@_[:alnum:]\\-]\+\) (\([1-9a-z]\+\))' >> macro.MR
# 1 false positive: _syscall.2
git grep -n '^\.R[BI] [^ ]\+ [A-Za-z0-9_]\+.*(.*[1-9].*)' >> macro.MR
git grep -n '\\f[BI]\(\\%\)*\([.@_[:alnum:]\\-]\+\)\\fP(\([1-9a-z]\+\))' >> stragglers.MR

[2] $ cat ~/bin/man-pages-format-patch
#!/bin/sh

mbox="$HOME/Mail/Drafts/messages"

if [ $# -lt 1 ]
then
    echo "usage: $0 BEGIN..END" >&2
    exit 2
fi

git format-patch --to='Alejandro Colomar <alx@kernel.org>' \
    --cc='linux-man@vger.kernel.org' --stdout "$@" \
    >> $HOME/Mail/Drafts/messages

if [ $? -ne 0 ]
then
    echo "$0: problem" >&2
    exit 1
fi

git log --oneline "$@"

cat <<EOF
Patches generated in $mbox.
Will now launch neomutt; use '<ESC>e' to send.
Delete the draft(s) afterward with 'd'.
EOF

read -p 'Ready? ' junk
neomutt -f "$mbox"

# vim:set ai et sw=4 ts=4 tw=80:

--e335ry2i6gka3cee
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmalYf8ACgkQ0Z6cfXEm
bc55QQ//f1Ez+P754G1+2UjQy1nRNuSjoulZOr4VXgbLQEg70OQVQpVxDcZSUiRT
G9HUNIp2iPvaJxYfVv62ZTjLCbtF842ZCqhsxm148o7MUOt6YxVO7SmkachgNXRG
fYLPi04r5XV9Sbe9lhpcm2lmGoFzjZzA0GVEsjni2S2rpnzCHXTg7q9Ov5y9cs/2
gALpvO/ksY1J/liCKmudueHPLkenK16H2b9JkD8c2HwILP/UspBtuB9AbdY9/CqB
Dd6V8J0/rShfWB9zlA7dqR24AyVN7/MUOkhwGDzAg2h06Gp1AQgU5pYYKiUdAdwj
ZMcQbF4npaFQmiIRy5KorHzxpYh8pEBeZqyiTbqrSVT2paBopxvWcNkpMmy9/gpa
Kov4hf1XLi+2E24XQs/wM6Bjlmay+K3ZWrp8c/567BKswDv2/9Amo4vJKLEOpqfx
GCey8NUMrBXtr3qj4Zugh6QcjgaVGP3prM5dY6xhb5Sx79wNAZpYcUobPUuPLQVf
TKxevBE75VhBFP9F6UR1idsC58C6TIxUbFzuPrIEkuwsvZr8uYmaaijDXiMUn/XM
ibmAAWCtEU1KIL7SqGfklT7iHGOQdJzzPk3m4Tu8ibeWG7Qfib/2GxaLrWHu057i
jB+J9JUHaO7wU9a07zolitYGwOlzw74mqpLGV2AdeRvz6pEErwM=
=LM7q
-----END PGP SIGNATURE-----

--e335ry2i6gka3cee--

