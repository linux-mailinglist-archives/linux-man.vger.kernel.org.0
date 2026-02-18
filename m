Return-Path: <linux-man+bounces-5156-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eOViCCkelmmKaQIAu9opvQ
	(envelope-from <linux-man+bounces-5156-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 18 Feb 2026 21:16:41 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B38615962A
	for <lists+linux-man@lfdr.de>; Wed, 18 Feb 2026 21:16:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EAB72302335D
	for <lists+linux-man@lfdr.de>; Wed, 18 Feb 2026 20:16:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2908C1C3C1F;
	Wed, 18 Feb 2026 20:16:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="f2mm8T8M"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F36913EBF02
	for <linux-man@vger.kernel.org>; Wed, 18 Feb 2026 20:16:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771445780; cv=none; b=brrklQIW6YhD/xV9DEh1GfFg4QVu06d7dJcCnHUHl/2x94MCuHeiHUs3cdX7ZNnb4q+nZRmCz6MScVYzN77tSEaJTiR7agxCERCIl7C5Gr5jX5RewEBXTgfM8VHZkD8RBfdsUG0+GZxOZq9RuazyuAZ3F2EdMJeQ0Z2Hs6ej3Tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771445780; c=relaxed/simple;
	bh=QYf5Of1dWx+w64s5kar+FGZ3t7EjBgesF/uPFIhcl5E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=N9kVG5LTll4pgiMJoArW94eKbUtEiPj/7BMIOifuhCormPPbMuXjvD4ABlt2AwCtIXeI3mncKnVB89i8wv90RWJ7wvqXRrWkJwFCSfnu7NNl7o/O3Kh3DeyTZegZUJBKQrw/FIR6YP/s/dEmRzLNxEc4ABERdLjxgbVV09q/gxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=f2mm8T8M; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202505; t=1771445767;
	bh=QYf5Of1dWx+w64s5kar+FGZ3t7EjBgesF/uPFIhcl5E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=f2mm8T8MdwV98mgqIE7gRCol+Z4nDfmjXRFRv4b0VYFGB86HhK1klVrX9caNSLr3A
	 cTbu3CxRBf6F/8EwJjLZaPiWwR2pnsDUJlBgUdwMA0awesVqvO44jhFbbvzXpd1KUj
	 ns8pFk10ggo3I6gXGOdhkVBuFOre1Eg1Dci+wxk1mbiihQoac27iuFVPZcCi2aw4Ub
	 e483i048iu7cYl+EP0l7ya+NpLRKQ4W9a9YY6kXQ+xiSgU6XOAniFCgGRXUkkd7vsv
	 OVsrs5eXUKFyXLWgrZ5Xs4Grvbm+UeVc89MMXMMcPB2sXgAO+Ox6hGxaJYMlSWh1jA
	 WaqG5EL0MtXhQ==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 2BDB52A46;
	Wed, 18 Feb 2026 21:16:07 +0100 (CET)
Date: Wed, 18 Feb 2026 21:16:06 +0100
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 0/1] futex_waitv.2: Move text to a new PARAMETERS
 section
Message-ID: <wkb6g6eqsjol24fyermtgntg3yuzgrbs6z3bz5vfy5x6psy57r@tarta.nabijaczleweli.xyz>
References: <jpyv367v4jdxfxebxw6wh7rgqdfeswzp44dzsycfjt5k2pxe4j@tarta.nabijaczleweli.xyz>
 <cover.1771374933.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yuf4flu2q5mpn3nm"
Content-Disposition: inline
In-Reply-To: <cover.1771374933.git.alx@kernel.org>
User-Agent: NeoMutt/20231221-2-4202cf-dirty
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-4.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nabijaczleweli.xyz,none];
	R_DKIM_ALLOW(-0.20)[nabijaczleweli.xyz:s=202505];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5156-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[nabijaczleweli.xyz:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nabijaczleweli@nabijaczleweli.xyz,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,tarta.nabijaczleweli.xyz:mid]
X-Rspamd-Queue-Id: 6B38615962A
X-Rspamd-Action: no action


--yuf4flu2q5mpn3nm
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 18, 2026 at 01:41:38AM +0100, Alejandro Colomar wrote:
> Please let me know what you think of this patch?
> Here's how the patch changes the page:
>=20
> 	$ MANWIDTH=3D72 diffman-git -U10 HEAD
> 	--- HEAD^:man/man2/futex_waitv.2
> 	+++ HEAD:man/man2/futex_waitv.2
> 	@@ -37,57 +37,103 @@ DESCRIPTION
> 	      ers[].uaddr[0] still contain respective expected values wait=E2=80=
=90
> 	      ers[].val, and if so, sleeps waiting for a FUTEX_WAKE(2const) op=
=E2=80=90
> 	      eration on any of the futex words, and returns the index of a
> 	      waiter whose futex was woken.
> 	=20
> 	      If the thread starts to sleep, it is considered a waiter on all
> 	      given futex words.  If any of the futex values do not match their
> 	      respective waiters[].val, the call fails immediately with the er=
=E2=80=90
> 	      ror EAGAIN.
> 	=20
> 	-     If timeout is NULL, the call blocks indefinitely.  Otherwise,
> 	-     *timeout specifies a deadline measured against clock clockid.
> 	-     This interval will be rounded up to the system clock granularity,
> 	-     and is guaranteed not to expire early.
> 	-
> 	-     Futex words to monitor are given by struct futex_waitv, whose
> 	-     fields are analogous to FUTEX_WAIT(2const) parameters, except
> 	-     .__reserved must be 0 and .flags must contain one of FUTEX2_SIZE_*
> 	-     ORed with some of the flags below.
> 	-
> 	-     FUTEX2_SIZE_U32
> 	-            .val and .uaddr[] are 32=E2=80=90bit unsigned integers.
> 	-
> 	-     FUTEX2_NUMA
> 	-            The futex word is followed by another word of the same size
> 	-            (.uaddr points to uintN_t[2] rather than uintN_t.  The word
> 	-            is given by .uaddr[1]), which can be either FUTEX_NO_NODE
> 	-            (all bits set) or a NUMA node number.
> 	-
> 	-            If the NUMA word is FUTEX_NO_NODE, the node number of the
> 	-            processor the syscall executes on is written to it.  (Ex=E2=
=80=90
> 	-            cept that in an EINVAL or EFAULT condition, this happens to
> 	-            all waiters whose .flags have FUTEX2_NUMA set.)
> 	-
> 	-            Futexes are placed on the NUMA node given by the NUMA word.
> 	-            Futexes without this flag are placed on a random node.
> 	-
> 	-     FUTEX2_PRIVATE
> 	-            By default, the futex is shared (like FUTEX_WAIT(2const)),
> 	-            and can be accessed by multiple processes; this flag waits
> 	-            on a private futex word, where all users must use the same
> 	-            virtual memory map (like FUTEX_WAIT_PRIVATE; this most of=
=E2=80=90
> 	-            ten means they are part of the same process).  Private fu=
=E2=80=90
> 	-            texes are faster than shared ones.
> 	+PARAMETERS
> 	+   futex_waitv()
> 	+     waiters
> 	+            Futex words to monitor are given by struct futex_waitv,
> 	+            whose fields are similar to FUTEX_WAIT(2const) parameters.
> 	+
> 	+     n      Specify as countof(waiters).
> 	+
> 	+     timeout
> 	+            If timeout is NULL, the call blocks indefinitely.  Other=E2=
=80=90
> 	+            wise, *timeout specifies a deadline measured against clock
> 	+            clockid.  This interval will be rounded up to the system
> 	+            clock granularity, and is guaranteed not to expire early.
> 	+
> 	+     clockid
> 	+            Supported clocks:
> 	+
> 	+            CLOCK_MONOTONIC
> 	+            CLOCK_REALTIME
> 	+
> 	+     flags  Specify as 0.
> 	+
> 	+   struct futex_waitv
> 	+     .val   Expected value of .uaddr[0].
> 	+
> 	+     .uaddr
> 	+
> 	+            .uaddr[0]
> 	+                   See FUTEX_WAIT(2const).
> 	+
> 	+            .uaddr[1]
> 	+                   See FUTEX2_NUMA below.  This field, if it exists,
> 	+                   must contain a NUMA word, which can be either FU=E2=
=80=90
> 	+                   TEX_NO_NODE or a NUMA node number.
> 	+
> 	+                   If the NUMA word is FUTEX_NO_NODE, the node number
> 	+                   of the processor the syscall executes on is written
> 	+                   to it.  (Except that in an EINVAL or EFAULT condi=E2=
=80=90
> 	+                   tion, this happens to all waiters whose .flags have
> 	+                   FUTEX2_NUMA set.)
> 	+
> 	+            Programs should assign to .uaddr by casting a pointer to
> 	+            uintptr_t.
> 	+
> 	+     .flags
> 	+            It must contain exactly one size flag ORed with zero or
> 	+            more of the other flags.
> 	+
> 	+            Size flags
> 	+
> 	+                   FUTEX2_SIZE_U32
> 	+                          .val and .uaddr[] are 32=E2=80=90bit unsigned=
 inte=E2=80=90
> 	+                          gers.
> 	+
> 	+                   FUTEX2_SIZE_U8
> 	+                   FUTEX2_SIZE_U16
> 	+                   FUTEX2_SIZE_U64
> 	+                          These are defined, but not supported (EIN=E2=
=80=90
> 	+                          VAL).
> 	+
> 	+            Other flags
> 	+
> 	+                   FUTEX2_NUMA
> 	+                          The futex word is followed by the NUMA word,
> 	+                          of the same size (.uaddr points to uintN_t[2]
> 	+                          rather than uintN_t).
> 	+
> 	+                          Futexes are placed on the NUMA node given by
> 	+                          the NUMA word.  Futexes without this flag are
> 	+                          placed on a random node.
> 	+
> 	+                   FUTEX2_PRIVATE
> 	+                          By default, the futex is shared (like FU=E2=
=80=90
> 	+                          TEX_WAIT(2const)), and can be accessed by
> 	+                          multiple processes; this flag waits on a pri=
=E2=80=90
> 	+                          vate futex word, where all users must use the
> 	+                          same virtual memory map (like FUTEX_WAIT_PRI=
=E2=80=90
> 	+                          VATE; this most often means they are part of
> 	+                          the same process).  Private futexes are
> 	+                          faster than shared ones.
> 	=20
> 	-     Programs should assign to .uaddr by casting a pointer to
> 	-     uintptr_t.
> 	+     .__reserved
> 	+            Specify as 0.
> 	=20
> 	 RETURN VALUE
> 	      Returns an index to an arbitrary entry in waiters corresponding to
> 	      some woken=E2=80=90up futex.  This implies no information about ot=
her
> 	      waiters.
> 	=20
> 	      On error, -1 is returned, and errno is set to indicate the error.
> 	=20
> 	 ERRORS
> 	      EFAULT
> 	@@ -106,33 +152,32 @@ ERRORS
> 		     ject=E2=80=94=E2=80=94that is, the address is not aligned appropri=
ately for
> 		     the specified FUTEX2_SIZE_*.
> 	=20
> 	      EINVAL
> 		     flags was not 0.
> 	=20
> 	      EINVAL
> 		     n was not in the range [1, FUTEX_WAITV_MAX].
> 	=20
> 	      EINVAL
> 	-            timeout was not NULL and clockid was not a valid clock
> 	-            (CLOCK_MONOTONIC or CLOCK_REALTIME).
> 	+            timeout was not NULL and clockid was not a valid clock.
> 	=20
> 	      EINVAL
> 		     *timeout is denormal (before epoch or tv_nsec not in the
> 		     range [0, 999'999'999]).
> 	=20
> 	      EINVAL
> 		     Any waiters[].flags field contains an unknown flag.
> 	=20
> 	      EINVAL
> 	-            Any waiters[].flags field is missing a FUTEX2_SIZE_* flag
> 	-            or has a size flag different than FUTEX2_SIZE_U32 set.
> 	+            Any waiters[].flags field is missing a size flag or has an
> 	+            unsupported one.
> 	=20
> 	      EINVAL
> 		     Any waiters[].__reserved field is not 0.
> 	=20
> 	      EINVAL
> 		     Any waiters[].value field has more bits set than permitted
> 		     than the size flags.
> 	=20
> 	      EINVAL
> 		     FUTEX2_NUMA was set in waiters[].flags, and the NUMA word
> 	@@ -151,25 +196,20 @@ ERRORS
> 	=20
> 	      EAGAIN or EWOULDBLOCK
> 		     The value in .uaddr[0] was not equal to the expected value
> 		     .val at the time of the call.
> 	=20
> 	      EINTR  The operation was interrupted by a signal (see signal(7)).
> 	=20
> 	 STANDARDS
> 	      Linux.
> 	=20
> 	-NOTES
> 	-     FUTEX2_SIZE_U8, FUTEX2_SIZE_U16, and FUTEX2_SIZE_U64 where .val
> 	-     and .uaddr[] are 8, 16, or 64 bits are defined, but not imple=E2=
=80=90
> 	-     mented (EINVAL).
> 	-
> 	 HISTORY
> 	      Linux 5.16.
> 	=20
> 	 EXAMPLES
> 	      The program below executes a linear=E2=80=90time operation on 10 t=
hreads,
> 	      displaying the results in real time, waiting at most 1 second for
> 	      each new result.  The first 3 threads operate on the same data
> 	      (complete in the same time).  ! indicates the futex that woke up
> 	      each futex_waitv().
>=20
>=20
> What do you think?  I think the formatted page is more readable.
I really hate it.

> The source gets more complex, but I could live with that.
>=20
>=20
> Cheers,
> Alex
>=20
>=20
> Alejandro Colomar (1):
>   man/man2/futex_waitv.2: Move text to a new PARAMETERS section
>=20
>  man/man2/futex_waitv.2 | 157 ++++++++++++++++++++++++++---------------
>  1 file changed, 99 insertions(+), 58 deletions(-)
>=20
> Range-diff against v0:
> -:  ------------ > 1:  22d6ad793c4c man/man2/futex_waitv.2: Move text to =
a new PARAMETERS section
>=20
> base-commit: ee4402e21d91c285f5f85071713985f2be7ac412
> --=20
> 2.51.0
>=20

--yuf4flu2q5mpn3nm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmmWHgQACgkQvP0LAY0m
WPHo6g/9FgAjr6DDmiOAr+T0gVWhtA8/1gqMiIFcc6kW68peRSdhk3lH/wzL4OGc
Xch9ihApK68ATHI+M4ZPCj1oLO6T3dt7qqjOy71S35yBdxnMgKsrl1LbzqqhtKCf
yRk18fbp3enSqSh0sdOhlYqYVegI1NHIMQc7ld7OzYA26WS1Vkwf/koi2EgmuX+C
o2muJ44QwzdvBCRPlMAtFygFH2QRwe/SmhMGTMYBeI4VlBefeobtRwOVs38+d2wp
04qsjk6uLK9Gr9XbT1nPz9wN5ByRWF68J7x5ca1kLJfdrCQ4QFeZcHy9u0RNVgHK
+dqh7T3OmMg1Zw6kg6Xv5OlqeR/YOfgdMCpuwzKIxL5Ng92s+Yz4pfckSgeAFAxj
JYIisnKn9EkTz4HSK38pUAdrzGSCyE99W5gG5owRWjCFQlwCjgO4MCUQO3WeYUaz
gCV/uvqdeybln+HftoG+UVASRiwyjs459EEGTgKWRFxvn8d3rI5+w9AeQpo9mvc/
gVRE+ekJCcgrXXxMZtuo6Hrhp6pZ6eIxR+69H+fGRxHcfCPygYc+/0/WBuP58ZSe
d2+y4/yr4oPFks/fehRZKEBGmeUSlKbYgsgkg4Dk35KCXAWIFITKF++Am1YQQ8Gy
KEOCnPODrG37py5XtNLViIXsPuuG+I03jw4pwruZylbCvly7pYQ=
=r/OX
-----END PGP SIGNATURE-----

--yuf4flu2q5mpn3nm--

