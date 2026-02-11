Return-Path: <linux-man+bounces-5126-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0EsRHgTDjGkmswAAu9opvQ
	(envelope-from <linux-man+bounces-5126-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 11 Feb 2026 18:57:24 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE58126BFB
	for <lists+linux-man@lfdr.de>; Wed, 11 Feb 2026 18:57:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CDE603018754
	for <lists+linux-man@lfdr.de>; Wed, 11 Feb 2026 17:57:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF87534A3D6;
	Wed, 11 Feb 2026 17:57:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ro87r9Pi"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8158F5464D;
	Wed, 11 Feb 2026 17:57:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770832639; cv=none; b=LjL/7Ukp9O6kYxybbrOzG1/6icKiRprZi8TAOLajMJYB0B7IJu41dUmpyDigU7y8wOpN2qzsMLf7GXvG3s+ClyqIr+/de8YF5Sfz7hFVuTaPQaVdkrYubYpKD6PD4GFGs72U+Tg+ejbW2L519llk+BePvYj6U+IyK5fOwA5SQ20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770832639; c=relaxed/simple;
	bh=sg9wnap/4DYWdOoQsq6n8yucbJz5GwnjEniuSOQaE8c=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=ooOzIaM+pa0I5U8Q8iIz2MWxE8ufbibgqrW8FLdeQNVtt3bI81Kpzh64cQtX1t7v86QEhUVgvbv0OHXAF9KCCCyPuDrtaX7jO6iZPE/MqVjHKjp3abNhSygl44ZDunAhtxpXgxZXbZsJUu0/WLl4yDlsl3qvmnDDJRRm4vLLFhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ro87r9Pi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 61628C4CEF7;
	Wed, 11 Feb 2026 17:57:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770832639;
	bh=sg9wnap/4DYWdOoQsq6n8yucbJz5GwnjEniuSOQaE8c=;
	h=Date:From:To:Cc:Subject:From;
	b=ro87r9Pikt8U0X/N1HNPcOX9Iikj+4X0Mng5NRAGyeMfvhoJfjBSYrZswg/NpHFVg
	 jRyOx/2bhbCeL9ZWSQjHm0rk/fBUV5NyrXeImOHhv5EqQpzcvxRN78vtl2uF4w5PPo
	 Txp96bKMeCJwkz6D2bkIm5eNsbelP/PZfXNC+lxb/EsadEXYp+49jKIHzeHDjytmyB
	 7VmPhw+tK3hinEWdQcxCQv+VSUHyoEZKYOXVntsCiJDTsdZuK1J0N26QV7AmXf6Qdk
	 kgkNSs9/1jSOd1Jd6cHvSMdLdBRWWcUAOOxJ9SBnQyYcLGZJ9CYyDvraXn0BtvBUQD
	 fiZe/Qj2qEgEw==
Date: Wed, 11 Feb 2026 18:57:02 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, libc-alpha@sourceware.org
Subject: man-pages-6.17 released
Message-ID: <aYy41v6tYda2Qc_1@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vyqvhzm7yjoinvpo"
Content-Disposition: inline
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5126-lists,linux-man=lfdr.de];
	URIBL_MULTI_FAIL(0.00)[tor.lore.kernel.org:server fail,hudsonrivertrading.com:server fail,opensource.google:server fail,sourceware.org:server fail,alejandro-colomar.es:server fail,meta.com:server fail];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sourceware.org:email,meta.com:url,alejandro-colomar.es:url,opensource.google:url]
X-Rspamd-Queue-Id: DFE58126BFB
X-Rspamd-Action: no action


--vyqvhzm7yjoinvpo
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, libc-alpha@sourceware.org
Subject: man-pages-6.17 released
Message-ID: <aYy41v6tYda2Qc_1@devuan>
MIME-Version: 1.0

Gidday!

I'm proud to announce:

	man-pages-6.17 - manual pages for GNU+Linux

Tarball download:
<https://www.kernel.org/pub/linux/docs/man-pages/>
Git repository:
<https://git.kernel.org/cgit/docs/man-pages/man-pages.git/>
Online PDF book:
<https://www.kernel.org/pub/linux/docs/man-pages/book/>

Thanks to all the contributors to this release (in BCC)!
And thanks to our sponsors!

	$ cat SPONSORS;
	Google               <https://opensource.google/>
	Hudson River Trading <https://www.hudsonrivertrading.com/>
	Meta                 <https://www.meta.com/>

Regarding sponsorship, please read
<https://lore.kernel.org/linux-man/aYprOnLo5WSP8Ljh@devuan/T/#u>.
Maintenance is guaranteed until 2026-10-31, but we need more money to
continue past that date.  And that's only counting one maintainer, but
I really would like to have a couple of co-maintainers.  The bus factor
of this project is quite worrying, given the importance of our
documentation.

You are receiving this message either because:

        a)  (BCC) You contributed to this release.

        b)  You are subscribed to <linux-man@vger.kernel.org>,
            <linux-kernel@vger.kernel.org>, or
            <libc-alpha@sourceware.org>.

        c)  (BCC) I have information (possibly inaccurate) that you are
            the maintainer of a translation of the manual pages, or are
            the maintainer of the manual pages set in a particular
            distribution, or have expressed interest in helping with
            man-pages maintenance, or have otherwise expressed interest
            in being notified about man-pages releases.
            If you don't want to receive such messages from me, or you
            know of some other translator or maintainer who may want to
            receive such notifications, send me a message.
            If you want to be added to this list (which I store
            encrypted), send me a message.

Special shout out to Seth McDonald, who authored a large part (1/5) of
the commits in this release!

	$ git shortlog -s man-pages-6.16..HEAD | sort | tail -n3
	     4	Mark Harris
	   125	Seth McDonald
	   474	Alejandro Colomar

He's been updating the HISTORY and STANDARDS sections of manual pages,
to document with precision conformance to new standards, and also the
history of APIs in old standards and historic systems.  These sections
are now much more useful thanks to his contributions.  And we have only
started with these improvements.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D NEWS =3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

This release adds several new programs.  We recommend that distributions
package all of our src/bin/ scripts in a separate binary package, called
something like manpages-utils (this happens to be the name I'd suggest
specifically for Debian, for consistency with manpages and
manpages-dev).

-  src/bin/grepc
-  src/bin/grepc_c
-  src/bin/grepc_mk
-  src/bin/mansectf

The grepc(1) program is something that originated in this project, as it
helped me find code quickly in glibc and the Linux kernel.  However,
I've found it incredibly useful outside of this project.  I'll take some
space to announce it, as it's much more than just a tool for writing
manual pages, and I expect it to be useful to most --if not all--
C programmers.

It is a command-line tool that finds C source code (for example,
a function definition) in arbitrary projects.  It doesn't use any
indexing mechanism (unlike ctags and similar tools).  This means that it
can be used right after cloning some repository, without having to
first generate an index.

Moreover, it works as a Unix filter: it reads stdin (or files, if
specified) and prints to stdout.  This means it can be combined with
arbitrary tools.

Here's an example of use that I'm using quite regularly, and which
I find very useful.  The following command diffs the implementation of
creat(2) between two arbitrary version of the Linux kernel (I chose to
compare v5.0 with git HEAD):

	$ diff -U10 \
		<(git show v5.0:fs/open.c | grepc -h -tfld creat) \
		<(grepc -h -tfld creat fs/open.c);
	--- /dev/fd/63	2026-02-11 18:35:33.069409927 +0100
	+++ /dev/fd/62	2026-02-11 18:35:33.073409962 +0100
	@@ -1,4 +1,8 @@
	 SYSCALL_DEFINE2(creat, const char __user *, pathname, umode_t, mode)
	 {
	-	return ksys_open(pathname, O_CREAT | O_WRONLY | O_TRUNC, mode);
	+	int flags =3D O_CREAT | O_WRONLY | O_TRUNC;
	+
	+	if (force_o_largefile())
	+		flags |=3D O_LARGEFILE;
	+	return do_sys_open(AT_FDCWD, pathname, flags, mode);
	 }

And the command is quite fast.  Within the Linux kernel, it takes just
a few seconds to find anything (in this example, the creat(2) function):

	$ time grepc -tf creat .
	./include/linux/syscalls.h:asmlinkage long sys_creat(const char __user *pa=
thname, umode_t mode);
	./fs/open.c:SYSCALL_DEFINE2(creat, const char __user *, pathname, umode_t,=
 mode)
	{
		int flags =3D O_CREAT | O_WRONLY | O_TRUNC;

		if (force_o_largefile())
			flags |=3D O_LARGEFILE;
		return do_sys_open(AT_FDCWD, pathname, flags, mode);
	}

	real	0m10.549s
	user	0m11.126s
	sys	0m0.454s

But most projects are much smaller, so it usually takes under a second
to search stuff in not-so-huge projects.  It's PCRE2-based, so in the
end, just a dandified grep(1) --actually, pcre2grep(1)--.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Linux Software=
 Map =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D

Begin4
Title:          Linux man-pages
Version:        6.17
Entered-date:   2026-02-11
Description:    Manual pages for GNU+Linux.  This package contains
                manual pages for sections 2, 3, 4, 5, and 7, and
                subsections of those.  Only a few pages are provided in
                sections 1, 6, and 8, and none in 9.
Keywords:       man pages
Maintained-by:  Alejandro Colomar <alx@kernel.org>
Primary-site:   http://www.kernel.org/pub/linux/docs/man-pages
                2.7M  man-pages-6.17.tar.gz
Copying-policy: several; the pages are all freely distributable as long as
                nroff source is provided
End


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Changes in man=
-pages-6.17 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Released: 2026-02-11, Aldaya


New and rewritten pages
-----------------------

man1/
	grepc.1
	grepc_c.1
	mansectf.1

man2const/
	F_GETDELEG.2const
	IPPROTO_IP.2const			(previously, ip(7))
	IPPROTO_IPV6.2const			(previously, ipv6(7))
	IPV6_ADDRFORM.2const			(previously, ipv6(7))
	IPV6_ADD_MEMBERSHIP.2const		(previously, ipv6(7))
	IPV6_MTU.2const				(previously, ipv6(7))
	IPV6_MTU_DISCOVER.2const		(previously, ipv6(7))
	IPV6_MULTICAST_HOPS.2const		(previously, ipv6(7))
	IPV6_MULTICAST_IF.2const		(previously, ipv6(7))
	IPV6_MULTICAST_LOOP.2const		(previously, ipv6(7))
	IPV6_RECVERR.2const			(previously, ipv6(7))
	IPV6_RECVPKTINFO.2const			(previously, ipv6(7))
	IPV6_ROUTER_ALERT.2const		(previously, ipv6(7))
	IPV6_RTHDR.2const			(previously, ipv6(7))
	IPV6_UNICAST_HOPS.2const		(previously, ipv6(7))
	IPV6_V6ONLY.2const			(previously, ipv6(7))
	IP_ADD_MEMBERSHIP.2constA		(previously, ip(7))
	IP_ADD_SOURCE_MEMBERSHIP.2const		(previously, ip(7))
	IP_BIND_ADDRESS_NO_PORT.2const		(previously, ip(7))
	IP_BLOCK_SOURCE.2const			(previously, ip(7))
	IP_DROP_MEMBERSHIP.2const		(previously, ip(7))
	IP_DROP_SOURCE_MEMBERSHIP.2const	(previously, ip(7))
	IP_FREEBIND.2const			(previously, ip(7))
	IP_HDRINCL.2const			(previously, ip(7))
	IP_LOCAL_PORT_RANGE.2const		(previously, ip(7))
	IP_MSFILTER.2const			(previously, ip(7))
	IP_MTU.2const				(previously, ip(7))
	IP_MTU_DISCOVER.2const			(previously, ip(7))
	IP_MULTICAST_ALL.2const			(previously, ip(7))
	IP_MULTICAST_IF.2const			(previously, ip(7))
	IP_MULTICAST_LOOP.2const		(previously, ip(7))
	IP_MULTICAST_TTL.2const			(previously, ip(7))
	IP_NODEFRAG.2const			(previously, ip(7))
	IP_OPTIONS.2const			(previously, ip(7))
	IP_PASSSEC.2const			(previously, ip(7))
	IP_PKTINFO.2const			(previously, ip(7))
	IP_RECVERR.2const			(previously, ip(7))
	IP_RECVOPTS.2const			(previously, ip(7))
	IP_RECVORIGDSTADDR.2const		(previously, ip(7))
	IP_RECVTOS.2const			(previously, ip(7))
	IP_RECVTTL.2const			(previously, ip(7))
	IP_RETOPTS.2const			(previously, ip(7))
	IP_ROUTER_ALERT.2const			(previously, ip(7))
	IP_TOS.2const				(previously, ip(7))
	IP_TRANSPARENT.2const			(previously, ip(7))
	IP_TTL.2const				(previously, ip(7))
	IP_UNBLOCK_SOURCE.2const		(previously, ip(7))
	SO_PEERSEC.2const			(previously, ip(7))
	in_pktinfo.2type			(previously, ip(7))
	ip_mreq_source.2type			(previously, ip(7))
	ip_mreqn.2type				(previously, ip(7))

man3/
	_Maxof.3
	aligned_alloc.3				(previously, posix_memalign(3))
	memalign.3				(previously, posix_memalign(3))
	getopt.3				(split into many pages)
	getopt_long.3				(previously, getopt(3))
	getopt_long_only.3			(previously, getopt(3))
	snprintf.3				(previously, printf(3))
	sprintf.3				(previously, printf(3))
	posix_memalign.3			(split into many pages)
	printf.3				(split into many pages)
	pvalloc.3				(previously, posix_memalign(3))
	valloc.3				(previously, posix_memalign(3))

man3attr/
	gnu::warning.3attr

man5/
	proc_sys_net_ipv4.5			(previously, ip(7))

man7/
	ip.7					(split into many pages)
	ipv6.7					(split into many pages)


Newly documented interfaces in existing pages
---------------------------------------------

man2/
	clone.2
		E2BIG
	madvise.2
		PR_THP_DISABLE_EXCEPT_ADVISED
	mount.2
		ENOSPC
	ptrace.2
		PTRACE_SET_SYSCALL_INFO
		struct ptrace_syscall_info::reserved
		struct ptrace_syscall_info::flags

man2const/
	PR_GET_THP_DISABLE.2const
	PR_SET_THP_DISABLE.2const
		PR_THP_DISABLE_EXCEPT_ADVISED

man3/
	timespec_get.3
		TIME_MONOTONIC
		TIME_ACTIVE
		TIME_THREAD_ACTIVE

man7/
	feature_test_macros.7
		_ISOC23_SOURCE
		_ISOC2X_SOURCE
	operator.7
		_Maxof(3)
		_Minof(3)
	rtnetlink.7
		.ifi_change
	standards.7
		K&R
		Unix/TS 4
		C94, C95, C96, C17, C23
		POSIX.1-2004, POSIX.1-2013, POSIX.1-2024
		SUSv5


New and changed links
---------------------

man2const/
	F_SETDELEG.2const			(F_GETDELEG(2const))
	IPV6_AUTHHDR.2const			(IPV6_RTHDR(2const))
	IPV6_DROP_MEMBERSHIP.2const		(IPV6_ADD_MEMBERSHIP(2const))
	IPV6_DSTOPTS.2const			(IPV6_RTHDR(2const))
	IPV6_FLOWINFO.2const			(IPV6_RTHDR(2const))
	IPV6_HOPLIMIT.2const			(IPV6_RTHDR(2const))
	IPV6_HOPOPTS.2const			(IPV6_RTHDR(2const))

man2type/
	ip_mreq.2type				(ip_mreqn(2type))

man3/
	_Countof.3				(countof(3))
	_Minof.3				(_Maxof(3))
	vsnprintf.3				(snprintf(3))
	vsprintf.3				(sprintf(3))


Global changes
--------------

-  CONSTRIBUTING.d/
   -  Add guidelines banning AI for contributing.
   -  Document guidelines about In-Reply-To: header field.
   -  Document guidelines about Fixes: trailed field.
-  README.d/
   -  Document dependencies of the project.
-  share/mk/
   -  Add help-list-* targets.
-  man/
   -  HISTORY, STANDARDS
      -  Document new and old standards with precision.
-  src/bin/
   -  grepc, grepc_c, grepc_mk
      Add new scripts to inspect C source code.
-  */
   -  Restore some old copyright notices.


Changes to individual files
---------------------------

The manual pages and other files in the repository have been improved
beyond what this changelog covers.  To learn more about changes applied
to individual pages, or the authors of changes, use git(1).

--=20
<https://www.alejandro-colomar.es>

--vyqvhzm7yjoinvpo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmMwucACgkQ64mZXMKQ
wqnRzQ//dUoymXXdSstbclH5N7FfqUj57LJ7uvvfjjU4X0JlCOtjkwXK0OSW6N2B
LC8q66OBIymRx0zXGaIhlWozidpwQCTKcyZwktre+T8hW6vHRM9D91n2Aoqm/Lda
9mjZoUTRfdYDaIBFMmb6uUov0zYO/9RmPh2Zb+l7q8WaxWIIAro70oaWtjUyz5Lx
9IZXo+vkvmnBZ2qS8KO1T35qhUoVxd33zvrRRrGo0G234X1Nxih+qMLN4AnEzub6
JDO0gnTjIx2mcnPnDgHKqTA6FyeXfXo1r65FzTbbZlOik1EyTUo6QYhCm3gsFXxV
UF0yUs6Z1ouSe74fUm3cd6hWtuLmgLFK89mAgyh/gPzocCYu/lK6OVdUQKwyzIfs
fZ3iCdLJrq6/LFpXu/88QmHD3VsHhzd9Y7FsO2cV9Rh9fLH6v8vk2lbtPjnkOzwO
g1hJQ06qV1atWx/mmfxps0GsTofNjZu97/e4orzQEEGz20KuWrV/ugcGakhqUJQi
jnYU85mt082uRDU7gSJ83geKXG6GlcXRwQf00rEXhRJ2oyItUE9tbOxZvmTDs7p4
i8ZmNW77vFMUQdeEY+m1oMgX3hvQNngiAc4zB5u9Lh7yw0koaHLXD4d2U9RkVKgr
7CnJOtvjTPVXn9L2c155BzCcrvfHsCVAubWrcr+6FpjVswpgUT8=
=cSyp
-----END PGP SIGNATURE-----

--vyqvhzm7yjoinvpo--

