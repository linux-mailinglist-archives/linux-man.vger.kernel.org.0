Return-Path: <linux-man+bounces-2318-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F3B6EA24DA4
	for <lists+linux-man@lfdr.de>; Sun,  2 Feb 2025 12:00:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 83C913A37F1
	for <lists+linux-man@lfdr.de>; Sun,  2 Feb 2025 11:00:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 415C41CB332;
	Sun,  2 Feb 2025 11:00:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XNjvUwcA"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F17F91420DD
	for <linux-man@vger.kernel.org>; Sun,  2 Feb 2025 11:00:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738494050; cv=none; b=ViMlvlhkB9Rndz6qRNLmXZ4xYmS5Y5r6Fno95wiq8I3w0b1NSv8FbmrlGRPOOR6Ki3EEhIodfIfvye3WO7Ij/QBODsnNMhGXtPQM6lxYwGr3Fg4lKlImCEWppvPDM8qivSP7/wX90vK0dfz3Rv9AbObf8wFF4ZekYTH9+IwOMEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738494050; c=relaxed/simple;
	bh=RTLa3m7l4jOLDgWh0S3fe9HjizHrNyQFXidUqz6i6FY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Z3jlqiWBp5w8yQDojl8vd+TIOcyglsgvkdjgl9a8jb4aNQ6jzVOlfKdyIy8p/2BC8gF+s4zgPXbruvPOCK4bzgUxVqzrR/jk/vzzQ+7Ts3PI97ByV1SOVkVlvJLRzGcwkgJUr1GvJJf+hIFfhu0eJDBvNkLdIlFnIUYpvByIvZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XNjvUwcA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E10EC4CEE4;
	Sun,  2 Feb 2025 11:00:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738494049;
	bh=RTLa3m7l4jOLDgWh0S3fe9HjizHrNyQFXidUqz6i6FY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XNjvUwcAC2nZoLLrWPCJGLILmhQ7UqajA7pwNy4+6CMVpQKXCMinhbCebOuNUF5hz
	 P9r87B3ZCWU5DvV/It2sFTNRsdD/Moyp0KPGJfHqZUq6n4B4CVLEqG6ypMWYLYtYPe
	 SaJ5SUxiGgFZV2UrEn4s1zp2KqzSdmKHP9KCP4bZ2GV/OH9C3gA8KEt8Rix9tMF1/D
	 sXhNzRo6UQbUZ2iCOc9HNVN/QltCGwFisAOG3q/bRE6nw5I1zXmSARIZGXpXfFb2Vj
	 2qqIXqYcz2sLivTG0Qky/sxmShLgP6x1ph4S0nBpjRTthH50afdnI7Un9F46wBC8VX
	 2SjmVMScPitZg==
Date: Sun, 2 Feb 2025 12:00:46 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Brian Inglis <Brian.Inglis@systematicsw.ab.ca>
Cc: man-pages <linux-man@vger.kernel.org>
Subject: Re: [PATCH] man/man5/tzfile.5: update from upstream gh/eggert/tz
Message-ID: <nsdmo4umd647udyp4tt7znd7qotfrurvccd2jdwo4clyoogbq4@ila6ekm4l2nk>
References: <b96897126e34bfd25622b0392810f8b2bd1a6857.1737921224.git.Brian.Inglis@SystematicSW.ab.ca>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="j5zvtcxaggiewenu"
Content-Disposition: inline
In-Reply-To: <b96897126e34bfd25622b0392810f8b2bd1a6857.1737921224.git.Brian.Inglis@SystematicSW.ab.ca>


--j5zvtcxaggiewenu
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Brian Inglis <Brian.Inglis@systematicsw.ab.ca>
Cc: man-pages <linux-man@vger.kernel.org>
Subject: Re: [PATCH] man/man5/tzfile.5: update from upstream gh/eggert/tz
References: <b96897126e34bfd25622b0392810f8b2bd1a6857.1737921224.git.Brian.Inglis@SystematicSW.ab.ca>
MIME-Version: 1.0
In-Reply-To: <b96897126e34bfd25622b0392810f8b2bd1a6857.1737921224.git.Brian.Inglis@SystematicSW.ab.ca>

Hi Brian,

On Sun, Jan 26, 2025 at 01:10:44PM -0700, Brian Inglis wrote:
> update from upstream https://github.com/eggert/tz/blob/main/tzfile.5:
> Internet RFC 8536 -> 9636 and refs;
> POSIX.1-2017 -> POSIX.1-2024 et al;
> prefix non-... should be hyphenated and add commas between clauses
> for easier reading for international audience;
> add proleptic before TZ or POSIX TZ;
> try to merge upstream and man-pages styles

AFAIR, this page was pristine from upstream.  Did you need to do any
changes?  I think I would prefer importing the page pristine, so that we
don't need to worry about the differences.


Have a lovely day!
Alex

>=20
> Signed-off-by: Brian Inglis <Brian.Inglis@SystematicSW.ab.ca>
> ---
>  man/man5/tzfile.5 | 78 ++++++++++++++++++++++++++++-------------------
>  1 file changed, 46 insertions(+), 32 deletions(-)
>=20
> diff --git a/man/man5/tzfile.5 b/man/man5/tzfile.5
> index 4aa3f6c28c15..8682ac118bdb 100644
> --- a/man/man5/tzfile.5
> +++ b/man/man5/tzfile.5
> @@ -17,7 +17,7 @@ The timezone information files used by
>  .BR tzset (3)
>  are typically found under a directory with a name like
>  .IR /usr/share/zoneinfo .
> -These files use the format described in Internet RFC 8536.
> +These files use the format described in Internet RFC 9636.
>  Each file is a sequence of 8-bit bytes.
>  In a file, a binary integer is represented by a sequence of one or
>  more bytes in network order (bigendian, or high-order byte first),
> @@ -86,7 +86,7 @@ described in the file is associated with the time period
>  starting with the same-indexed transition time
>  and continuing up to but not including the next transition time.
>  (The last time type is present only for consistency checking with the
> -POSIX.1-2017-style TZ string described below.)
> +proleptic POSIX.1-2024-style TZ string described below.)
>  These values serve as indices into the next field.
>  .IP \(bu
>  .B tzh_typecnt
> @@ -146,7 +146,7 @@ The encoding of these strings is not specified.
>  .IP \(bu
>  .B tzh_leapcnt
>  pairs of four-byte values, written in network byte order;
> -the first value of each pair gives the nonnegative time
> +the first value of each pair gives the non-negative time
>  (as returned by
>  .BR time (2))
>  at which a leap second occurs or at which the leap second table expires;
> @@ -159,7 +159,7 @@ Each pair denotes one leap second, either positive or=
 negative,
>  except that if the last pair has the same correction as the previous one,
>  the last pair denotes the leap second table's expiration time.
>  Each leap second is at the end of a UTC calendar month.
> -The first leap second has a nonnegative occurrence time,
> +The first leap second has a non-negative occurrence time,
>  and is a positive leap second if and only if its correction is positive;
>  the correction for each leap second after the first differs
>  from the previous leap second by either 1 for a positive leap second,
> @@ -187,12 +187,12 @@ must also be set.
>  The standard/wall and UT/local indicators were designed for
>  transforming a TZif file's transition times into transitions appropriate
>  for another time zone specified via
> -a POSIX.1-2017-style TZ string that lacks rules.
> +a proleptic POSIX.1-2024-style TZ string that lacks rules.
>  For example, when TZ=3D"EET\*-2EEST" and there is no TZif file "EET\*-2E=
EST",
>  the idea was to adapt the transition times from a TZif file with the
>  well-known name "posixrules" that is present only for this purpose and
>  is a copy of the file "Europe/Brussels", a file with a different UT offs=
et.
> -POSIX does not specify this obsolete transformational behavior,
> +POSIX does not specify the details of this obsolete transformational beh=
avior,
>  the default rules are installation-dependent, and no implementation
>  is known to support this feature for timestamps past 2037,
>  so users desiring (say) Greek time should instead specify
> @@ -217,13 +217,13 @@ identical in format except that
>  eight bytes are used for each transition time or leap second time.
>  (Leap second counts remain four bytes.)
>  After the second header and data comes a newline-enclosed string
> -in the style of the contents of a POSIX.1-2017 TZ environment variable,
> +in the style of the contents of a proleptic TZ,
>  for use in handling instants
>  after the last transition time stored in the file
>  or for all instants if the file has no transitions.
>  The TZ string is empty (i.e., nothing between the newlines)
> -if there is no POSIX.1-2017-style representation for such instants.
> -If nonempty, the TZ string must agree with the local time
> +if there is no proleptic representation for such instants.
> +If non-empty, the TZ string must agree with the local time
>  type after the last transition time if present in the eight-byte data;
>  for example, given the string
>  .q "WET0WEST,M3.5.0/1,M10.5.0"
> @@ -235,13 +235,14 @@ Also, if there is at least one transition, time typ=
e 0 is associated
>  with the time period from the indefinite past up to but not including
>  the earliest transition time.
>  .SS Version 3 format
> -For version-3-format timezone files, the TZ string may
> -use two minor extensions to the POSIX.1-2017 TZ format, as described in
> -.BR newtzset (3).
> -First, the hours part of its transition times may be signed and range fr=
om
> -\-167 through 167 instead of the POSIX-required unsigned values
> +For version-3-format timezone files, a TZ string (see
> +.BR newtzset (3))
> +may use the following POSIX.1-2024 extensions to POSIX.1-2017:
> +First, as in TZ=3D"<\-02>2<\-01>,M3.5.0/\-1,M10.5.0/0",
> +the hours part of its transition times may be signed and range from
> +\-167 through 167 instead of being limited to the POSIX.1-2024-required =
unsigned values
>  from 0 through 24.
> -Second, DST is in effect all year if it starts
> +Second, as in TZ=3D"XXX3EDT4,0/0,J365/23", DST is in effect all year if =
it starts
>  January 1 at 00:00 and ends December 31 at 24:00 plus the difference
>  between daylight saving and standard time.
>  .SS Version 4 format
> @@ -317,16 +318,16 @@ through 60 instead of the usual 59; the UTC offset =
is unaffected.
>  This section documents common problems in reading or writing TZif files.
>  Most of these are problems in generating TZif files for use by
>  older readers.
> -The goals of this section are:
> +The goals of this section are to help:
>  .RS 2
>  .IP \(bu 3
> -to help TZif writers output files that avoid common
> +TZif writers output files that avoid common
>  pitfalls in older or buggy TZif readers,
>  .IP \(bu
> -to help TZif readers avoid common pitfalls when reading
> +TZif readers avoid common pitfalls when reading
>  files generated by future TZif writers, and
>  .IP \(bu
> -to help any future specification authors see what sort of
> +any future specification authors see what sort of
>  problems arise when the TZif format is changed.
>  .RE
>  .PP
> @@ -337,9 +338,9 @@ reader was designed for.
>  When complete compatibility was not achieved, an attempt was
>  made to limit glitches to rarely used timestamps and allow
>  simple partial workarounds in writers designed to generate
> -new-version data useful even for older-version readers.
> +newer-version data useful even for older-version readers.
>  This section attempts to document these compatibility issues and
> -workarounds, as well as to document other common bugs in
> +workarounds as well as documenting other common bugs in
>  readers.
>  .PP
>  Interoperability problems with TZif include the following:
> @@ -354,7 +355,8 @@ version 2+ data even if the reader's native timestamp=
s have only
>  .IP \(bu
>  Some readers designed for version 2 might mishandle
>  timestamps after a version 3 or higher file's last transition, because
> -they cannot parse extensions to POSIX.1-2017 in the TZ-like string.
> +they cannot parse the POSIX.1-2024 extensions to POSIX.1-2017
> +in the proleptic TZ string.
>  As a partial workaround, a writer can output more transitions
>  than necessary, so that only far-future timestamps are
>  mishandled by version 2 readers.
> @@ -371,14 +373,14 @@ for two time zones east, e.g.,
>  for a time zone with a never-used standard time (XXX, \-03)
>  and negative daylight saving time (EDT, \-04) all year.
>  Alternatively,
> -as a partial workaround a writer can substitute standard time
> +as a partial workaround, a writer can substitute standard time
>  for the next time zone east \(en e.g.,
>  .q "AST4"
>  for permanent
>  Atlantic Standard Time (\-04).
>  .IP \(bu
>  Some readers designed for version 2 or 3, and that require strict
> -conformance to RFC 8536, reject version 4 files whose leap second
> +conformance to RFC 9636, reject version 4 files whose leap second
>  tables are truncated at the start or that end in expiration times.
>  .IP \(bu
>  Some readers ignore the footer, and instead predict future
> @@ -386,6 +388,18 @@ timestamps from the time type of the last transition.
>  As a partial workaround, a writer can output more transitions
>  than necessary.
>  .IP \(bu
> +Some stripped-down readers ignore everything but the footer,
> +and use its proleptic TZ string to calculate all timestamps.
> +Although this approach often works for current and future timestamps,
> +it obviously has problems with past timestamps,
> +and even for current timestamps it can fail for settings like
> +TZ=3D"Africa/Casablanca".  This corresponds to a TZif file
> +containing explicit transitions through the year 2087,
> +followed by a footer containing the TZ string
> +.q <+01>\-1 ,
> +which should be used only for timestamps after the last
> +explicit transition.
> +.IP \(bu
>  Some readers do not use time type 0 for timestamps before
>  the first transition, in that they infer a time type using a
>  heuristic that does not always select time type 0.
> @@ -393,7 +407,7 @@ As a partial workaround, a writer can output a dummy =
(no-op)
>  first transition at an early time.
>  .IP \(bu
>  Some readers mishandle timestamps before the first
> -transition that has a timestamp not less than \-2**31.
> +transition that has a timestamp that is not less than \-2**31.
>  Readers that support only 32-bit timestamps are likely to be
>  more prone to this problem, for example, when they process
>  64-bit transitions only some of which are representable in 32
> @@ -405,7 +419,7 @@ Some readers mishandle a transition if its timestamp =
has
>  the minimum possible signed 64-bit value.
>  Timestamps less than \-2**59 are not recommended.
>  .IP \(bu
> -Some readers mishandle TZ strings that
> +Some readers mishandle proleptic TZ strings that
>  contain
>  .q "<"
>  or
> @@ -466,7 +480,7 @@ Developers of distributed applications should keep th=
is
>  in mind if they need to deal with pre-1970 data.
>  .IP \(bu
>  Some readers mishandle timestamps before the first
> -transition that has a nonnegative timestamp.
> +transition that has a non-negative timestamp.
>  Readers that do not support negative timestamps are likely to
>  be more prone to this problem.
>  .IP \(bu
> @@ -499,10 +513,10 @@ of one hour, or of 15 minutes, or of 1 minute.
>  .BR zic (8).
>  .PP
>  Olson A, Eggert P, Murchison K. The Time Zone Information Format (TZif).
> -2019 Feb.
> -.UR https://\:datatracker.ietf.org/\:doc/\:html/\:rfc8536
> -Internet RFC 8536
> +October 2024.
> +.UR https://\:www.rfc-editor.org/\:rfc/\:rfc9636
> +Internet RFC 9636
>  .UE
> -.UR https://\:doi.org/\:10.17487/\:RFC8536
> -doi:10.17487/RFC8536
> +.UR https://\:doi.org/\:10.17487/\:RFC9636
> +doi:10.17487/RFC9636
>  .UE .
> --=20
> 2.45.1
>=20

--=20
<https://www.alejandro-colomar.es/>

--j5zvtcxaggiewenu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmefUF4ACgkQnowa+77/
2zKFAhAAlR5LnpA4CgxTKD8NuqybJA7pVk2fJ/BGm3X8I+HzHB6muGymKW7x++UH
dFtUQqHrB5u4iRlmKASZxi3w+Ew5q4TWYD5THDS6ToyOQWereReX8bV7afu+xgIk
RE17Fe+aCZGbUMBx/YdVNPhmGNgY0DPg/jDtuzMcKtKQ9hGWkezx/mg4HZdY+ZTw
9gle3R+yc4LNV/AKy/oaQyPQSz+x4fizX6x3x/NtyjuJjAVcIe+TNhqiX3g9QFuF
fPsuL9LsrIeYTbuxdXzJO3fA8BkyzAwZFZp/EWxRmYK5fMLl6PN1VuhmqCjzk8ev
IVcR/AlWc7HSTISVyvHU8Ey9v+oepHQenUUIbrKZO0Ef198MZ9HTAaGB+WBpKQSG
v3fYIQJE7b82JA6dEdqaD+BiGIqtLK5ETFwnQqJIOeqWIkMULzUcb80OBc3F79u+
sYkjq+RN5vvQtATSa/DPGRZ0GCK4VxtZaSBtVMrJ5n0lc61LLkfthLlGG69Comty
qVd4ifUb930PfY4MQd644E0ngQChQ0qM27XzxzEL7jZ4x/bslIsIBK1XgG/A6BuS
3T01/ScJqlKeOwEcAQLbQZ73bkQKB2Q690079h3V4bFdDMl23gaAztV6pcGdi60r
uVlV6EGK2amPXEp0fl7Ys1lbJiasd73ziaEpegaP2SGz3ubKlmQ=
=k8ar
-----END PGP SIGNATURE-----

--j5zvtcxaggiewenu--

