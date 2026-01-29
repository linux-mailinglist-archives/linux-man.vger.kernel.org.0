Return-Path: <linux-man+bounces-5011-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OCs1OifCe2k9IQIAu9opvQ
	(envelope-from <linux-man+bounces-5011-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 29 Jan 2026 21:25:11 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 53CC4B4396
	for <lists+linux-man@lfdr.de>; Thu, 29 Jan 2026 21:25:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2A599301E228
	for <lists+linux-man@lfdr.de>; Thu, 29 Jan 2026 20:25:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5550A350A36;
	Thu, 29 Jan 2026 20:25:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Alnmq9zY"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yx1-f43.google.com (mail-yx1-f43.google.com [74.125.224.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C905434F47E
	for <linux-man@vger.kernel.org>; Thu, 29 Jan 2026 20:25:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769718303; cv=none; b=GyhdYo4mbeIpYswYrW+rxfsn9dTeJHAk748chSFmLbLNQjMNesypJLWygUvtKWykS9V4EUD18hAlPhFK5kt7leGf9KJgcbvwBeYOOvm7nTLXlZlE9VnXt/+XUhw0E3Ni+jSuC2MwSqDKlyD3I0B6ARIUfid77xuE6JTsg2FHvoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769718303; c=relaxed/simple;
	bh=PgoGz8X+6VmT0LM69acmIYfqf++evvrGs8pBjT6OvmI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=smL2KEJJnQSCh5KmTBBLU/YVm8RgejhZ++sxPKNtUir23YKSwKWduSakXJXRhzTQhiiizmnnFyX3pjoaPna1VyjZabQGXMNACnCKpMIu6DNYDkuynZEUAera8eEPR0035VdtdTT5N7tz/InQFyJ4GW00rLsEl4KpOJyJfhKwSAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Alnmq9zY; arc=none smtp.client-ip=74.125.224.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f43.google.com with SMTP id 956f58d0204a3-649278a69c5so1515954d50.3
        for <linux-man@vger.kernel.org>; Thu, 29 Jan 2026 12:25:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769718301; x=1770323101; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Wjzma/BARRWeFYTqj5yeCiP/tn0aLdrUzddTVWyLCFY=;
        b=Alnmq9zYsVI8NG2QW/WDtUMnP2DV1vOfbqVwo9yXiBtCI+xtuvuzRfXYSTDrxEwMtp
         57JazDm5pqyp5TCq9uK89F3Y/7ra/gUiihmo7ZZ0wN62RRusABDD66AKUd4+f1gp/Sw1
         IJ5/Au1ORo1PhyyIwDJZTF9+BcvADc1Vp8Ei4uPEvoDxuDevfEk3COolonPv/oq2aM+q
         ddLRompANwSrdFy1sDVQZYEYFrmBnXnfgIDbIbqJAtJjrecCZNc2BAMct9J38iKV7Ah2
         OZT4KUF5p3C70EhgDBBjZ7epva6ITJX7C89qzSxqvdhcv1MYcBu/g1VEZzj5q8cqTzQ3
         0IHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769718301; x=1770323101;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Wjzma/BARRWeFYTqj5yeCiP/tn0aLdrUzddTVWyLCFY=;
        b=poeZMYoRqUkKp8A+qr2UUlvpXIQOvj8E/abcwWMo4+sCfWXwzjqfMpRg5XIrIydCAX
         kbcvlgfH+g4cxhcJT+SSLwLT7LfOZ+Q7/InoXe5a2sXH9JSskIwJQWHr8yFiKWep8RIs
         ZQxE4+dyhlqGuWMCIunZ4L5w9ceZXmX15NDe7jE5Fp452laYrGYuqIVjOQriHM++pitO
         MKiUCG89j+GQ/+iFly2jxnC6uUlYp0cS0mNAs9pSGX4Lxm1l7t2PoRF9cit8dN/ZCaSZ
         eiWAB4uKEkoIjNhuWygigbNzwLYXKxdkp/vwB3GOSLwCvlUdU5DXvpo1b9EMJS+pM0OM
         8QAA==
X-Forwarded-Encrypted: i=1; AJvYcCWChzoFPBYyesTIvvaeUNznBA72vfYqfNLYwAZB3UmSeZL301Iq4KcFalry/j9gaqIyitE6g/TetkQ=@vger.kernel.org
X-Gm-Message-State: AOJu0YwG0gMNau6gha77fKlCfEh1tIerL9zx4OyIo/h2WMzszdS3XBg1
	h0dN4QK9sbi3qVfFCth1igaLc5w5sGCMRN+15dFRkQtZt8aEV9gKQjyw
X-Gm-Gg: AZuq6aLwDttKSNh6flhwJiIlJsPcH8A6fhVPxQAnfqQjuOxhCcVwivtEUKXGuZxzf4S
	ZVlv09k9Y64XurEixuoVirTW3MSJiyDJj8jv8BSYRLw4uT9hWUM1pZRO3CKbHMcOK1awTa2AHwT
	/rL9ZuJu1JTdoTEc0Vt1syoYFIXVjRjFN1z/dpJKmsR5t1CuWAAQDx9aa4qUsLzgk5++PVAmAgP
	ZtChrcvAlXPBl1tpst0VotnMot0TfR0Gvmw6cO1TzJQ7a12is/PRcZ9Nm1yfEizKPkVQlmHOdm6
	919DDJBKouWwkjciEVmT+P0taSIc+JPb8veReu08M8DkjfAdq7hpMdUa5m1oarHArBwgHX6AnU2
	2MG6RTocQF3yS/Xsx/XvvlE+MEWKrNCMaozUt9YjT28rWlSo/SsV+8j8Do2ax9DFz7goVjgAZ6s
	9P
X-Received: by 2002:a05:690e:1188:b0:649:5430:4aa1 with SMTP id 956f58d0204a3-649a83cfeecmr618763d50.29.1769718300785;
        Thu, 29 Jan 2026 12:25:00 -0800 (PST)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-649960e08bfsm2778165d50.14.2026.01.29.12.24.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 12:24:59 -0800 (PST)
Date: Thu, 29 Jan 2026 14:24:57 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org,
	Douglas McIlroy <douglas.mcilroy@dartmouth.edu>,
	"G. Branden Robinson" <branden@debian.org>,
	=?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Subject: Re: New PARAMETERS section in manual pages (was: [PATCH v2]
 src/bin/mansectf, man/man1/mansectf.1: Add program and manual page)
Message-ID: <20260129202457.vuvhcbjp6e3x5g4n@illithid>
References: <cover.1769497513.git.sethmcmail@pm.me>
 <c5da437ce6c8a41c4e5c26ee969170254b49dcab.1769626502.git.alx@kernel.org>
 <aXr1G4Y2VZZO0t3N@McDaDebianPC>
 <aXtuXfFTn2VjD5z3@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qvnhakepx6ybl3b3"
Content-Disposition: inline
In-Reply-To: <aXtuXfFTn2VjD5z3@devuan>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5011-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_FROM(0.00)[gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gbrandenrobinson@gmail.com,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,dartmouth.edu:url]
X-Rspamd-Queue-Id: 53CC4B4396
X-Rspamd-Action: no action


--qvnhakepx6ybl3b3
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: New PARAMETERS section in manual pages (was: [PATCH v2]
 src/bin/mansectf, man/man1/mansectf.1: Add program and manual page)
MIME-Version: 1.0

Hi Alex,

At 2026-01-29T15:31:43+0100, Alejandro Colomar wrote:
> That heading is used in FreeBSD.  There's also an ARGUMENTS section in
> other pages, but parameters is technically more correct.

Yes.  And less ambiguous.  Software developers get into many arguments.
;-)

> I've been wanting to add this section for some time.  It would make
> the pages more schematic, which I think improves readability.

I'd like to propose making it a _subsection_ instead.  Subsections are
under-used in man pages, and for no good reason I can see (apart from
not being documented in the man(7) page of the Seventh Edition Unix
manual that introduced the package to the world).

> What I wonder is wether it should go before or after the description.

By making it a subsection, it can go _within_ the description, as early
or late as makes sense.  In many cases, if you need a "Parameters"
subsection at all, it should appear as soon as you need it--but no
sooner.

I personally feel that at least one paragraph of description orienting
the user to the overall purpose of the page is a superior approach to
presenting parameteric details before the context within which those
details apply has been presented to the reader.

That is also why, in section 1 and 8 (and, strictly, 6) man pages, I
prefer to put an "Options" section well down the page, after a full
"Description", because often, an option's description can only make
sense once the capabilities of the command have been explored.[1]

I think it would also be fine to either (a) not ape FreeBSD in this
respect or (b) restrict this "Parameters" subsection to section 2 man
pages, as the Linux system call interface is indeed huge and complex.
The Standard C library, by contrast, has remained fairly manageable,
with bsearch() the fattest cardinal chirping in section 3.

...as far as I know.  You are well placed to know better.

Regards,
Branden

[1] I acknowledge two schools of thought that disagree with me (usually
    stridently) and with each other on this point.

    A.  Ingo Schwarze thinks man pages shouldn't have "Options" sections
        at all.  I suppose this viewpoint descends from the Rob Pike
        "anti-cat-v" school of thought, which holds roughly that because
        a Unix command should do one thing and do it well (a principle
        articulated by McIlroy), then if you need a command to do a
        different thing, you introduce a new command.  (While this
        principle risks exhausting the 676-element set of ideal Thompson
        Unix command names juxtaposing 2 lowercase letters, McIlroy
        reports that Thompson's own usage patterns--not to say needs--
        were satisfied by only about 100 commands.[2])

    B.  A generally anonymous horde of man page users feel that the
        "Options" section should start on the first screenful of text
        they see in their pager, no matter what the dimensions of their
        terminal window.  (Presumably, pressing the space bar demands
        too much of the impatient hacker.)  This requirement can be
        difficult to satisfy, and tends to promote the creation of a
        subsequent "Usage" section, which is simply a continuation of
        "Description" split asunder to accommodate the horde.

[2] "As the [Unix] system grew to encompass facilities beyond any
    individual's ken*, the task of organizing an ever-growing manual for
    printing became increasingly daunting.  ... * Ken's ken was probably
    the last to saturate.  At the time of v5 [1974], shell accounting
    once revealed that Thompson had used 102 distinctly named programs
    in the course of a week.  Nobody else came close."

    https://www.cs.dartmouth.edu/~doug/reader.pdf

--qvnhakepx6ybl3b3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAml7whAACgkQ0Z6cfXEm
bc7EzA//fqj/7R7RkWlcIDWr+5bx/vbOJTjKj2W3nSap7IOjQvPZiN9wRQPlcQHt
VY8DzxUr0yAk0KVMH1ZjgfFiTY9k9AfQdWtSBMDV5AFsOAKIUk3DF89oBcxlbZ4V
H8DKFIK9v1iAyh8rknB5uNhvBIi15LwGcMMscDYKZTCcm1OD6u5JgBrAsoRGv8Hn
IRvLKbL47RbGZYyeLhOng/vpFGCUXwv9nJpwazkfvTMlXlgtZWpkehS8gptFPDvC
mg99HAbHItgl19KFe2YVWjHieT0BwgO+u9BUMNsCtc6kegUCDM0dDaygfgqSYVew
hjDG3u9w2H4oaEMCjewZxavuPTWET3zvlIvzEkhemRqOwk2nFtmVoksOvHH/1Fpn
P/mIj0twnhL3u4wX0LHHA+HFsdU98/XKHUbUtTagwF0cbmACQovT6Voq39AzZmaE
gbsiByN6SVKitzBUTWNB1cD5wI0GGCrF7VeCjG5+hh3IlKRzCz2VUwUj+CGezjPZ
R3Zryn/+x9BuGrqVnJYVNKLTpfQJpQxXMtesAkj4saV7YLh7jorjktsvRK750ZXe
TsymGBhBmBn3+HmTe4qnvor42vnNoWmkb9iMvJ/sD6kRatgHhwC+OR33pEu0KFRw
j4DrVoc/1PYOIkcRZ73ctkuFw8lUi9atUMTgt5m81R4zhbyvTMs=
=Zl8B
-----END PGP SIGNATURE-----

--qvnhakepx6ybl3b3--

