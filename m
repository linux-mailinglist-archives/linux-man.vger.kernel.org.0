Return-Path: <linux-man+bounces-4990-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uGuOOe5Bemmr4wEAu9opvQ
	(envelope-from <linux-man+bounces-4990-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 18:05:50 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F5CAA685B
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 18:05:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 90856304A54E
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 16:56:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6942733F39B;
	Wed, 28 Jan 2026 16:52:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="aSv0chSv"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95DB1303C86
	for <linux-man@vger.kernel.org>; Wed, 28 Jan 2026 16:52:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769619174; cv=none; b=C1GiRqtHaR9H6kxLSpdAnXAUneofmfrapPDHAeIe9oiH9FQIWCOsB+LFH+LhjNqOamoA2cHwRVL5CZMqoeQl6zY7mQf83VY1iaopyYQ1JfzGa8yzEIE9Wy+2Nhp1v/Tv77SCTQ7HT6zSHe7+eFpafQQdORAJJuflqmsxmMfz6os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769619174; c=relaxed/simple;
	bh=jSKwKwx74OUot0AD7bT6wmuSDQp/05ekMaXliYJuGxw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fbq7UNfEd/JSXIFeUwdfHpHd6S6+FzIAb77ZoWQngZypUmk7YfYd3Hgl0zcIgX/WCSpyol8bAN1DRYTRqQ9aHa4BRyrwq3hwiybY1rM8XCH9f149kM62DkMVzKdB7PYKOEcjSQQxeFGhBbO/sHCxvSFui/aRUC5TUI4vpmZEVi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=aSv0chSv; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202505; t=1769619136;
	bh=jSKwKwx74OUot0AD7bT6wmuSDQp/05ekMaXliYJuGxw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aSv0chSvpijERnaPmYf6VrWVAWxc4Bb4LfqIpJdPoe1s4mnf0XxAgPiV0LRFBasHy
	 3DZ3NIgf8NoHez70Ek60lXe6NF893OJryWcaI27joVW+jYlPWaBchjtB6KrVnbJS1F
	 CKRevyP9oBusgTi67T2cOxPnCY3lprEBcb84jSmcqRnvW0KkgNNhJBP+U+KBKXg1Fh
	 db+l0948TZd08odiiu/+bLhYGEWFz4jfgi1EIkziu7EXviwDMOR6xP5n62Ce7i7Yi1
	 dubA0C6sur/+VXRM1Zt6kA7Ny3GKUzbugU8nzbIRltXI5OwsvzC0vkWsEGhZ0Oy2un
	 t9eFbGU9LrcQw==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 41313F0A;
	Wed, 28 Jan 2026 17:52:16 +0100 (CET)
Date: Wed, 28 Jan 2026 17:52:15 +0100
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Seth McDonald <sethmcmail@pm.me>
Cc: Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Subject: Re: [RFC PATCH v1 1/2] src/bin/sman: Add script
Message-ID: <xclnrhc3q3kub6gqhd64difkyls74zcqmhnpwov2dwzrsghjg3@tarta.nabijaczleweli.xyz>
References: <cover.1769497513.git.sethmcmail@pm.me>
 <d093a884e5fbe60d62c35189ac38de5a6b0005e1.1769497513.git.sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ezu5rc7d52pn3n7j"
Content-Disposition: inline
In-Reply-To: <d093a884e5fbe60d62c35189ac38de5a6b0005e1.1769497513.git.sethmcmail@pm.me>
User-Agent: NeoMutt/20231221-2-4202cf-dirty
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-4.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nabijaczleweli.xyz,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[nabijaczleweli.xyz:s=202505];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-4990-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[nabijaczleweli.xyz:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nabijaczleweli@nabijaczleweli.xyz,linux-man@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[3];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5F5CAA685B
X-Rspamd-Action: no action


--ezu5rc7d52pn3n7j
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

You wrote it confusingly (if I wrote it like that it'd be on purpose;
 I doubt that was your intent but that's how it reads),
so I isomorphised your program into third normal form:
-- >8 --
#!/bin/sh
#
# Copyright, the authors of the Linux man-pages project
# SPDX-License-Identifier: GPL-3.0-or-later

name=3D"${0##*/}"

# fail [error message]
fail() {
	[ $# -gt 1 ] && echo "$name: $1"
	echo "Usage: $name [man section] <man page> <page section>..."
	exit $#
}

[ $# -eq 0 ] && fail
[ $# -lt 2 ] && fail "Too few arguments."

command -v man > /dev/null 2>&1 || fail "Failed to find man(1)."
command -v sed > /dev/null 2>&1 || fail "Failed to find sed(1)."

[ -n "$MAN_KEEP_FORMATTING" ] && export MAN_KEEP_FORMATTING=3D1
[ -n "$MANWIDTH"            ] && export MANWIDTH

# There are currently no man pages whose name starts with a digit.  So
# its fair to assume that if the first arg starts with a digit, it's
# referring to a man section.
if [ "${1#[0-9]}" !=3D "$1" ]
then
	msect=3D"$1"
	shift 1
fi

mpage=3D"$1"
shift 1
[ $# -eq 0 ] && fail "No page sections specified."

# Check man page exists before getting the same "No manual Entry" error
# for each user-specified page section.
man -w $msect "$mpage" > /dev/null || fail "Failed to find $mpage."

for psect
do
	psect=3D$(printf '%s\n' "$psect" | tr [:lower:] [:upper:])
	# If MAN_KEEP_FORMATTING is set, the section headers should be
	# in bold.  So wrap regex in the corresponding ANSI escape codes
	# in this case.
	man $msect "$mpage" |
	if [ -n "$MAN_KEEP_FORMATTING" ]
	then
		sed -En $'/^\e\[1m'"$psect"$'\e\[0?m$/,/^\e\[1m[A-Z][A-Z ]*\e\[0?m$/p'
	else
		sed -En '/^'"$psect"'$/,/^[A-Z][A-Z ]*$/p'
	fi |
	sed '$d' # Remove trailing section headers.
done
-- >8 --

Then I made it behave acceptably thusly:
-- >8 --
#!/bin/sh
# Copyright, the authors of the Linux man-pages project
# SPDX-License-Identifier: GPL-3.0-or-later

# Some pages' names start with a digit;
# they require specifying the section explicitly.
msect=3D
if [ "${1#[0-9]}" !=3D "$1" ]
then
	msect=3D"$1"; shift
fi

[ $# -ge 2 ] || {
	printf 'usage: %s [man-section] man-page page-section...\n' "$0" >&2
	exit 1
}
mpage=3D"$1"; shift

# Check man page exists before getting the same "No manual Entry" error
# for each user-specified page section.
man -w $msect "$mpage" > /dev/null || exit

for psect
do
	psect=3D$(printf '%s\n' "$psect" | tr [:lower:] [:upper:])
	# If MAN_KEEP_FORMATTING is set, the section headers will be in bold.
	man $msect "$mpage" |
	sed -En $'/^(\e\[1m)?'"$psect"$'(\e\[0?m)?$/,/^(\e\[1m)?[A-Z][A-Z ]*(\e\[0=
?m)?$/p' |
	head -n-1 # Remove trailing section headers.
done
-- >8 --

Observe the following:
 1. your comment about sections is obviously false:
      $ find /usr/share/man | grep '/[0-9]'
      /usr/share/man/man8/30-systemd-environment-d-generator.8.gz
      /usr/share/man/man1/7za.1.gz
      /usr/share/man/man1/411toppm.1.gz
      /usr/share/man/man1/2ff.1.gz
      /usr/share/man/man1/7z.1.gz
      /usr/share/man/man1/7zr.1.gz
    the way I'd validate my assumption a priori
    (if my system didn't have pages like this) is with
      curl https://deb.debian.org/debian/dists/sid/main/Contents-all.gz   |=
 zgrep share/man/man./[0-9]
      curl https://deb.debian.org/debian/dists/sid/main/Contents-amd64.gz |=
 zgrep share/man/man./[0-9]
 2. you allowed inheriting msect
 3. 80% of your exit conditions were redundant and impossible to hit
 4. man(1) has already logged the relevant error, don't dump garbage after =
it
 5. usage string always goes to the standard error stream because it's not =
the output
 6. if [ -n "$MANwhatever" ], then it's in the environment, so export MANwh=
atever is a no-op
 7. MAN_KEEP_FORMATTING is documented as being "nonempty is set"
    (exactly how you use it), so there's no need to mangle that, either
 8. man not existing gets you a standard error from the shell
 9. sed not existing is not a real condition; but even if it was, you get
    a real error (also, why were those tests "which"?)
10. MAN_KEEP_FORMATTING doesn't actually do anything anyway for me
    (as in it breaks the output entirely because the headers are in bold:
     S^HSY^HYN^HNO^HOP^HPS^HSI^HIS^HS$ (cat -A format)),
    so re-test the expression for your formatter, but I identified the
    common subexpression and put the bolding thing in "()?"

The utility of the other transformations is hopefully obvious.

If you were shipping this you'd want to do the filtering in one pass
because the UX of the sections being out of order is IMO suboptimal.
And also processing and fully-bufferring the /whole/ rendered output,
for big pages, is so slow
(I tested on voreutils ls(1) =E2=80=92 <https://ro.ws.co.ls/man1/ls.1.pdf>
 time man ls > /dev/null takes 0m0.513s wall clock;
 multiply this for each section, and you see how this is suboptimal;
 similarly, voreutils stty(1) measures 0m1.620s;
 this is especially suboptimal since big complex pages are exactly the
 ones you'd want to filter;
 also, I think this wants a negative section filter as well
 (to remove HISTORY or STANDARDS which may be less relevant))
you can work around this a little by sticking a load of stdbuf -oL
on the pipeline, but, again, I think the final for loop should be
representable as a one-shot AWK program.

Best,

--ezu5rc7d52pn3n7j
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAml6PrwACgkQvP0LAY0m
WPF8dg/7BpqFZ1ggV4tv26dPWVDlT/ZBD//VRENKxY0cCO0AbxLHf4v0tpmF4hs4
8TMVteov5DfyJhgYuncSQOtjNrvSS0fx2/taWZvJbsQqEiQZUfl8BHMI0Ic6XmDS
cf7x0optwJBlSDRFez8joVPzPx9kPUXFbrwvAzgKsNHwh7oEqGCneAtxYJA5shw2
MpDKMzQ1yq8aUZDe+tYDLmgTyy2EZ6qlqcEK/Lq+YH9iKwgIvgSbbQ8KC4vwDA6Z
aGLf+1UL+ZX8tRfo3/APWKaZJyGStMSTWQqezVHZo7eKm3Y+a1HtfT1eLPOGhlTt
ksLx2Du8m4D/grHn9cWS3e6rqmUtXiX/xu6GqVVPr6Lq6QsjqCvdkuAO8aIPsUyE
fbvah7izHqBb4UkwlvAw8k3fZnFz9R4M/IekntYiCHdNqoZWZmufba4H0baP3TJz
FPwPf4KP2zzo3O7oGdCmOV/+Usegwqzy7ULcL5qn44+CDwbfKMXLamBsA7hZD/32
ZCjpwi0HYtufXYgRa9NhN9oTxGeycHNbUuhU3F0SRXke2cptzJm1y5DKbSV0DS4c
y2+qOjHbfRgquOhCFzGnnvj/ptvbLTUIeNbHElAUQuJkDhsjfPpK5HJ9Q+TXomGs
nF5eriMtWdxXiMc42MIvZ2NmlZWB7M0DZni0PhddEkA72WDlN7Q=
=N/i0
-----END PGP SIGNATURE-----

--ezu5rc7d52pn3n7j--

