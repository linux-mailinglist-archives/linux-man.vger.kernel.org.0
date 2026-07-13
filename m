Return-Path: <linux-man+bounces-5750-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id q4UFBHhsVWrJoAAAu9opvQ
	(envelope-from <linux-man+bounces-5750-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 14 Jul 2026 00:53:44 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C97774F958
	for <lists+linux-man@lfdr.de>; Tue, 14 Jul 2026 00:53:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=D4oQBWpS;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5750-lists+linux-man=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="linux-man+bounces-5750-lists+linux-man=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 74AB83028677
	for <lists+linux-man@lfdr.de>; Mon, 13 Jul 2026 22:53:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A975E3B8950;
	Mon, 13 Jul 2026 22:53:39 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAC113546C5
	for <linux-man@vger.kernel.org>; Mon, 13 Jul 2026 22:53:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783983219; cv=none; b=UEowwrgTc4xSRKY/ANqGyCN4OtJszK1+kZH/f5lv3Ic7OVyLTSAidKKzxATBxH1oz+kRUeHEtcD8mlZ0IOveuALNw0hv+u/yoYrTzMZtFVLk3S/ahsI/hwu1Hv6iovPP4XanABpdW5eN7jX9FWxCXrqXemTNIK/dyrbqv3Q+cFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783983219; c=relaxed/simple;
	bh=OfZuAFy9Z5myIH0WDTqr/AU8jB3EsPLXox/5x1lI1Os=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y4lznSueQlnf6gltOirNDvbIkmOeFBZjiRizD3Sy0MAxL+tEBSo7JHvl2v31nlhImF+tT9WeQX7iCA2tTrcOi9K8tOdS06ZqtYlAtJawsDm9vFntl510ty5KuPNBB1GkvTcJX3KIGbA0Kc78/yFSV4keqSSq5fgSVrfoScYl5L0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D4oQBWpS; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 000701F000E9;
	Mon, 13 Jul 2026 22:53:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783983217;
	bh=h8Zd/png8w2ltekGVHnXQA68oyxKJZpcZxNETYJO7Y0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=D4oQBWpSJ0JPfNbPcTHL2PgvZ+a2U+/MT/K01IubdQsuTT4UgUzeVw5yMgJSx0Pat
	 cjFbCVsXsFumK1DutHWCojzGDvPux4MHNux8OzCjMZXb6hCjMswWhVsLzpM3lsQKFZ
	 9Wzb9k0hCcqsK+OIhRVat86AJUFeOnQWoyXeoW6Rn2RpvyzZFVHQdhDdXrhdUxvl0u
	 3Z62wDTbrrHgPs0Bm5sf3ZD+8fnDZbfWQ9H7K8QBgzO9A18cvt7PLwLvVOhb7bBScn
	 mPbsYBEvayKYI72qKFE1RKfSQzmsdTyb4cHKqm36vtLi0OmXxKaZXPMNzF/gfsC/m0
	 Y2KDncu+adjCA==
Date: Tue, 14 Jul 2026 00:53:34 +0200
From: Alejandro Colomar <alx@kernel.org>
To: DJ Delorie <dj@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: Re: man/man8/ldconfig.8: document system-wide tunables
Message-ID: <alVetmhC_sblK62v@devuan>
References: <alVCfr38jr38jIfT@devuan>
 <xn5x2i8tim.fsf@greed.delorie.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lrtub3n2l3uxa3zd"
Content-Disposition: inline
In-Reply-To: <xn5x2i8tim.fsf@greed.delorie.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.76 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:dj@redhat.com,m:linux-man@vger.kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWO(0.00)[2];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5750-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,alejandro-colomar.es:url,devuan:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6C97774F958


--lrtub3n2l3uxa3zd
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: DJ Delorie <dj@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: Re: man/man8/ldconfig.8: document system-wide tunables
Message-ID: <alVetmhC_sblK62v@devuan>
References: <alVCfr38jr38jIfT@devuan>
 <xn5x2i8tim.fsf@greed.delorie.com>
MIME-Version: 1.0
In-Reply-To: <xn5x2i8tim.fsf@greed.delorie.com>

Hi DJ,

On 2026-07-13T17:33:05-0400, DJ Delorie wrote:
> Alejandro Colomar <alx@kernel.org> writes:
> > Please split into separate patches with commit messages,
>=20
> How do you want them split?  Per man page, or one for breaking out
> ld.so.conf and one for adding tunables.conf?

One per logical change.

The documentation of tunables is one logical change, even if it covers
several pages.

The documentation of an include directive in ld.so.conf(5) is a separate
logical change.

I think the -t flag of ldconfig(8) could be considered a separate change
too.

>=20
> Also, I've been using the output of "git show" for these patches.

I suggest using git-format-patch(1).  It's very similar to git-show(1),
except that it can then be applied on my side with git-am(1).

git-format-patch(1) is best paired with git-send-email(1), but if that's
too inconvenient for you, you can paste it as if it were the output of
git-show(1).  For that, you may want to use the --stdout flag of
git-format-patch(1).

> > Let's start a new paragraph:
> >
> > 	.P
>=20
> We still need a better language ;-)

I actually like it for its simplicity.  Once you learn the few macros,
there's not much more that you need to learn.

> ("why doesn't it know to start a
> paragraph after a heading?" ;)

There's no heading (what do you consider a heading?).  It was just a
new line after period.

Actually, after a heading (a section heading is .SH) it knows to start
a new paragraph:

	.SH DESCRIPTION
	First paragraph.
	No need for '.P' before this.
	.P
	Second paragraph.

But that text was:

	@@ -9,6 +9,14 @@ .SH DESCRIPTION
	 This file contains a list of directories,
	 one per line,
	 in which to search for libraries.
	+The file allows lines to start with the word
	+.I include
	+followed by a path wildcard,
	+and will include any files matching that wildcard.

So we need a .P because there's just text there (no headings).

> >> +The file allows lines to start with the word
> >> +.I include
> >> +followed by a path wildcard,
> >
> > What is a path wildcard?  We should specify it, since different programs
> > treat wildcards differently.  Is it a glob(7)?
>=20
> .P
> The syntax allows lines to start with the word
> .I include
> followed by a path wildcard,
> and will include any files matching that wildcard.
> The wildcard is a path specification in the
> .BR \%glob (7)
> format.

'wildcard' is a technical term referring to a specific pattern (a string
containing '?', '*', or '[') in glob(7).  I suggest using 'glob(7)
pattern' instead.  How about this?:

	The syntax allows lines to start with the keyword
	.B include
	followed by a pathname
	.BR glob (7)
	pattern.

> Files matching that wildcard will be processed

And then
	Files matching that pattern will be processed

> as if their contents were included in the main config file.
>=20
> >> +and will include any files matching that wildcard.
> >> +The file is parsed by
> >> +.B \%ldconfig
> >
> > .BR \%ldconfig (8)
>=20
> Fixed.
>=20
> > However, I think 'system-wide' is unnecessary here: 'tunables
> > configuration file' should be enough.  By being in /etc/, it is known to
> > be system-wide.
>=20
> Fixed.
>=20
> >> +.SH SYNOPSIS
> >> +.nf
> >> +.B /etc/tunables.conf
> >> +.fi
> >> +.SH DESCRIPTION
> >> +Each line in the file
> >> +.I /etc/tunables.conf
> >> +specifies a tunable,
> >> +which is a name and value separated by an equals sign.
> >
> > 	.P
>=20
> Fixed, but that's a lot of one-sentence paragraphs.

Given they are about different topics, that's fine.  Especially, since
the page is small.  Eyes will be able to find the information they want
easily, skipping paragraphs that are not interesting.  Otherwise, the
brain must parse the entire paragraph, looking for the sentence that is
interesting.

> >> +.IR /etc/ld.so.cache .
> >> +.P
> >> +Each line may include zero or more words or symbols at the beginning:
> >> +.TP
> >> +.B overridable
> >> +.TQ
> >> +.B +
> >> +Allow the tunable to be overridden by the environment variable
> >> +(this is the default).
> >
> > Which environment variable?
>=20
> Fixed.
>=20
> > Should we document an ENVIRONMENT section in ldconfig(8)?
>=20
> No, the environment variable is read at runtime, not by ldconfig.

Then maybe document this environment vairable in ld.so(8) (which already
has an ENVIRONMENT section)?

> >> +(such as setuid, or elevated capabilities)
> >
> > Do you mean the system call setuid(2)?  Or a setuid program?
>=20
> a set-user-ID program.  Fixed.
>=20
> >> +.IP
> >> +.EX
> >> +.RI [ filter : pattern ]
> >> +.EE
> >
> > You should indent this compared to the surrounding text:
> >
> > 	.IP
> > 	.in +4n
>=20
> Isn't that what the .IP does ?

Oh, sorry, I misread the context.  So, you're already outside of the
tagged paragraph, and back in the non-indented text.  Then, we want:

	.P
	.in +4n
	...
	.in

The reason we use .in instead of .IP is to have a consistent indentation
level that can be applied independent of whether we're in a P or IP
paragraph (sometimes we want P, and sometimes IP; whatever the context
uses).

> >> +filter limits the following tunables to processes starting from the
> >> +file matching the pattern.
> >
> > What do you mean by processes starting from the file?  Processes that
> > exec(3) the file and its children?
>=20
> It actually means exactly what it says, but I admit it can be confusing.
> When the dynamic linker creates a process, and uses the image in file
> /file/ as the template, that new process is affected.
>=20
> i.e.  If you type "/usr/bin/ls" and the filter is "/usr/bin/ls", that

"type" isn't very specific.  The shell first forks, which I guess isn't
important, and then that file is exec(3)'d, which (I guess) is what
triggers all this?

> new copy of /usr/bin/ls is affected.

Hmm.

> >> +The file may be fully qualified or just the basename.
> >
> > 'fully qualified' isn't something we say of paths.  We should say an
> > absolute pathname.  Is it only absolute pathnames and basenames?  How
> > about relative pathnames?
>=20
> No, for security and logical reasons, it cannot be a relative path.  So
> you end up with "one specific version of XYZ" or "any version of XYZ".
> No wildcards either.  It's intended for rare exceptions.

Ok.  Then basename or absolute pathname, I think.

>=20
> commit a9b49369175e67e07b556ec28cd2d9d5538c0fe6
> Author: DJ Delorie <dj@redhat.com>
> Date:   Mon Jul 13 17:30:56 2026 -0400
>=20
>     man/man8/ldconfig.8: document system-wide tunables
>=20
> diff --git a/man/man5/ld.so.conf.5 b/man/man5/ld.so.conf.5
> index 481cf9152..9954c74bc 100644
> --- a/man/man5/ld.so.conf.5
> +++ b/man/man5/ld.so.conf.5
> @@ -6,9 +6,36 @@ .SH SYNOPSIS
>  .B /etc/ld.so.conf
>  .fi
>  .SH DESCRIPTION
> +.P
>  This file contains a list of directories,
>  one per line,
>  in which to search for libraries.
> +.P
> +The file
> +(and any other files included by it)
> +is parsed by
> +.B \%ldconfig
> +and the results stored in
> +.IR /etc/ld.so.cache .
> +.P
> +The syntax allows lines to start with the word
> +.I include
> +followed by a path wildcard,
> +and will include any files matching that wildcard.
> +The wildcard is a path specification in the
> +.BR \%glob (7)
> +format.
> +Files matching that wildcard will be processed
> +as if their contents were included in the main config file.
> +.P
> +Example config file:

I think the example should go in an EXAMPLES section after FILES and
before SEE ALSO.  (See man-pages(7) for the order of sections.)

> +.IP
> +.EX
> +/lib
> +/usr/lib
> +/usr/local/lib
> +include /etc/ld.so.conf.d/*.conf
> +.EE
>  .SH FILES
>  .I /etc/ld.so.conf

	.SH
	Example configuration file:
	.P
	.in +4n
	.EX
	/lib
	/usr/lib
	/usr/local/lib
	include /etc/ld.so.conf.d/*.conf
	.EE
	.in

>  .SH SEE ALSO
> diff --git a/man/man5/tunables.conf.5 b/man/man5/tunables.conf.5
> new file mode 100644
> index 000000000..b983a2bfe
> --- /dev/null
> +++ b/man/man5/tunables.conf.5
> @@ -0,0 +1,112 @@
> +.TH tunables.conf 5 (date) "Linux man-pages (unreleased)"
> +.SH NAME
> +tunables.conf \- tunables configuration file
> +.SH SYNOPSIS
> +.nf
> +.B /etc/tunables.conf
> +.fi
> +.SH DESCRIPTION
> +Each line in the file
> +.I /etc/tunables.conf
> +specifies a tunable,

Maybe we can say it more visually:

	which is a string of the form
	.IB name =3D value \f[R].\f[]

> +which is a name and value separated by an equals sign.
> +.P
> +For a list of valid tunables,
> +please consult the glibc manual.

Any specific link?

> +.P
> +The syntax allows lines to start with the word
> +.I include
> +followed by a path wildcard,

	followed by a path glob(7) pattern,

> +and will include any files matching that wildcard.

The line above seems redundant with the sentence 'Files matching ...'.
I'd remove this line, as the other seems more specific.

> +The wildcard is a path specification in the
> +.BR \%glob (7)
> +format.

And then remove the sentence above.

> +Files matching that wildcard will be processed
> +as if their contents were included in the main config file.

s/wildcard/pattern/

> +.P
> +The file is parsed by
> +.BR \%ldconfig (8)
> +and the results stored in
> +.IR /etc/ld.so.cache .
> +The resulting data is read when a new process starts.

Is this accurate?  New processes start with fork(1), but it's when they
exec(1) that the actual file that they run is loaded.

> +.P
> +Each line may include zero or more words or symbols at the beginning,

s/include/be preceded by/?

Also, maybe s/words/keywords/?

Also, is white space important after a symbol?  Is it optional,
mandatory, or forbidden?

> +which affect how each tunable affects each processes:
> +.TP
> +.B overridable
> +.TQ
> +.B +
> +Allow the tunable to be overridden by the
> +.B GLIBC_TUNABLES
> +environment variable when the process runs
> +(this is the default).
> +.TP
> +.B nonoverridable
> +.TQ
> +.B \-
> +Do not allow the tunable to be overridden by the environment variable.

	the
	.B GLIBC_TUNABLES
	environment variable.

> +.TP
> +.B onlysecure
> +.TQ
> +.B @
> +The tunable only applies to

s/only applies/applies only/

> +.B AT_SECURE
> +processes,

Is it really processes or programs? =20

> +such as a set-user-ID process,

Same here.  Set-user-ID is a property of a program, not of a process,
I believe.  In fact, no ocurrences of set-user-ID in the manual pages
are followed by 'process', and 10 are followed by 'program':

	$ grep -ro set-user-ID.pro....=20
	man3/getlogin.3:set-user-ID program
	man3/realpath.3:set-user-ID program
	man7/pthreads.7:set-user-ID program
	man7/user_namespaces.7:set-user-ID program
	man7/credentials.7:set-user-ID program
	man7/capabilities.7:set-user-ID program
	man7/keyrings.7:set-user-ID program
	man2/access.2:set-user-ID program
	man2/access.2:set-user-ID program
	man2/execve.2:set-user-ID program

> +or one with elevated capabilities.
> +.TP
> +.B nonsecure
> +.TQ
> +.B $
> +The tunable only applies to
> +.RB non- AT_SECURE
> +processes (this is the default).
> +.TP
> +.B anysecure
> +.TQ
> +.B *
> +The tunable only applies to both
> +.B AT_SECURE
> +and
> +.RB non- AT_SECURE
> +processes.
> +.P
> +The file may also contain
> +.IR filters ,
> +which limit the tunables following it,
> +up to the end of the file
> +(or end of the included file,
> +or start of a new included file)
> +or a line with only
> +.B []
> +on it.
> +The syntax is:
> +.IP

	.P
	.in +4n

> +.EX
> +.RI [ filter : pattern ]
> +.EE

	.in

> +.TP
> +.B proc
> +The
> +.I proc

Since it's a literal value:

	.B proc

> +filter limits the following tunables to processes
> +whose name matches the pattern.
> +The pattern may be an absolute path
> +or just the base name.
> +.P
> +Example config file:
> +.IP
> +.EX
> +glibc.malloc.arenas_max=3D5
> +onlysecure glibc.malloc.arenas_max=3D1
> +\-glibc.pthread.rseq=3D1
> +[proc:/bin/bad.program]
> +\-glibc.pthread.rseq=3D0
> +[proc:some.program]
> +\-glibc.malloc.mmap_threshold=3D65536
> +.EE

The example should go to EXAMPLES after FILES.

> +.SH FILES
> +.I /etc/ld.so.conf

	.SH EXAMPLES
	Example configuration file:
	.P
	.in +4n
	.EX
	...
	.EE


Have a lovely night!
Alex

> +.SH SEE ALSO
> +.BR ld.so (8),
> +.BR ldconfig (8)
> diff --git a/man/man8/ld.so.8 b/man/man8/ld.so.8
> index 5f3c22ef2..40f129b71 100644
> --- a/man/man8/ld.so.8
> +++ b/man/man8/ld.so.8
> @@ -792,7 +792,8 @@ .SH FILES
>  .TP
>  .I /etc/ld.so.cache
>  File containing a compiled list of directories in which to search for
> -shared objects and an ordered list of candidate shared objects.
> +shared objects and an ordered list of candidate shared objects,
> +and any system-wide tunables to be applied.
>  See
>  .BR ldconfig (8).
>  .TP
> diff --git a/man/man8/ldconfig.8 b/man/man8/ldconfig.8
> index 9ac146b44..234169504 100644
> --- a/man/man8/ldconfig.8
> +++ b/man/man8/ldconfig.8
> @@ -17,6 +17,8 @@ .SH SYNOPSIS
>  .IR conf ]
>  .RB [ \-r\~\c
>  .IR root ]
> +.RB [ \-t\~\c
> +.IR tunconf ]
>  .IR directory \~.\|.\|.
>  .YS
>  .SY /sbin/ldconfig
> @@ -85,6 +87,13 @@ .SH DESCRIPTION
>  .P
>  Failure to follow this pattern may result in compatibility issues
>  after an upgrade.
> +.P
> +If the file
> +.I /etc/tunables.conf
> +exists,
> +it contains tunables to be applied to all processes.
> +These tunables are stored
> +in the cache and applied to every process at its startup.
>  .SH OPTIONS
>  .TP
>  .BI \-\-format=3D fmt
> @@ -157,6 +166,12 @@ .SH OPTIONS
>  .I root
>  as the root directory.
>  .TP
> +.BI \-t\~ tunconf
> +Use
> +.I tunconf
> +instead of
> +.IR /etc/tunables.conf .
> +.TP
>  .B \-\-verbose
>  .TQ
>  .B \-v
> @@ -178,8 +193,6 @@ .SH OPTIONS
>  is also specified,
>  the cache is still rebuilt.
>  .SH FILES
> -.\" FIXME Since glibc-2.3.4, "include" directives are supported in ld.so=
=2Econf
> -.\"
>  .\" FIXME Since glibc-2.4, "hwcap" directives are supported in ld.so.conf
>  .PD 0
>  .TP
> @@ -190,11 +203,17 @@ .SH FILES
>  See
>  .BR ld.so.conf (5).
>  .TP
> +.I /etc/tunables.conf
> +See
> +.BR tunables.conf (5).
> +.TP
>  .I /etc/ld.so.cache
>  contains an ordered list of libraries found in the directories
>  specified in
>  .IR /etc/ld.so.conf ,
> -as well as those found in the trusted directories.
> +as well as those found in the trusted directories,
> +and any system-wide tunables listed in
> +.IR /etc/tunables.conf .
>  .PD
>  .SH SEE ALSO
>  .BR ldd (1),
>=20

--=20
<https://www.alejandro-colomar.es>

--lrtub3n2l3uxa3zd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmpVbE8ACgkQ64mZXMKQ
wqkKgBAAieZBi8rA7a8ELYgnyMyAK/TNc/GEkUzrEs4o/pM1o1Ux/ThUTZOQ5MV6
hhqMpaWt1x25UvGNRRubz+nK/SxNNao9IAccHF4l7E9vs27bN3X3cltauTUkryu3
1j4WxT4Mw95i29OJ3gIe/pJPJAodJ3deuCaEslqXZEHBUWURRZ4RLVLGjskSmXAb
MWFpZSdQSJn9VKcyKp+38lI8z5qretRM2HQh6/x0M4mNnXsXmTAO6zUn+OjkXsHE
qPg+jVHBv109Doj0c4kzeneN7kBIZpAnDDLeCQCWDpuxvA16MUlisS0MNeVty56r
C7m4UAdq14jkKACMegVdWPWl5dBlLUBSl3Wt/yAxze82NS2MU+xmaDgU2x+6JHar
d9tkf5dqrFWh8I/qyVqfrhge8XkueCDBFXQD9Mod8KPbV4HSQMc/gAEcrQLPHRJQ
7WIZaOqF8rJ4sjk1kWjbTn+HfD6Ix65nt0xTZYUDMEVEQ1wiaKr2rwI+S7zlUADa
JtiUMNnGGqgyYpyztlYhuNtjwOwuojpKT5bBQ4SWrPGIWwX7dXwwhaJMGnuqpTN3
3upkoByZuhCSCGDimoFknnrtPd6hauY07isLFZvng9XF+NMQIvNXZabKGWDN4wZr
eqNha+1KQI/mKy9c6rz8BnFefVkcom2dWMMMv6asM3Mn8G+fBDw=
=kEo9
-----END PGP SIGNATURE-----

--lrtub3n2l3uxa3zd--

