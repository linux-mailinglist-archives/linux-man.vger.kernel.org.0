Return-Path: <linux-man+bounces-4972-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IJNPJR+jeWlRyQEAu9opvQ
	(envelope-from <linux-man+bounces-4972-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 06:48:15 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D7D0B9D3A2
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 06:48:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E4AE7300F5DB
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 05:48:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43472275AE3;
	Wed, 28 Jan 2026 05:48:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Eixk0WB/"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99E15136351
	for <linux-man@vger.kernel.org>; Wed, 28 Jan 2026 05:48:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769579292; cv=none; b=G8w5BJwCKVkvHkqQ4UWghX0RCuRSIiQN+aax8o0O25AmkmYMQvHYAr3U/Nh8HpQQ/Pc2io48ZwzVdY6bnL8IevTI/c33m7kAliu6f4qUZEp2yM93oiTy0WlmYjc4rwEkhfwevJ1+JQ8JzafLxubpMjhPCMMyXwziv8I3YS/xclM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769579292; c=relaxed/simple;
	bh=Tpc5oY/k5E4oBcSEzGg6Rg6vmgZUzkaEYZsFdrx7hGU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DuhZawUtFXcuT2cvF62ey85AsoCEIbSha8ThvghiCmCR4b6X7hJcUltEIlipCXosuY46+EFrN0ntt8lbZ2KELMXakLgo5EhSzL5ZvgQrPUndtXm89oxPez7V61K2beB9VM1UYBnUtE3KOwBiDMpAOunoAyJpyv0B3hHLhQBFp/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Eixk0WB/; arc=none smtp.client-ip=209.85.128.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-7945838691aso7224977b3.0
        for <linux-man@vger.kernel.org>; Tue, 27 Jan 2026 21:48:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769579289; x=1770184089; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Y8QNTSIqo5TWZZXeVIE0Y4s40XevrEpwgMIm00wb/dM=;
        b=Eixk0WB/WshvN2Iv5hXcpK4i1BO4C9fqmf29cRCA2nXpI8TOtz1FSDfs2HBuE6Orqh
         N+W48bkCR9EndyB00qcZabrjAsF9aWw6Foi7mvOH2EA4doleHNa4/3EtN/ovO9aYsdhn
         TVud+OrM/XL39Jla0QhmKUgki5Bvlmw8w5wfOl0UEBUisot0leo7DJ3GCgMamIntxKen
         WqxwbnwWxo5zi83XXgKVeN1+BQbVC+wf5V5p2xCzF/x9ewSq+EA5sBz5WeA4hOcEk+/j
         iiXdRMPQhnsFlXa/RLGyEyoHRl5sj0drrcpuviTudbZFzn/sTtYDWs5c12fEwxW2LvB4
         R3Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769579289; x=1770184089;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y8QNTSIqo5TWZZXeVIE0Y4s40XevrEpwgMIm00wb/dM=;
        b=n06L4tkSHS2ZLt5fEFN1gcixpBhNNN/bHOX9hwYZqJLwpsVtxWUd2kloqCo4fV4YDY
         JSY8G2HhlNuBe0NkKEZKfEOqLgZPjiscgLlxlhTmorfKDmc+WFvzRRWLref1W4/xtV9b
         6HwtM0bv9uxdYgyi2me28/pKsVZ6RxJXRItDnZiqWJ42yEg8nA6Ax3/vYXYKrkKGKhdP
         UL/4lLBeDoHClT6rXMl1XeWZKoFkedE8M2Ykm16frhFgl9V2OyxOdmO3W7O/UW8nj9Rc
         0PtDT+4hJPdeKK5Q0AcRfiW+M4lOG1O34DzkjhaLNJ4M6BQXlb3bOe3wh9chAA4RnHSI
         /LIA==
X-Forwarded-Encrypted: i=1; AJvYcCUxZAeAmo0EMU7Q5ZUwpL+35f7AteicTk8BjLjl+BYCFgFwAOWQYqDqpYOnPaivUHlE2iNRYWO6sBQ=@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7hOzqH9Z+1CG6ffJXt5U7Rh6vByzy1QZu7ir+jqRqPD1jKThH
	wYJlcgQ8W3ORT3CSSKUQ/jzmEHb4mhIxbZh4AqAyIdsw76yvsyXJ7C8F
X-Gm-Gg: AZuq6aIluix3uYXr0IDQ93tF5XdvIV2FoKjA3oCFm/yXJVhEnJKJd1CapC89gpPZHQv
	QQH0kaRIrCC/nprfOHiYpAZuoCmMDoptkA94pr5F1GVvpsWSQZBwW2WOAJKV/03r2Zf0+/haT/r
	2k0V1mByfgJ8Ii0IwHvnwqbdrPvFb8QwJIVALSthqPlpmcwmfUnsXWwA2HXhZqzjtONrTCj2T9k
	2R2zsNEedj3Hil5noJCzAsW/hkKdUUUopawGXeDY3gOpToBjtyk69pxObGtboY4bKx3+dOZa5/N
	Y4GZhXpOePF8Q3O5kMZMCej58mQICAyqA3ywS6sskTc5A3Glfjf0fIu7dw1jUy4y5R6zm0AiUOU
	Jscm5zZJnPNES+ZtzIPZqQhTRQjFGPFqTQKlEhOg9IGJRkyQGsRj/uPf8fdhh32uRmle+sySaaK
	It
X-Received: by 2002:a05:690e:4005:b0:644:50c7:a50a with SMTP id 956f58d0204a3-6498fb13068mr2904492d50.32.1769579289540;
        Tue, 27 Jan 2026 21:48:09 -0800 (PST)
Received: from illithid ([2600:1702:7cd0:e980::48])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-649960efc6esm460176d50.17.2026.01.27.21.48.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 21:48:07 -0800 (PST)
Date: Tue, 27 Jan 2026 23:48:05 -0600
From: "G. Branden Robinson" <g.branden.robinson@gmail.com>
To: Seth McDonald <sethmcmail@pm.me>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
	Douglas McIlroy <douglas.mcilroy@dartmouth.edu>,
	=?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Subject: Re: [RFC PATCH v1 0/2] New sman(1) script
Message-ID: <20260128054805.4mzljvngjixsd22m@illithid>
References: <cover.1769497513.git.sethmcmail@pm.me>
 <aXixqbsZcY-tbCJ4@devuan>
 <aXmUPal6Owzv8eDr@McDaDebianPC>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kff5rnzzoqejzzsj"
Content-Disposition: inline
In-Reply-To: <aXmUPal6Owzv8eDr@McDaDebianPC>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TAGGED_FROM(0.00)[bounces-4972-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gbrandenrobinson@gmail.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gnu.org:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D7D0B9D3A2
X-Rspamd-Action: no action


--kff5rnzzoqejzzsj
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [RFC PATCH v1 0/2] New sman(1) script
MIME-Version: 1.0

At 2026-01-28T04:44:53+0000, Seth McDonald wrote:
> On Tue, 27 Jan 2026 at 14:47:40 +0100, Alejandro Colomar wrote:
> > On 2026-01-27T09:20:26+0000, Seth McDonald wrote:
> > > G'day,
> > >=20
> > > When parsing man pages, I've noticed I'm often only interested in
> > > a particular set of sections within the page (e.g. SYNOPSIS,
> > > HISTORY).  And since skimming through the page to get to these
> > > sections can get monotonous, I wrote up a small bash script to
> > > automate the process.
> >=20
> > Agree.  I wrote mansect(1) for the same exact reason.
> >=20
> > > As far as I can tell, no program in src/bin/ can currently do
> > > this.  The closest is mansect(1), but that outputs the source code
> > > rather than the rendered page.
> >=20
> > You could use mansect(1) for that, and pipe it to man(1) (or
> > groff(1)).
>=20
> I honestly have no idea how that never crossed my mind.  Seems so
> obvious in retrospect lol.

I have ideas for tackling this problem in groff as well, in a way that
has the potential to be more powerful and selective.

https://savannah.gnu.org/bugs/?66401

One of the goals I have is to automatically generate link anchors for
all `TP` paragraph tags in man(7), because these are so frequently used
to set keywords, literals, and other parameters (like command-line
option names) in lists.  Roughly, these are same sorts of things you
want to have index entries for, if your man pages were indexed.  That's
why perlpod sprays `IX` calls all over the man pages it generates.

But approximately no one, as far as I know, ever actually _generates_ an
index from perlpod's `IX` spew.  (Caveat: I'm not a close observer of
the Perl community, so might have missed people doing this.)

But you don't necessarily _need_ an index if you have hyperlinks or a
tag/anchor search capability.

One of the reasons I haven't given this project higher priority is that
no one's been urging me to work on it.  Another is that to implement it
in a way that doesn't cause me to tear my hair out, I think I'm going to
need a new formatter feature--a string iterator.

https://savannah.gnu.org/bugs/?62264

The last time I tried to tackle this, about 18 months ago, I ran into
problems because I didn't understand the formatter's internals well
enough yet.  Many refactorings later,[1] I'm gaining confidence.

Another possibility is that automatic tag/anchor deduction can be a
stretch goal.  Dumping partial man pages on a per-section basis _should_
be easy.  This is discussed in Savannah #66401, linked above.

None of the foregoing observations or plans intends to obviate the
utility of mansect(1) for anyone.  If it works satisfactorily, use it.
But if people encounter limitations in it, and those seem solvable only
by getting a deeper look into the formatter's brain (program state),
then the time may become ripe to work on these tickets.

(Regardless, I want to attack #62264 because string processing in *roff
is pure hell, and inflexible too, because diversions can be "handled"
like strings if you tilt your head right, but only in limited ways.)

Regards,
Branden

[1] And a great deal of forced learning due to
      https://savannah.gnu.org/bugs/?63074
    and
      https://cgit.git.savannah.gnu.org/cgit/groff.git/commit/?id=3D52f93e6=
9dddb39bbfbbf7c43e355538e35b8edab
    ...which both taught me a lot.

    You can (in groff 1.24.0) take an NMRI of much of GNU troff's brain
    in vivo without needing to use a debugger.  I consider that a win.

--kff5rnzzoqejzzsj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAml5ow4ACgkQ0Z6cfXEm
bc4fqBAAoou1Ja/tSCe4NhKfh3NaVDiVMNXVN34WUp2yz8MDwadtcuSQxQBMow/E
FKw4UlL20iGc8mSgnJy1WbGJElJTDYy6DLfbkoihikJyGcmR+Z7HeRQv6w/+ETI2
xxtkAoMBf6fopy/VmFyGjfywHRr5dRqw3k19DNcXvez/Y9syHqGMeXsq2cfKs4jI
1/TJKuVeM040V4sjjfju8acWMc6onFgRI1YlfDxbGPEu+/AAJ5gkxV9/5g+S96Ng
TkVc5K9ESJPRznfrMM8KRTMGRpR2ALvXnzw/kN+z1Xg1k3FiXxx0a7y+SvAa4Nb9
ZwzXtUwA4ZJJU9UZMpaq7peeL/6fVQzKbMYwn45HXkFjYUlnEZbJF3/DD6vJi/dB
Hi202PI1d5f4ERuMFMWdsobwGBNq0qB/h9LwBIU/4iEeezaCeHJu3wIB5zdk9VG+
vmjhy+eeNyoNXNsZk5VA+y5+zjx2ehITzvwWemmtrEPNvel5bZDAPdb1IHG45BCp
dnCxfess9qu02SIu/0avcTwMoDr2Cun50wgH94d8gc4EaSmdvjG+hWbbZptHhodI
l2MnTt533MYPFPXlXiT2KttW9IxMN9oc6kSVHgqFaAQyd39Epz1RhTTw7ImI844R
cAOsSTQcYK91Hyh8SHszLtkrAG8nL/OuHezfruavKUX4Bq7HrmY=
=4VEn
-----END PGP SIGNATURE-----

--kff5rnzzoqejzzsj--

