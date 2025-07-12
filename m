Return-Path: <linux-man+bounces-3260-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3303EB02AC2
	for <lists+linux-man@lfdr.de>; Sat, 12 Jul 2025 14:14:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B5627A455E4
	for <lists+linux-man@lfdr.de>; Sat, 12 Jul 2025 12:14:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4C2D275872;
	Sat, 12 Jul 2025 12:14:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QfQ62GW5"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C2D086348
	for <linux-man@vger.kernel.org>; Sat, 12 Jul 2025 12:14:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752322477; cv=none; b=Fvkt8DT79Fm8DnSbBjSl0MmkEO+8XfXSo0aEY4tpn2afqaavNmH6RyA4lKMx1NZ0QSlxtM01XjFbAF376qXuIAV1IGvTiXeMt5NIeQTLGWPLVm2VDraJg7xjquzKsZrpT8J4BU0zIvVuwpQpIim0/MHZ1+u6i1LAFImH0jYA678=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752322477; c=relaxed/simple;
	bh=u87upr5nIWin1asPmArnkLckiKqs2IR7QvMwy8r5hbA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tN4aTDOzrWJkTjs8NEY3augiZXdV9zyR2WrBAfWhDj7C6jtcUnphvAm9oWGODhCfqZvrCoBhQkl65njy0/da0ommJc/YrBqa+VOv9QgYcrMtRhtF0q5Q+RdgXz0nOJP9XuTk3GCyVQWpW7kmyDyIPi51XMJL1k2GIBsJRJ2mEMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QfQ62GW5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C9E5C4CEEF;
	Sat, 12 Jul 2025 12:14:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752322477;
	bh=u87upr5nIWin1asPmArnkLckiKqs2IR7QvMwy8r5hbA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QfQ62GW5OB7iJ10/a3iw7ePSkwHu+5zZHNDuyAned4DKREALE/d9c/8yK8zwc94zz
	 mZVD5+4WqUCIyVgTUubYgyq4mDADybEsEREl1c8t08eKERL3/Qr3l8IL1WkOuDIhV6
	 /4mX/RiuFV2y+oW9y4JNncnDaxEooRTgKnsWbbko6v2qmBP5Gv8QB33c+wK/kN0GT9
	 u8Zm4keYtmrkC+bCCH55JB72ygQg2OEDM3xEjszoznBjbGwCEzVfOuXv8XFnX5Plyl
	 4Y1oKB9jGuUJo/OvtpX+8ebtsqcVYJGFneLQ3J5QJZAj7X+PPPSVcrm9vznryAEZEQ
	 Jb1qYxhz+KmTw==
Date: Sat, 12 Jul 2025 14:14:33 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Terence Kelly <tpkelly@eecs.umich.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: for man seccomp
Message-ID: <ima6z2tqxkogu4zevqd2dww6oglouienk26qa25nk2sjere5h5@3ve4lzz2utgv>
References: <45c2afdf-729d-d137-e15a-074123f5c87b@eecs.umich.edu>
 <4oxc4pfspkqg3v7exajv42lw7s6tgy7xcji2yjyx2bi6b3pcya@sl7bllkflzcg>
 <259aabe5-aa71-5165-8ec1-f55baa04036e@eecs.umich.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="f6obnfol5quk6uvd"
Content-Disposition: inline
In-Reply-To: <259aabe5-aa71-5165-8ec1-f55baa04036e@eecs.umich.edu>


--f6obnfol5quk6uvd
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Terence Kelly <tpkelly@eecs.umich.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: for man seccomp
References: <45c2afdf-729d-d137-e15a-074123f5c87b@eecs.umich.edu>
 <4oxc4pfspkqg3v7exajv42lw7s6tgy7xcji2yjyx2bi6b3pcya@sl7bllkflzcg>
 <259aabe5-aa71-5165-8ec1-f55baa04036e@eecs.umich.edu>
MIME-Version: 1.0
In-Reply-To: <259aabe5-aa71-5165-8ec1-f55baa04036e@eecs.umich.edu>

Hi Terence,

On Fri, Jul 11, 2025 at 10:33:33PM -0400, Terence Kelly wrote:
> Hi Alejandro,
>=20
> To be clear, my suggestion is simply to include a citation/reference to t=
he
> sandboxing paper at the bottom of the seccomp man page, in the "SEE ALSO"
> section.  If McCanne & Jacobson's BPF paper from 1992 is worth a two-line
> mention, perhaps a 2025 paper on MODE_STRICT is also worthy.

I know.  I just try to make sure citations are of high quality.  :)

I'll add a reference to it, since the ideas it talks about are good and
useful, even if I don't necessarily agree with all of what it says
(expecially the code).

I've pushed this commit to my repo:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D2351c7c0a472e31b601855f4b4d843d3f37cbfa0>

[...]

> Finally, if you read all the way to the end below, that means you're an
> exceptionally diligent programmer.  I have a special offer for you.  :)
>=20
> Thanks.  More inline....
>=20
> -- Terence

[...]

> > > https://dl.acm.org/doi/10.1145/3733699
> >=20
> > Why is SANDBOX_ERASE_ENVARS defined in such a weird way, when it can be
> > a normal function?
>=20
> A code reviewer sugggested that all preparatory code be consolidated into=
 a
> single header file, "sandbox.h".  In a header file it's unconventional to
> have ordinary functions, therefore function-like macros are used.

'static inline' is common there.

> Also:  An author of magazine articles faces many constraints involving pa=
ge
> limits, figure size, font size, etc.  Programming styles and
> code-layout/indentation styles that are profligate with vertical space and
> whitespace, for example, don't work well in ACM magazines such as Queue.

Makes sense.

> As the text of the paper explains, memset_explicit is preferable to memse=
t,
> but the example code uses the latter because the former is not yet availa=
ble
> on all popular Linux distributions.  One of my machines didn't have it.
>=20
> > Why do you cast the first argument to syscall(2)?  You're not supposed
> > to do that.
>=20
> syscall(2) takes a long and SYS_seccomp expands into an int, which I susp=
ect
> triggered a compiler warning.  I'm guessing, relying on memory from months
> ago.  If this is truly important I could do some digging and reconstruct =
the
> rationale.

I've never seen any diagnostics from that.  It's a fine implicit
widening conversion.

	alx@devuan:~/tmp$ cat cast.c=20
	#include <sys/syscall.h>
	#include <unistd.h>

	int
	main(void)
	{
		syscall(42);
	}
	alx@devuan:~/tmp$ clang -Weverything cast.c=20
	alx@devuan:~/tmp$=20

> Why do you say "you're not supposed to do that"?  Is the cast positively
> *harmful*?  Does syscall *not* take a long?

Yup, almost all casts are harmful, as they turn off a large propotrion
of compiler diagnostics.

In this case, the cast is correct, but if it were incorrect (and that
happens quite often), that could be very dangerous.

> > Why do you call _exit(2) through syscall(2)?  There's _exit(2).
>=20
> Try calling _exit(your_favorite_exit_value) from within a sandbox, after
> SANDBOX_CREATE_STRICT, on a late-vintage Ubuntu and Fedora box.  I'm pret=
ty
> sure we tried doing it the obvious way and seccomp didn't like it. If
> necessary I could dig up the details.

Yes, those details would be very interesting.  I expect _exit(2) or
_Exit(2) to be fine everywhere, since _Exit(2) was standardized in C99,
and _exit(2) was standardized in POSIX.1-2001.

There are some differences between the system call (using syscall(2))
and the library function:

   C library/kernel differences
     The  text above in DESCRIPTION describes the traditional effect of
     _exit(), which is to terminate a process, and these are the seman=E2=
=80=90
     tics specified by POSIX.1 and implemented by the C library wrapper
     function.  On  modern  systems,  this  means  termination  of  all
     threads in the process.

     By  contrast  with  the  C library wrapper function, the raw Linux
     _exit() system call terminates only the calling  thread,  and  ac=E2=
=80=90
     tions  such  as  reparenting child processes or sending SIGCHLD to
     the parent process are performed only if this is the  last  thread
     in the thread group.

     Up  to  glibc 2.3, the _exit() wrapper function invoked the kernel
     system call of the same name.  Since glibc 2.3, the wrapper  func=E2=
=80=90
     tion  invokes  exit_group(2),  in  order  to  terminate all of the
     threads in a process.

But I don't expect they would be meaningful here, and anyway, you
probably prefer the semantics from the library call.

> If I recall correctly this was one of several instances where seccomp's
> behavior surprised us and made the code more weird.

This would be interesting to note somewhere.

> > Why is CHK() defined in such a weird way when it can be a normal
> > do-while(0) macro:
> >=20
> > 	#define CHK(e)  do                                            \
> > 	{                                                             \
> > 		if (!(e)) {                                           \
> > 			MSG("check failed:  '" #e "'");               \
> > 			_exit(1);                                     \
> > 		}                                                     \
> > 	} while (0)
>=20
> See my remarks above about the constraints of ACM magazine page layout.

You could reformat it in a more compact way that keeps it conventional:

#define CHK(e)  do { if (!(e)) { MSG("check failed:  '" #e "'"); \
                                 _exit(1); } } while (0)

You get rid of XMSG(), so you use the same amount of lines.
And if _exit(2) doesn't give you problems, you'd also get rid of the
EXIT() definition, so you'd gain one line.

> I totally understand why you'd rather do it your way in, say, a manpage, =
or
> in ordinary production code.  Code listings in a magazine must obey
> different rules, and those rules aren't made by authors like me.  If it w=
ere
> up to me, magazines would be printed on wide and very long *scrolls* of
> paper.  :)
>=20
> > What is 'erongi'?  Why do you write the output of write(2) to an
> > undefined variable, if you don't even use that value?
> >=20
> > 	#define MSG(m)  ((void) write(STDERR_FILENO, Z(m), strlen(Z(m))))
>=20
> Line 1 of Figure 2 explains that

Ahh, I missed that line.  It's a bit bad that I can't search (or use any
text) within the code examples.  On the other hand, maybe it's a good
thing that people can't blindly paste from there.

> "erongi" --- "ignore" spelled backwards ---
> squelches a compiler warning about ignoring the return value of write(). =
 I
> always compile example code with *all* gcc warnings enabled, not just the
> subset enabled by "-Wall -Wextra"; see the "warnflags" file in the example
> code tarball.  Sometimes the warning flags yield false alarms, and someti=
mes
> squelching those false alarms leads to weird code.

I think it's a compiler bug that you don't get a diagnostic there:
<https://github.com/llvm/llvm-project/issues/148361>

-Wunused-but-set-variable should be triggered by that.

Why not just cast to void, which is the usual convention for ignoring
return values?

> I find that insisting on a perfectly spotless build --- no compiler warni=
ngs
> of any kind, ever --- reduces my fatigue and makes it harder for warnings
> about serious problems to slip by unnoticed.

Agree.

> > I recommend checking syscall errors as -1.  It's more readable.
>=20
> In cases where zero indicates success, I prefer to gripe/bail on nonzero.
> The logic is roughly, "if everything is not completely perfect and
> unsurprising, fall on sword with loud scream."

The thing is, 0 can mean many things, and it's not easy to see at first
glance that it means success; you need to read more carefully.

But a -1 is almost always an error code.

And, most syscalls never return outside the range [-1, 0].

> > It also avoids multiple evaluation of arguments in DUP2().  Also, we
> > don't need to check that a=3D=3Db.  dup2(2) succeeds on such case too.
>=20
> Okay, I see that dup2 correctly handles a=3D=3Db in the manpage.  I suspe=
ct that
> I got the a=3D=3Db check from Stevens & Rago.

[...]

> The two macros above are also "weird" partly due to the magazine constrai=
nts
> mentioned earlier.  Also, a function-like macro that takes no arguments
> seems less natural to me than a simple macro.  But I'm willing to be
> persuaded that function-like macros are somehow more appropriate in
> situations such as this.

Object-like macros are not expected to perform actions, but rather
substitute by a value.  Whenever I see

	foo;

I expect that some value is discarded (which is weird).  But if I see:

	foo();

I expect some function is called for its side effects, which is
precisely what you're doing here.  Basically, actions are represented by
functions in C.

> > Have a lovely day!
> > Alex
>=20
> And you also.

:-)

> If you've made it this far, you're more diligent than most coders.
>=20
> Would you like to write for Communications of the ACM (CACM)?  I'm co-cha=
ir
> of a newly rebooted "Practice" section of CACM, and we're looking for
> writers.  Here's our new Call for Papers:
>=20
> https://cacm.acm.org/practice/call-for-papers-cacm-practice-section/
>=20
> If you maintain the Linux manpages, I could imagine a cool article about
> that.  Or any other topic that (a) you know well, and (b) would interest
> many other programmers.
>=20
> Your writing is good, you're clearly very knowledgeable, and you care abo=
ut
> both small details and the big picture.  That's the kind of author we're
> looking for.  If you have any ideas, let's start a separate thread.

Hmmm, I do have things to write about.  String handling is one of them.
Memory allocation is another one.

I'll talk to you after the next C Committee meeting, where I hope to
convince the committee to improve a few things in these two fronts, and
then I can write about those.

> CACM is a good instrument for enlightening a segment of the world's coders
> who might otherwise miss your message.  CACM reaches 100K ACM members in
> hard copy via postal mail, and the open-access (no paywall) web site reac=
hes
> hundreds of thousands more.  If you've go a powerful message, I've got a =
way
> to broadcast it to people who might otherwise not hear it.
>=20
> Furthermore if you know anyone who ought to write for CACM, I'd be gratef=
ul
> for an intro.
>=20
> Thanks for your volunteer work on Linux documentation!  It's great to see
> that the man pages are in capable hands.

Thanks!  I enjoy doing it.  :-)


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--f6obnfol5quk6uvd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhyUakACgkQ64mZXMKQ
wqkcsA//VDxMdDBQRDgAIWAD7axCa9C6xY6pTCX0CWfNnJf2NCzoEVT6/192RGV0
qY2Qh4B7kh9DgXbxGoPlMLAH90c+VEqpKlYy7WNiCmIZ8C6Me7x0Bd1brZiDJwmz
cvWJygN3MGjTtOhzRyBK1RoVvOyehEY/h2c49XKQdleY8AWcvDbl/5BsCzv6PRKO
k1pxi9zYcYX58PgecUzHcMu85ilueqrVPKXjBShFW8Zi9sd3MlUQW0lrWjQHwV3J
e6xP/DvMZypGPcIk3amkwkSU6adR38It1UQNqL4U3/K/rfVQzviG4Seyvh7Ij4EW
ZdxfoYQ53tGRXyWhVCf3jtGNhOG4QS/JqImmpHu4Lqj9CWGuw8IXJKxmHIrVK4ls
P11fKC+nFi1AX3/hIgBCOTA09qkfY3ljHyL1mjBKDIl1EnEdXIWGnBC+wvL/Afjb
xrsL7aDvJqqHRBNs1AU6Jxodq9Vhncc3O5yCkAsYejkE3NmsLd6nWy8bbo+OIU/R
rlon5GsZa4L5NHcudcj98ZOEWQw5ybqmsLiWKzOnnDKDMfk8OqSjn8IWGQSjKi4n
4OEBoi0pwP7m3my1LmPmWch+hIoyns/ybKncd5KtYMwuRuCUSMerW3QPFa1LZcen
jcXN9DQxYJdYHGPxo96jJyc61iQdvTFYYWqsMyw2eiFNSdxUMCM=
=k8w3
-----END PGP SIGNATURE-----

--f6obnfol5quk6uvd--

