Return-Path: <linux-man+bounces-3346-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E9FBB1C1D8
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 10:11:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 48423624853
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 08:10:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65FCA220F33;
	Wed,  6 Aug 2025 08:10:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cyphar.com header.i=@cyphar.com header.b="U4+y59ci"
X-Original-To: linux-man@vger.kernel.org
Received: from mout-p-201.mailbox.org (mout-p-201.mailbox.org [80.241.56.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C67C1EFF96
	for <linux-man@vger.kernel.org>; Wed,  6 Aug 2025 08:10:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754467856; cv=none; b=lBXW5Cw4JVoL2eiuKV9/xLiFTXb7VUaDVuhs9BzKsjvMuwZ9E+wroqCRDety9+5VFWtI8e4mtS3x6J+/y+WgbWSLNShDxES4jUcIYfoFBi774cPMrjZGNw6P7FTnuK13Rm6Ke1xI/F7A4ZFJEb7k6f24lSyaEf0TpHB0fpDzkM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754467856; c=relaxed/simple;
	bh=gC0NADZTUfY9fs2RUiSx8Nu8+vuyMnXuoeU85p/4ukg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=t0v0GXvwrBqgGRMvTk5+/MFKItNdedsjG+d4tWSsJ+glvhJnoeCjpSv/3wT6N1L0Q/IOc61eFPnAb/FHTYIBUY1hv8GUl0uoIdSt2VbYS6VvHcv4f7A0MXJsl9R8Qu/9bZdp/qatynwvCdrFUBSg5/vSUbKQbn+QtMeWOhauUEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyphar.com; spf=pass smtp.mailfrom=cyphar.com; dkim=pass (2048-bit key) header.d=cyphar.com header.i=@cyphar.com header.b=U4+y59ci; arc=none smtp.client-ip=80.241.56.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyphar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cyphar.com
Received: from smtp2.mailbox.org (smtp2.mailbox.org [IPv6:2001:67c:2050:b231:465::2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4bxjfJ0YHzz9tJv;
	Wed,  6 Aug 2025 10:10:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cyphar.com; s=MBO0001;
	t=1754467848;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Hi0nz9Z1bWNy3hYSZYXoYwkcDPDQep4fVFlPThTwiA0=;
	b=U4+y59ci5b0smzBGYgC8qWT4zV5/nChomcHb1K78nE0T1D21mX98Hbzbx3LFJdLF3Bh0Vh
	jTLu2H9ot+AOr3M6JWqkYf5nbbTFbZBrXs16OpUyJQ4EWggz1LvTR+qO9EVp6hhU1B+XEF
	NxxP/skiEGevB+1EuhVs17Zf3YZSlvTH+m8JlDOSQ+oGaUw5OwMXuYpWCsviPwVpiShePQ
	LiMM7lsYcM4qH9Yd1BoaOmTft1/caHKQEMqWAizfydEftBcksoxHyux6wqSwYhFWvNmZuA
	26wPOhF/jCywoawCvAMnRiQvMha2ZmD7KuOXa4wBdoyGDubS+08H5ETzaMY3PQ==
Authentication-Results: outgoing_mbo_mout;
	dkim=none;
	spf=pass (outgoing_mbo_mout: domain of cyphar@cyphar.com designates 2001:67c:2050:b231:465::2 as permitted sender) smtp.mailfrom=cyphar@cyphar.com
Date: Wed, 6 Aug 2025 18:10:36 +1000
From: Aleksa Sarai <cyphar@cyphar.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: "Michael T. Kerrisk" <mtk.manpages@gmail.com>, 
	linux-man@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>, 
	Jan Kara <jack@suse.cz>, David Howells <dhowells@redhat.com>, 
	Christian Brauner <brauner@kernel.org>
Subject: Re: [PATCH 02/10] mount_setattr.2: move mount_attr struct to
 mount_attr.2type
Message-ID: <2025-08-06.1754466294-elegant-cook-harsh-fiction-woody-sack-0yCISW@cyphar.com>
References: <20250806-new-mount-api-v1-0-8678f56c6ee0@cyphar.com>
 <20250806-new-mount-api-v1-2-8678f56c6ee0@cyphar.com>
 <lt47z3kplkm7g2stof7vey4fnh2r3eqr4o5vkmjep5fppcrdzs@nx2r24g4mdsj>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hsaykagsxxoqi2ob"
Content-Disposition: inline
In-Reply-To: <lt47z3kplkm7g2stof7vey4fnh2r3eqr4o5vkmjep5fppcrdzs@nx2r24g4mdsj>
X-Rspamd-Queue-Id: 4bxjfJ0YHzz9tJv


--hsaykagsxxoqi2ob
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 02/10] mount_setattr.2: move mount_attr struct to
 mount_attr.2type
MIME-Version: 1.0

On 2025-08-05, Alejandro Colomar <alx@kernel.org> wrote:
> Hi Aleksa,
>=20
> On Wed, Aug 06, 2025 at 02:25:47AM +1000, Aleksa Sarai wrote:
> > As with openat2(2type), it makes sense to move this to a separate man
>=20
> I guess you meant open_how(2type) instead of openat2(2type).
>=20
> 	$ find man/man2type/
> 	man/man2type/
> 	man/man2type/open_how.2type
>=20
> > page. In addition, future man pages added in this patchset will want to
>=20
> Please use two spaces after period in commit messages.  See:
>=20
> $ cat CONTRIBUTING.d/patches/description | grep -A5 Style.guide
>     Style guide
> 	URIs should always be enclosed in <>.
>=20
> 	The correct inter-sentence space amount is two.  See some
> 	history about this:
> 	<https://web.archive.org/web/20171217060354/http://www.heracliteanriver.=
com/?p=3D324>

I'm really sorry to be difficult, but is this really a necessary
requirement for man-pages submissions?

I understand how much of a stickler you folks are for the formatting of
roff files (though it seems quite arbitrary to me at times), since the
need to maintain ~600k lines of roff is hardly an enviable task (and you
folks do a great job of it!) so spending more time reworking roff
layouts could be seen as a reasonable price of entry for contributors
(even if it results in man page submissions getting abandoned -- which
is IMHO what happened with the first iteration of these pages).

But what practical reason is there to extend minor style guide quirks to
*commit messages*? To me, this seems akin to correcting minor
grammatical mistakes made in commit messages by non-native speakers'
contributions -- but man-pages doesn't do this, right? How many people
are going to read most commit messages, outside of "git blame"? How
often are commit messages typeset?

I didn't grow up using double spaces after periods, so I find it
incredibly strange to do it when writing. I don't mind folks who prefer
it, but to quote the article you linked:

> For any non-typographers who made it all the way through this article,
> if you want to double-space, do it.  If you want to single-space,
> fine.  Just please don=E2=80=99t try to enforce your view on the world.  =
Stop
> judging people.

I also have ":set nojoinspaces", because otherwise all of my documents
will have mixed double-spacing depending on whether the spaces were
added by "gw" or by hand. (So I would need to manually fix this each
time I re-wrap text.)

I mean, it is just one 0x20 byte at the end of the day, so I'll go ahead
and add it if necessary. I just struggle to see _why_ this is seen as
necessary...

> > reference mount_attr(2type).
> >=20
> > Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
> > ---
> >  man/man2/mount_setattr.2      | 16 +++---------
> >  man/man2type/mount_attr.2type | 58 +++++++++++++++++++++++++++++++++++=
++++++++
> >  2 files changed, 62 insertions(+), 12 deletions(-)
> >=20
> > diff --git a/man/man2/mount_setattr.2 b/man/man2/mount_setattr.2
> > index b8ddc3e22aef..e863be64deb5 100644
> > --- a/man/man2/mount_setattr.2
> > +++ b/man/man2/mount_setattr.2
> > @@ -116,18 +116,10 @@ The
> >  .I attr
> >  argument of
> >  .BR mount_setattr ()
> > -is a structure of the following form:
> > -.P
> > -.in +4n
> > -.EX
> > -struct mount_attr {
> > -    __u64 attr_set;     /* Mount properties to set */
> > -    __u64 attr_clr;     /* Mount properties to clear */
> > -    __u64 propagation;  /* Mount propagation type */
> > -    __u64 userns_fd;    /* User namespace file descriptor */
> > -};
> > -.EE
> > -.in
> > +is a pointer to a
> > +.I mount_attr
> > +structure, described in
> > +.BR mount_attr (2type).
> >  .P
> >  The
> >  .I attr_set
> > diff --git a/man/man2type/mount_attr.2type b/man/man2type/mount_attr.2t=
ype
> > new file mode 100644
> > index 000000000000..733dbc3c8cdb
> > --- /dev/null
> > +++ b/man/man2type/mount_attr.2type
> > @@ -0,0 +1,58 @@
> > +
> > +.\" Copyright, the authors of the Linux man-pages project
> > +.\"
> > +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> > +.\"
> > +.TH mount_attr 2type (date) "Linux man-pages (unreleased)"
> > +.SH NAME
> > +mount_attr \- what mount properties to set and clear
> > +.SH LIBRARY
> > +Linux kernel headers
> > +.SH SYNOPSIS
> > +.EX
> > +.B #include <sys/mount.h>
> > +.P
> > +.B struct mount_attr {
> > +.BR "    __u64 attr_set;" "     /* Mount properties to set */"
> > +.BR "    __u64 attr_clr;" "     /* Mount properties to clear */"
> > +.BR "    __u64 propagation;" "  /* Mount propagation type */"
> > +.BR "    __u64 userns_fd;" "    /* User namespace file descriptor */"
> > +    /* ... */
> > +.B };
> > +.EE
> > +.SH DESCRIPTION
> > +Specifies which mount properties should be changed with
> > +.BR mount_setattr (2).
> > +.P
> > +The fields are as follows:
> > +.TP
> > +.I attr_set
>=20
> Please use .member syntax.  This is the convention we're using for new
> documentation.  I'll slowly add consistency to the existing docs.  So:
>=20
> 	.I .attr_set
>=20
> > +This field specifies which
> > +.B MOUNT_ATTR_*
>=20
> Please use
>=20
> 	.BI MOUNT_ATTR_ *
>=20
> The variable part should be in italics.
>=20
> > +attribute flags to set.
> > +.TP
> > +.I attr_clr
> > +This fields specifies which
> > +.B MOUNT_ATTR_*
>=20
> Same here.
>=20
> > +attribute flags to clear.
> > +.TP
> > +.I propagation
> > +This field specifies what mount propagation will be applied.
> > +The valid values of this field are the same propagation types describe=
d in
> > +.BR mount_namespaces (7).
> > +.TP
> > +.I userns_fd
> > +This fields specifies a file descriptor that indicates which user name=
space to
> > +use as a reference for ID-mapped mounts with
> > +.BR MOUNT_ATTR_IDMAP .
> > +.SH VERSIONS
> > +Extra fields may be appended to the structure, with a zero value in a =
new field
>=20
> Please use semantic newlines.  That is, break after the comma.  See
> man-pages(7):
>=20
> $ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
>    Use semantic newlines
>        In the source of a manual page, new sentences should be  started
>        on  new  lines,  long  sentences  should  be split into lines at
>        clause breaks (commas, semicolons, colons, and so on), and  long
>        clauses  should be split at phrase boundaries.  This convention,
>        sometimes known as "semantic newlines", makes it easier  to  see
>        the effect of patches, which often operate at the level of indi=E2=
=80=90
>        vidual sentences, clauses, or phrases.
>=20
>=20
> Have a lovely day!
> Alex
>=20
> > +resulting in the kernel behaving as though that extension field was not
> > +present.
> > +Therefore, a user
> > +.I must
> > +zero-fill this structure on initialization.
> > +.SH STANDARDS
> > +Linux.
> > +.SH SEE ALSO
> > +.BR mount_setattr (2)
> >=20
> > --=20
> > 2.50.1
> >=20
> >=20
>=20
> --=20
> <https://www.alejandro-colomar.es/>



--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
https://www.cyphar.com/

--hsaykagsxxoqi2ob
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS2TklVsp+j1GPyqQYol/rSt+lEbwUCaJMN/AAKCRAol/rSt+lE
b2DsAQDHZFF+P+U+EfsGMI5d2r98x21hLoMHHAPctJGJzU9iMQD9HAo7jQPsOvJ1
jVhrSf7WOMXvWwWZE3o1Kh/HzGfFvgs=
=KFbY
-----END PGP SIGNATURE-----

--hsaykagsxxoqi2ob--

